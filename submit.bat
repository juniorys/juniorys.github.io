git add *
set /p comment="请输入代码变更说明:"
if "%comment%"=="" ( 
    git commit -m "[%date% %time%] update"
    echo "默认代码变更说明为[%date% %time%] update"
) else (
    git commit -m "[%date% %time%] %comment%"
    echo "自定义代码变更说明为%comment%"
)
REM  这是注释
REM  set  /p comment = "please input code change description"
git push
