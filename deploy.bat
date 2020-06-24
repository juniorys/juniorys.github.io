REM  这是注释
REM  set  /p comment = "please input code change description"
REM 下面为复制dist目录下的到此脚本当前目录的批处理命令
del index.html 404.html favicon.ico
rd static /s /q
copy ..\dist\index.html .
copy ..\dist\favicon.ico .
copy ..\dist\index.html  404.html
xcopy /e/y/i/f ..\dist\static .\static
:: 下面为提交代码到git仓库的批处理命令
git pull
git add *
set /p comment="请输入代码变更说明:"
if "%comment%"=="" ( 
    git commit -m "[%date% %time%] update"
    echo "默认代码变更说明为[%date% %time%] update"
) else (
    git commit -m "[%date% %time%] %comment%"
    echo "自定义代码变更说明为%comment%"
)
git push

