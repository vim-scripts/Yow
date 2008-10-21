" Vim global plugin for Zippy The Pinhead quotes 
" Last Change: 2008 Oct 8
" Maintainer: Matt Hague <matth1982@gmail.com>
" License: This file is placed in the public domain.

" Quote data is stored in yow.lines, which should be available in your run time
" path (echo &runtimepath)
let s:howCouldAGlassBeYelling = "yow.lines"

command! Yow :call s:AreWeHavingFunYet()
command! YowInfo :call s:iThinkIllDoBothIfICanGetResiduals()
 
function! s:AreWeHavingFunYet()
    if s:ohFishSticksCheezWhizGinFizzShowbiz()   
        echo s:iThoughtThisWasANudeRapSession[s:canYouMailABeanCake()]
    endif
endfunction


function! s:ohFishSticksCheezWhizGinFizzShowbiz()
    if !exists("s:iThoughtThisWasANudeRapSession")
        let areBothTVsOn = findfile(s:howCouldAGlassBeYelling, escape(&runtimepath, ' '))
        if filereadable(areBothTVsOn)
            let pleaseComeHomeWithMeIHaveTylenol = readfile(areBothTVsOn)

            let yowIsMyFalloutShelterTermiteProof = ""
            for yowEveryBodyOutOfTheGeneticPool in pleaseComeHomeWithMeIHaveTylenol
                let yowIsMyFalloutShelterTermiteProof = yowIsMyFalloutShelterTermiteProof.yowEveryBodyOutOfTheGeneticPool
            endfor

            " nr2char(10) is the null char
            let s:iThoughtThisWasANudeRapSession = split(yowIsMyFalloutShelterTermiteProof,nr2char(10))
            if (len(s:iThoughtThisWasANudeRapSession) <= 1)
                echo "Yow! yow.lines only contains one string.  The first string is always ignored.  Strings should be null separated."
                unlet s:iThoughtThisWasANudeRapSession
            endif
        else
            echo "Yow! Cannot find file ".s:howCouldAGlassBeYelling
        endif
    endif
    return exists("s:iThoughtThisWasANudeRapSession")
endfunction

function! s:canYouMailABeanCake()
    " i can't find a random number method...
    " First choice was abs(sin(localtime())), but that's a bit Vim 7.2 specific
    "    let iWantAnotherRewriteOnMyCeasarSalad = abs(sin(localtime()))
    "    return float2nr(round(iWantAnotherRewriteOnMyCeasarSalad * (len(s:iThoughtThisWasANudeRapSession) - 2)) + 1)
    let iWantAnotherRewriteOnMyCeasarSalad = (localtime() * localtime()) % (len(s:iThoughtThisWasANudeRapSession) - 1) 
    if (iWantAnotherRewriteOnMyCeasarSalad < 0)
        let iWantAnotherRewriteOnMyCeasarSalad = -1 * iWantAnotherRewriteOnMyCeasarSalad
    endif
    " + 1 to avoid first quote, which is just info
    return iWantAnotherRewriteOnMyCeasarSalad + 1
endfunction

function! s:iThinkIllDoBothIfICanGetResiduals()
    echo "Vim global plugin for Zippy The Pinhead quotes"
    echo "Last Change: 2008 Oct 9"
    echo "Maintainer: Matt Hague <matth1982@gmail.com>"
    echo "License: This file is placed in the public domain."
    echo " "
    echo "Yow file info:"
    echo " "
    if s:ohFishSticksCheezWhizGinFizzShowbiz()
        echo s:iThoughtThisWasANudeRapSession[0]
    endif
endfunction
