; Windows Setuo-Script
; Setup-Script made for Inno Setup 5.1.5
; http://www.innosetup.com/

[Setup]
AppID=AKFQuiz
DefaultDirName={pf}\AKFQuiz
AppName=AKFQuiz-testing
AppVerName=AKFQuiz-testing 4.3.2
OutputBaseFileName=akfquiz-testing-4.3.2-w32
OutputDir=..\..\..
VersionInfoVersion=4.3.2
VersionInfoCopyright=Copyright AKFoerster, GPL v2 or later
;SetUpIconFile=AKFQuiz.ico
PrivilegesRequired=none
ChangesAssociations=yes
ChangesEnvironment=yes
AppPublisher=AKFoerster
AppPublisherURL=http://akfoerster.de/
AppSupportURL=mailto:akfquiz@akfoerster.de
AppUpdatesURL=http://akfoerster.de/akfquiz/
AppComments=originally for GNU/Linux
DirExistsWarning=no
AllowUNCPath=no
AllowNoIcons=yes
DefaultGroupName=AKFQuiz
DisableProgramGroupPage=yes
Compression=lzma
SolidCompression=yes

[Languages]
Name: en; MessagesFile: "compiler:default.isl"; LicenseFile: "LICENSE.txt"; InfoBeforeFile: "windows-en.txt";
Name: de; MessagesFile: "compiler:Languages\German.isl"; LicenseFile: "LIZENZ.txt"; InfoBeforeFile: "windows-de.txt";

[CustomMessages]
en.quizfiles=AKFQuiz files
de.quizfiles=AKFQuiz-Dateien
en.createquiz=&mkquiz: update HTML file for JavaScript
de.createquiz=&mkquiz: HTML-Datei f�r JavaScript erneuern
en.scrquiz=&scrquiz: run quiz on textconsole
de.scrquiz=&scrquiz: Quiz auf Textkonsole starten
en.linequiz=&linequiz: run quiz line-oriented
de.linequiz=&linequiz: Quiz zeilen-orientiert starten
en.grquiz=&grquiz: run quiz in graphic mode
de.grquiz=&grquiz: Quiz im Grafik-Modus starten
en.edit=editing of quiz-files (also easy cheating)
de.edit=Bearbeiten von Quiz-Dateien (vereinfacht auch Mogeln)
en.editquiz=&edit quiz
de.editquiz=Quiz &bearbeiten
en.doc=Documentation
de.doc=Anleitungen
en.addon=additional functionality
de.addon=zus�tzliche Funktionen
en.langdoc=english
de.langdoc=deutsch
en.license=License
de.license=Lizenz (Original)
en.unfreequiz=also install non-free quiz-files
de.unfreequiz=auch nicht freie Quiz-Dateien installieren
;en.installsrc=unpack source codes
;de.installsrc=Quell-Texte entpacken
en.installcgi=unpack CGI program (no automatic installation!)
de.installcgi=CGI Programm entpacken (keine automatische Installation!)
en.new=edit or create quiz
de.new=Quiz bearbeiten oder erstellen
en.Usage=Usage instructions
de.Usage=Benutzungshinweise
en.htmlupdate=HTML files update
de.htmlupdate=HTML Dateien auffrischen
en.htmlstart=HTML quizfiles
de.htmlstart=HTML Quiz-Dateien
en.quizupload=publish a quizfile
de.quizupload=Quiz-Datei ver�ffentlichen
en.sdldownload=download the needed SDL 1.2.x "Runtime library" for "Win32"
de.sdldownload=ben�tigte SDL 1.2.x "Runtime library" f�r "Win32" herunterladen

