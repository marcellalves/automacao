#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
    ; #Warn  ; Enable warnings to assist with detecting common errors.
    SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
    SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

    gui_state = closed ; originally the gui is 'closed' since you didnt called it yet.
    return ; end of autoexecute section.

    #F3::Reload

    #F2:: ; it show the launcher
    gui_spawn:
        if gui_state != closed
        {
                gui_state = closed
                gui, Destroy
                Return ; And do nothing else.
        }
        gui_state = main
        Gui, Add, Edit, x100 y15 w95 h20 vDobby gFreeElf
            ; what you'll write in the edit zone will be stored in V variable 'Dobby'
            ; everytime you write a character in the edit zone, it run the G label : FreeElf
        gui, show, w300 h70, Dobby ; don't confuse here, Dobby is the name of the variable but in this line it is also the name of the gui.
    Return

    FreeElf:
    Gui, submit, NoHide
    ;everytime you edit the edit zone, it is send to FreeElf Label and check if what you wrote should send a command.
    if Dobby = wn
    {
        gui, Destroy ; you destroy the gui you created and it clear the edit zone, it will be ready for the next time you call the launcher.
        gui_state = closed ; gui state goes back to closed (since we just destroyed it), this way we can open it next time.
        
        WinActivate, Microsoft Visual Studio  (Administrator) - Experimental Instance
        Send, !
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
        Send, "ANTT.NewSolution"
        Sleep, 500
        Send, {Tab 2}
        Send, "Data Source=CHINA\MOBILIDADE_DESEN;Initial Catalog=NovoTemplateANTT;User ID=usr_mod;Password=2012@squadra"
        Send, {Tab 2}
        Send, "F:\Marcell\Temp"
        Send, {Enter}
    }
    ; else if Dobby = sock
    ; {
    ;     gui, Destroy
    ;     gui_state = closed
    ;     msgbox, DOBBY IS FREE
    ; }
    
    Return


    ; this function does not work for unknown reason but if it work you can use it as in example dobby = c, to write 1 line instead of 2.
    gui_destroy() {
        gui_state = closed
        gui, Destroy
    }