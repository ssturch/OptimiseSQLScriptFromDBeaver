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

        'Получение папки со скриптами от пользователя

        Dim ValidFile As Boolean = False

        Console.WriteLine("Введите путь к папке с файлами скрипта, для их обработки у файла должен быть префикс SCRIPT_INSERT_INTO_...")
        PathToScript = Console.ReadLine()
        For Each FoundFile As String In My.Computer.FileSystem.GetFiles(PathToScript)
            If FoundFile.Contains("SCRIPT_INSERT_INTO_") And FoundFile.Contains(".sql") Then
                FileList.Add(FoundFile)
            End If
        Next

        'Обработка каждого файла

        For FileIndex = 0 To FileList.Count - 1
            OrigScriptName = Path.GetFileNameWithoutExtension(FileList.Item(FileIndex))
            Console.WriteLine("Обработка файла: " & OrigScriptName)

            'Чтение файла скрипта

            FileReader = My.Computer.FileSystem.ReadAllText(FileList.Item(FileIndex))

            '++Изменение содержимого скрипта++

            'Удаление переносов строк

            FileReader = Replace(FileReader, vbCrLf, "")

            'Запись в коллекцию всех похожих строк типа INSERT INTO

            Dim RegexList As New List(Of String)
            Dim Pattern As String = "INSERT INTO .+? (.+?) "
            Dim RGXWrite As New Regex(Pattern)
            For Each PatternConj As Match In RGXWrite.Matches(FileReader)
                RegexList.Add(PatternConj.Value)
            Next

            'Вставка правильных переносов строк в SQL файл

            Dim FileReaderArr() As String
            FileReaderArr = Split(FileReader, ";")
            FileReader = Join(FileReaderArr, ";" & vbCrLf)

            'Удаление повторяющихся строк в коллекции  и добавление редактированного List обратно в Temp

            Dim RegexListRedacted As New List(Of String)
            Dim LineCont As String
            Dim i As Integer
            For Each LineCont In RegexList
                If Not RegexListRedacted.Contains(LineCont) Then
                    RegexListRedacted.Add(LineCont)
                End If
            Next

            'Редактирование данных построчно (убрать лишние строки INSERT INTO)

            Dim OriginalTextArr() As String
            Dim StringTEMP() As String
            Dim INSINTPlace As New List(Of Integer)
            Dim PatternFromRegex As String
            Dim CmplBoolean As Boolean = False
            Dim j As Integer = 0

            OriginalTextArr = Split(FileReader, vbCrLf)
            StringTEMP = Split(FileReader, vbCrLf)

            For i = 0 To OriginalTextArr.Count - 1
                If OriginalTextArr(i) <> "" Then 'Для игнорирования пустых строк
                    For j = 0 To RegexListRedacted.Count - 1
                        PatternFromRegex = RegexListRedacted.Item(j)
                        If OriginalTextArr(i).Contains(PatternFromRegex) = True Then 'Проверка, содержит ли данная строка запись в макете
                            If i = 0 Then 'Пропуск первой строки
                                CmplBoolean = False
                            Else
                                CmplBoolean = IIf(StringTEMP(i - 1).Contains(PatternFromRegex) = True, True, False) 'Сравнение, содержит ли эта строка такие же данные как и предыдущая по TEMP массиву
                            End If
                            Exit For
                        End If
                    Next j

                    If CmplBoolean = True Then
                        OriginalTextArr(i) = Replace(OriginalTextArr(i), RegexListRedacted.Item(j), "") 'Удаление ненужной информации в строках
                    Else
                        INSINTPlace.Add(i) 'Добавление номера строки в котором находится запись типа INSERT INTO () VALUES ()
                    End If
                End If
            Next i

            'Редактирование данных построчно (Редактирование текста функции VALUES, она остается в строке)

            For i = 0 To INSINTPlace.Count - 1
                OriginalTextArr(INSINTPlace(i)) = Replace(OriginalTextArr(INSINTPlace(i)), " VALUES", vbCrLf & "VALUES")
                OriginalTextArr(INSINTPlace(i)) = Replace(OriginalTextArr(INSINTPlace(i)), ");", "),")
            Next i

            'Редактирование данных построчно (Редактирование текста функции VALUES, она остается в строке)

            For i = 0 To OriginalTextArr.Count - 1
                If i <> OriginalTextArr.Count - 1 Then
                    If OriginalTextArr(i).StartsWith("VALUES (") = True And OriginalTextArr(i + 1).Contains("INSERT INTO") = False Then
                        OriginalTextArr(i) = Replace(OriginalTextArr(i), ");", "),")
                    End If
                End If
            Next i
            FileReader = Join(OriginalTextArr, vbCrLf)

            'Создание файла оптимизированного скрипта и запись

            OptimScriptName = OrigScriptName & "_Optimized.sql"
            Console.WriteLine("Создание файла " & OptimScriptName)
            PathToOptimScript = PathToScript & "\" & OptimScriptName
            My.Computer.FileSystem.WriteAllText(PathToOptimScript, FileReader, False)
            Console.WriteLine("Файл " & OrigScriptName & " обработан и оптимизирован.")

            'Обнуление FileReader

            FileReader = ""

        Next

        Console.ReadLine()

    End Sub

End Module