; delete files made by my program (reproducable)
[UninstallDelete]
Type: files; Name: "{app}\html\*.html"
Type: files; Name: "{app}\doc\*.url"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "unfreequiz"; Description: "{cm:unfreequiz}"; GroupDescription: "{cm:addon}";
Name: "edit"; Description: "{cm:edit}"; GroupDescription: "{cm:addon}";
Name: "cgi"; Description: "{cm:installcgi}"; GroupDescription: "{cm:addon}"; Flags: unchecked;
;Name: "src"; Description: "{cm:installsrc}"; GroupDescription: "{cm:addon}"; Flags: unchecked;

[Files]
Source: "..\mkquiz.exe";      DestDir: "{app}\bin";
Source: "..\scrquiz.exe";     DestDir: "{app}\bin";
Source: "..\linequiz.exe";    DestDir: "{app}\bin";
Source: "..\grquiz.exe";      DestDir: "{app}\bin";
Source: "..\wquizchooser.exe";DestDir: "{app}\bin";
Source: "..\..\..\SDL\SDL.dll";  DestDir: "{app}\bin";
Source: "..\..\..\SDL\README-SDL.txt";DestDir: "{app}\doc";
Source: "AKFQuiz.ico";        DestDir: "{app}";
Source: "..\cgiquiz.exe";     DestDir: "{app}\bin"; Tasks: cgi
Source: "..\quizstat";        DestDir: "{app}\bin";
Source: "..\..\share\akfquiz\Linux-en.akfquiz"; DestDir: "{app}\share\akfquiz"; Flags: promptifolder
Source: "..\..\share\akfquiz\Linux-de.akfquiz"; DestDir: "{app}\share\akfquiz"; Flags: promptifolder
Source: "..\..\share\akfquiz\Schokolade-de.akfquiz"; DestDir: "{app}\share\akfquiz"; Flags: promptifolder
Source: "..\..\share\akfquiz\Christentum-de.akfquiz"; DestDir: "{app}\share\akfquiz"; Flags: promptifolder
Source: "..\..\share\akfquiz\Landtechnik.akfquiz"; DestDir: "{app}\share\akfquiz"; Flags: promptifolder
Source: "..\..\..\unfree\GPL-Quiz-en.akfquiz"; DestDir: "{app}\share\akfquiz"; Flags: promptifolder; Tasks: unfreequiz
Source: "..\..\..\unfree\debian-en.akfquiz"; DestDir: "{app}\share\akfquiz"; Flags: promptifolder; Tasks: unfreequiz
Source: "..\..\..\unfree\Amerika-de.akfquiz"; DestDir: "{app}\share\akfquiz"; Flags: promptifolder; Tasks: unfreequiz
Source: "..\..\html\*.*";     DestDir: "{app}\html";
Source: "..\..\doc\*.*";      DestDir: "{app}\doc";
Source: "..\..\doc\english\*.*"; DestDir: "{app}\doc\english";
Source: "..\..\doc\deutsch\*.*"; DestDir: "{app}\doc\deutsch";
Source: "*.txt";              DestDir: "{app}\doc";
Source: "template";           DestDir: "{app}\doc\english"; DestName: "template";
Source: "template-de";        DestDir: "{app}\doc\deutsch"; DestName: "template";
;Source: "AKFQuiz.ico";        DestDir: "{app}\src\w32"; Tasks: src
;Source: "*.rc";               DestDir: "{app}\src\w32"; Tasks: src
;Source: "..\quizstat";        DestDir: "{app}\src"; Tasks: src
;Source: "akfquiz.iss";        DestDir: "{app}\src\w32"; Tasks: src
;Source: "..\*.pas";           DestDir: "{app}\src"; Tasks: src
;Source: "..\*.inc";           DestDir: "{app}\src"; Tasks: src
;source: "..\*.ppm";           DestDir: "{app}\src"; Tasks: src
;Source: "..\*.xpm";           DestDir: "{app}\src"; Tasks: src
;;Source: "configure";         DestDir: "{app}\src"; Tasks: src
;Source: "..\Makefile*";       DestDir: "{app}\src"; Tasks: src
;Source: "..\*.mak";           DestDir: "{app}\src"; Tasks: src

