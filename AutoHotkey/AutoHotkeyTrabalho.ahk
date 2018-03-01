#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

#Include Libs.ahk
#Include GUI.ahk

CapsLock::
	SendInput, {RAlt Down}{Tab}{RAlt Up}
Return

Shift & CapsLock::
	SendInput {RCtrl Down}{Tab}{RCtrl Up}
Return

CapsLock & Space::
    SendInput, !{f4}
Return

CapsLock & j::
	SendInput ^#{Left}
Return

CapsLock & k::
	SendInput ^#{Right}
Return

#+1::
	send, M-n-@-420326
Return

#+2::
	send, 123
Return

#+a::
	sel := Explorer_GetSelected()
	run, notepad++.exe %sel%
Return

#+b::
	;run, C:\Users\marcell.alves\Documents\Squadra\Sebrae\rota_rede_SEBRAE_SP.bat
	;run, C:\Users\marcell.alves\Documents\Squadra\Sebrae\rota_rede SEBRAE.bat
	;run, C:\Users\marcell.alves\Documents\Squadra\ANTT\rotas_rede_antt_DF.bat
	;run, C:\Users\marcell.alves\Documents\Squadra\ANTT\tfs_novo.bat
	;run, C:\Users\marcell.alves\Documents\Squadra\W4C\ANTT_Mvc_WebAPI_EntityFramework\BatCopiaTemplatesMvcWebApiEntityFramework.bat
Return

CapsLock & c::
	run, chrome.exe
Return

#+d::
	run, chrome.exe https://dropbox.com
Return

#+e::
	send, marcell.alves@gmail.com
Return

#+f::
	send, mudar123
Return

#+g::
	run chrome.exe https://www.goconqr.com/pt-BR
Return

#+h::
	run, chrome.exe https://habitica.com/#/tasks
Return

CapsLock & i::
	run, chrome.exe https://inbox.google.com
Return

#+l::
	WinActivate, ANTT.NewSolution - Microsoft Visual Studio  (Administrator) - Experimental Instance
	Sleep, 500
	Send, !ftt
	Sleep, 4000
	GoSub #+w ;<Call hotkey #+w>
	Sleep, 3000
	Send, y
return

#+m::
	send, marcell.alves
Return

#+n::
	send, 420Mn@326
Return

+#o::
	run chrome.exe https://docs.google.com/spreadsheets/d/1izDuseis7HwGSbVz4tPvPDBJjtt2OzxT9v78onJGnTs/edit#gid=0
Return

#+p::
	run, %comspec% /c "start F:\Squadra\w4c\VisualStudioPackage\Package\Wings4CloudPackage\Wings4CloudPackage.sln"
Return

#+q::
	today = %a_now%
	today += -1, days
	FormatTime, today, %today%, d/M/yyyy

	run, chrome.exe "http://sqhoras:8085/timesheetColaborador.asp?date="%today%
Return

CapsLock & r::
	Reload
Return

#+s::
	run, %comspec% /c "start F:\Squadra\w4c\Wings4Cloud.SDK\Wings4Cloud.SDK.sln"
Return

#+t::
	send, F:\Marcell\Temp
Return

#+u::
	run, powershell -ExecutionPolicy RemoteSigned -File "C:\Users\marcell.alves\Documents\Squadra\ANTT\UpdateFramework\update_framework_packages.ps1" -Scope Process
Return

#+x::
	dir= C:\Users\marcell.alves\Documents\Visual Studio 2017\My Exported Templates
	FileDelete, %dir%\*.*

	WinActivate, Mvc_WebAPI_EntityFramework - Microsoft Visual Studio  (Administrator)
	Send, !pe
	Send, {Enter}
	Send, {Tab 8}
	Send, {Space}
	Send, {Tab}
	Send, {Space}
	Send, {Enter}
	
	ProjectNumber = 1
	Loop, 10
	{
		Send, !pe
		Send, {Tab}
		Send, {Down %ProjectNumber%}
		Send, {Enter}
		Send, {Tab 8}
		Send, {Space}
		Send, {Tab}
		Send, {Space}
		Send, {Enter}
		
		ProjectNumber++
	}
Return

#+w::
	WinActivate, Microsoft Visual Studio  (Administrator) - Experimental Instance
	Sleep, 500
	Send, {Alt}
	Send, {Right 9}
	Send, {Enter 2}
	Sleep, 4000
	Send, {Tab}
	Send, {Space 2}
	Send, {Down 6}
	Send, {Space}
	Send, {Enter}
	Sleep, 1000
	Send, {Tab}
	Send, {Space}
	Send, {Enter}
	Sleep, 1000
	Send, {Tab}
	Send, {Space}
	Send, {Enter}
	Send, {Tab}
	Send, ANTT.NewSolution
	Sleep, 500
	Send, {Tab 2}
	Send, SRVSQLCLUSTER\ANTT;Initial Catalog=BD_PROVA_ELETRONICA_V1_0;User ID=usr_prova_eletronica;Password=usr_prova_eletronica
	Send, {Tab 2}
	Send, F:\Marcell\Temp
	Send, {Enter}
Return

*Numlock::Return
*ScrollLock::Return