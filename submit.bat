git add *
set /p comment="�����������˵��:"
if "%comment%"=="" ( 
    git commit -m "[%date% %time%] update"
    echo "Ĭ�ϴ�����˵��Ϊ[%date% %time%] update"
) else (
    git commit -m "[%date% %time%] %comment%"
    echo "�Զ��������˵��Ϊ%comment%"
)
REM  ����ע��
REM  set  /p comment = "please input code change description"
git push
