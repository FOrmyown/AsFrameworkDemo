@echo off
cd "src/main/java/com/"
IF EXIST "as" ( 
    IF EXIST ".gitignore" (
        cd as
        git pull origin master  
        cd ../
        ) ELSE  (
            echo as/ > .gitignore
            git pull origin master  
        )
) ELSE (
    IF exist ".gitignore" (
        echo gitnore exists
    ) ELSE (
        echo as/ > .gitignore
    )
    SET /P input= Please input your bitbucket Id:
    git clone https://%input%@bitbucket.org/timescodes/asframework.git
    move asframework as
)
cd ../../../../