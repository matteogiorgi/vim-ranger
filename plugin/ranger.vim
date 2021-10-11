function s:Ranger()
    exec "silent !ranger --choosedir=/tmp/vim_ranger_current_dir --choosefile=/tmp/vim_ranger_current_file " . expand("%:p:h")
    if filereadable('/tmp/vim_ranger_current_dir')
        exec 'cd ' . system('cat /tmp/vim_ranger_current_dir')
        call system('rm /tmp/vim_ranger_current_dir')
    endif
    if filereadable('/tmp/vim_ranger_current_file')
        exec 'edit ' . system('cat /tmp/vim_ranger_current_file')
        call system('rm /tmp/vim_ranger_current_file')
    endif
    redraw!
endfun


command! Ranger call <SID>Ranger()
