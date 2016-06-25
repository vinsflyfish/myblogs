# install ycm notes 
1. install should with python-dev, for that need include header. Without which, install.py will run with exception
2. you need configure file 

## .ycm_extra_conf.py 文件配置
```
# 配置自定义目录
'-I',
'../include',
'-I',
'./include',

...
# 配置系统目录
'-isystem',
'/usr/include',
'-isystem',
'/usr/include/c++',
'-isystem',
'/usr/include/linux'
 ```

## vim中相关配置
```
"设置error和warning的提示符，如果没有设置，ycm会以syntastic的  
" g:syntastic_warning_symbol 和 g:syntastic_error_symbol 这两个为准  
let g:ycm_error_symbol='>>'  
let g:ycm_warning_symbol='>*'  

"设置跳转的快捷键，可以跳转到definition和declaration  
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>  
"nmap <F4> :YcmDiags<CR>  

"设置全局配置文件的路径--主要是这里设置
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'  
"开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files = 1  
"开启语义补全  
let g:ycm_seed_identifiers_with_syntax = 1  
"在接受补全后不分裂出一个窗口显示接受的项  
set completeopt-=preview  
"不显示开启vim时检查ycm_extra_conf文件的信息  
let g:ycm_confirm_extra_conf=0  
"每次重新生成匹配项，禁止缓存匹配项  
let g:ycm_cache_omnifunc=0  
"在注释中也可以补全  
let g:ycm_complete_in_comments=1  
"输入第一个字符就开始补全  
let g:ycm_min_num_of_chars_for_completion=1  
"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可  
let g:ycm_use_ultisnips_completer=0  
```
