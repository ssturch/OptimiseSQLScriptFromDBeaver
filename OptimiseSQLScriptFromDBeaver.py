Imports System.IO
Imports System.Text.RegularExpressions

Module Module1

    Sub Main()

        Dim FileReader As String
        Dim PathToScript As String
        Dim OrigScriptName As String
        Dim OptimScriptName As String
        Dim PathToOptimScript As String
        Dim FileList As New List(Of String)
        Dim FileIndex As Integer

        '��������� ����� �� ��������� �� ������������

        Dim ValidFile As Boolean = False

        Console.WriteLine("������� ���� � ����� � ������� �������, ��� �� ��������� � ����� ������ ���� ������� SCRIPT_INSERT_INTO_...")
        PathToScript = Console.ReadLine()
        For Each FoundFile As String In My.Computer.FileSystem.GetFiles(PathToScript)
            If FoundFile.Contains("SCRIPT_INSERT_INTO_") And FoundFile.Contains(".sql") Then
                FileList.Add(FoundFile)
            End If
        Next

        '��������� ������� �����

        For FileIndex = 0 To FileList.Count - 1
            OrigScriptName = Path.GetFileNameWithoutExtension(FileList.Item(FileIndex))
            Console.WriteLine("��������� �����: " & OrigScriptName)

            '������ ����� �������

            FileReader = My.Computer.FileSystem.ReadAllText(FileList.Item(FileIndex))

            '++��������� ����������� �������++

            '�������� ��������� �����

            FileReader = Replace(FileReader, vbCrLf, "")

            '������ � ��������� ���� ������� ����� ���� INSERT INTO

            Dim RegexList As New List(Of String)
            Dim Pattern As String = "INSERT INTO .+? (.+?) "
            Dim RGXWrite As New Regex(Pattern)
            For Each PatternConj As Match In RGXWrite.Matches(FileReader)
                RegexList.Add(PatternConj.Value)
            Next

            '������� ���������� ��������� ����� � SQL ����

            Dim FileReaderArr() As String
            FileReaderArr = Split(FileReader, ";")
            FileReader = Join(FileReaderArr, ";" & vbCrLf)

            '�������� ������������� ����� � ���������  � ���������� ���������������� List ������� � Temp

            Dim RegexListRedacted As New List(Of String)
            Dim LineCont As String
            Dim i As Integer
            For Each LineCont In RegexList
                If Not RegexListRedacted.Contains(LineCont) Then
                    RegexListRedacted.Add(LineCont)
                End If
            Next

            '�������������� ������ ��������� (������ ������ ������ INSERT INTO)

            Dim OriginalTextArr() As String
            Dim StringTEMP() As String
            Dim INSINTPlace As New List(Of Integer)
            Dim PatternFromRegex As String
            Dim CmplBoolean As Boolean = False
            Dim j As Integer = 0

            OriginalTextArr = Split(FileReader, vbCrLf)
            StringTEMP = Split(FileReader, vbCrLf)

            For i = 0 To OriginalTextArr.Count - 1
                If OriginalTextArr(i) <> "" Then '��� ������������� ������ �����
                    For j = 0 To RegexListRedacted.Count - 1
                        PatternFromRegex = RegexListRedacted.Item(j)
                        If OriginalTextArr(i).Contains(PatternFromRegex) = True Then '��������, �������� �� ������ ������ ������ � ������
                            If i = 0 Then '������� ������ ������
                                CmplBoolean = False
                            Else
                                CmplBoolean = IIf(StringTEMP(i - 1).Contains(PatternFromRegex) = True, True, False) '���������, �������� �� ��� ������ ����� �� ������ ��� � ���������� �� TEMP �������
                            End If
                            Exit For
                        End If
                    Next j

                    If CmplBoolean = True Then
                        OriginalTextArr(i) = Replace(OriginalTextArr(i), RegexListRedacted.Item(j), "") '�������� �������� ���������� � �������
                    Else
                        INSINTPlace.Add(i) '���������� ������ ������ � ������� ��������� ������ ���� INSERT INTO () VALUES ()
                    End If
                End If
            Next i

            '�������������� ������ ��������� (�������������� ������ ������� VALUES, ��� �������� � ������)

            For i = 0 To INSINTPlace.Count - 1
                OriginalTextArr(INSINTPlace(i)) = Replace(OriginalTextArr(INSINTPlace(i)), " VALUES", vbCrLf & "VALUES")
                OriginalTextArr(INSINTPlace(i)) = Replace(OriginalTextArr(INSINTPlace(i)), ");", "),")
            Next i

            '�������������� ������ ��������� (�������������� ������ ������� VALUES, ��� �������� � ������)

            For i = 0 To OriginalTextArr.Count - 1
                If i <> OriginalTextArr.Count - 1 Then
                    If OriginalTextArr(i).StartsWith("VALUES (") = True And OriginalTextArr(i + 1).Contains("INSERT INTO") = False Then
                        OriginalTextArr(i) = Replace(OriginalTextArr(i), ");", "),")
                    End If
                End If
            Next i
            FileReader = Join(OriginalTextArr, vbCrLf)

            '�������� ����� ����������������� ������� � ������

            OptimScriptName = OrigScriptName & "_Optimized.sql"
            Console.WriteLine("�������� ����� " & OptimScriptName)
            PathToOptimScript = PathToScript & "\" & OptimScriptName
            My.Computer.FileSystem.WriteAllText(PathToOptimScript, FileReader, False)
            Console.WriteLine("���� " & OrigScriptName & " ��������� � �������������.")

            '��������� FileReader

            FileReader = ""

        Next

        Console.ReadLine()

    End Sub

End Module