[INI]
Filename: "{app}\doc\akfquiz.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://akfoerster.de/akfquiz/"; Languages: en
Filename: "{app}\doc\akfquiz.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://akfoerster.de/akfquiz/index.de.html"; Languages: de
Filename: "{app}\doc\quizupload.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://akfoerster.de/akfquiz/quizupload"

[Run]
FileName: "{app}\bin\mkquiz.exe"; WorkingDir: "{app}\share\akfquiz"; Parameters: "--out ""{app}\html"" --index --auto"; StatusMsg: "{cm:htmlupdate}";
;Filename: "http://www.libsdl.org/download-1.2.php"; Description: "{cm:sdldownload}"; Flags: postinstall shellexec

[Icons]
Name: "{group}\{cm:doc}\{cm:Usage}"; Filename: "{app}\doc\windows-en.txt"; Languages: en
Name: "{group}\{cm:doc}\{cm:Usage}"; Filename: "{app}\doc\windows-de.txt"; Languages: de
Name: "{group}\{cm:doc}\{cm:license}"; Filename: "{app}\doc\copying.txt"
Name: "{group}\{cm:doc}\Lizenz (�bersetzung)"; Filename: "{app}\doc\deutsch\gpl-ger.html"; Languages: de
Name: "{group}\{cm:doc}\PDF\akfquiz"; Filename: "{app}\doc\{cm:langdoc}\akfquiz.pdf";
Name: "{group}\{cm:doc}\PDF\grquiz"; Filename: "{app}\doc\{cm:langdoc}\grquiz.pdf";
Name: "{group}\{cm:doc}\PDF\scrquiz"; Filename: "{app}\doc\{cm:langdoc}\scrquiz.pdf";
Name: "{group}\{cm:doc}\PDF\mkquiz";  Filename: "{app}\doc\{cm:langdoc}\mkquiz.pdf";
Name: "{group}\{cm:doc}\PDF\cgiquiz"; Filename: "{app}\doc\{cm:langdoc}\cgiquiz.pdf";
Name: "{group}\{cm:doc}\PDF\linequiz"; Filename: "{app}\doc\{cm:langdoc}\linequiz.pdf";
Name: "{group}\{cm:doc}\HTML\akfquiz"; Filename: "{app}\doc\{cm:langdoc}\akfquiz.html";
Name: "{group}\{cm:doc}\HTML\grquiz"; Filename: "{app}\doc\{cm:langdoc}\grquiz.html";
Name: "{group}\{cm:doc}\HTML\scrquiz"; Filename: "{app}\doc\{cm:langdoc}\scrquiz.html";
Name: "{group}\{cm:doc}\HTML\mkquiz";  Filename: "{app}\doc\{cm:langdoc}\mkquiz.html";
Name: "{group}\{cm:doc}\HTML\cgiquiz"; Filename: "{app}\doc\{cm:langdoc}\cgiquiz.html";
Name: "{group}\{cm:doc}\HTML\linequiz"; Filename: "{app}\doc\{cm:langdoc}\linequiz.html";
;Name: "{group}\{cm:quizfiles}"; Filename: "{app}\share\akfquiz\"; Flags: foldershortcut;
; WorkingDir for grquiz, because of stout.txt, stderr.txt
Name: "{group}\grquiz"; Filename: "{app}\bin\grquiz.exe"; WorkingDir: "{app}\bin";
Name: "{group}\scrquiz"; Filename: "{app}\bin\scrquiz.exe";
;Name: "{group}\linequiz"; Filename: "{app}\bin\linequiz.exe";
Name: "{group}\{cm:htmlupdate}"; Filename: "{app}\bin\mkquiz.exe"; WorkingDir: "{app}\share\akfquiz"; Parameters: "--out ""{app}\html"" --index --auto";
Name: "{group}\{cm:htmlstart}"; Filename: "{app}\html\index.html";
Name: "{group}\{cm:new}"; Filename: "{app}\bin\wquizchooser.exe"; Tasks: edit
Name: "{group}\{cm:ProgramOnTheWeb,AKFQuiz}"; Filename: "{app}\doc\akfquiz.url";
Name: "{group}\{cm:quizupload}"; Filename: "{app}\doc\quizupload.url"; Tasks: edit
Name: "{group}\{cm:UninstallProgram,AKFQuiz}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\grquiz"; Filename: "{app}\bin\grquiz.exe"; WorkingDir: "{app}\bin"; Tasks: desktopicon
Name: "{app}\share\akfquiz\{cm:htmlupdate}"; Filename: "{app}\bin\mkquiz.exe"; WorkingDir: "{app}\share\akfquiz"; Parameters: "--out ""{app}\html"" --index --auto";
Name: "{app}\share\akfquiz\{cm:htmlstart}"; Filename: "{app}\html\index.html";
Name: "{app}\share\akfquiz\{cm:new}"; Filename: "{app}\bin\wquizchooser.exe"; Tasks: edit
;Name: "{app}\share\akfquiz\{cm:doc}"; Filename: "{app}\doc";

