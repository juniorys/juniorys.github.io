REM  ����ע��
REM  set  /p comment = "please input code change description"
REM ����Ϊ����distĿ¼�µĵ��˽ű���ǰĿ¼������������
del index.html 404.html favicon.ico
rd static /s /q
copy ..\dist\index.html .
copy ..\dist\favicon.ico .
copy ..\dist\index.html  404.html
xcopy /e/y/i/f ..\dist\static .\static
:: ����Ϊ�ύ���뵽git�ֿ������������
git pull
git add *
set /p comment="�����������˵��:"
if "%comment%"=="" ( 
    git commit -m "[%date% %time%] update"
    echo "Ĭ�ϴ�����˵��Ϊ[%date% %time%] update"
) else (
    git commit -m "[%date% %time%] %comment%"
    echo "�Զ��������˵��Ϊ%comment%"
)
git push