[Registry]
Root: HKCR; Subkey: ".akfquiz"; ValueType: string; ValueName: ""; ValueData: "AKFQuiz"; Flags: deletekey uninsdeletekey
Root: HKCR; Subkey: ".akfquiz"; ValueType: string; ValueName: "Content Type"; ValueData: "application/x-akfquiz"; Flags: uninsdeletekey
Root: HKCR; Subkey: ".akfquiz\ShellNew"; ValueType: string; ValueName: "FileName"; ValueData: "{app}\doc\{cm:langdoc}\template"; Flags: uninsdeletekey; Tasks: edit
Root: HKCR; Subkey: ".akfquiz\ShellNew"; ValueType: string; ValueName: "command"; ValueData: "notepad.exe ""%1"""; Flags: uninsdeletekey; Tasks: edit
Root: HKCR; Subkey: ".aqz"; ValueType: string; ValueName: ""; ValueData: "AKFQuiz"; Flags: deletekey uninsdeletekey
Root: HKCR; Subkey: ".aqz"; ValueType: string; ValueName: "Content Type"; ValueData: "application/x-akfquiz"; Flags: uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz";  ValueType: string; ValueName: ""; ValueData: "AKFQuiz"; Flags: deletekey uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\AKFQuiz.ico"; Flags: uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz\shell\open"; ValueType: string; ValueName: ""; ValueData: "{cm:grquiz}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz\shell\open\command"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\grquiz.exe ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz\shell\js"; ValueType: string; ValueName: ""; ValueData: "{cm:createquiz}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz\shell\js\command"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\mkquiz.exe --out ""{app}\html"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz\shell\crt"; ValueType: string; ValueName: ""; ValueData: "{cm:scrquiz}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz\shell\crt\command"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\scrquiz.exe ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz\shell\line"; ValueType: string; ValueName: ""; ValueData: "{cm:linequiz}"; Flags: uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz\shell\line\command"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\linequiz.exe ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "AKFQuiz\shell\edit"; ValueType: string; ValueName: ""; ValueData: "{cm:editquiz}"; Flags: uninsdeletekey; Tasks: edit
Root: HKCR; Subkey: "AKFQuiz\shell\edit\command"; ValueType: string; ValueName: ""; ValueData: "notepad.exe ""%1"""; Flags: uninsdeletekey; Tasks: edit
; Environment
ROOT: HKCU; Subkey: "Environment"; ValueType: string; ValueName: "QUIZPATH"; ValueData: "{app}\share\akfquiz;."; Flags: uninsdeletevalue noerror
ROOT: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: string; ValueName: "QUIZPATH"; ValueData: "{app}\share\akfquiz;."; Flags: uninsdeletevalue noerror

