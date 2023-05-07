while true; do
echo "パスワードマネージャーへようこそ！"
echo "次の選択肢から入力してください(Add Password:ad/Get Password:get/Exit:exit):"
read choice

    if [ "$choice" = "ad" ]; then
        echo "サービス名を入力してください:"
            read service_name
        echo "ユーザー名を入力してください："
            read user_name
        echo "パスワードを入力してください:"
            read pass_word

        echo "サービス名:$service_name,ユーザー名:$user_name,パスワード:$pass_word" >> data.txt
        echo "パスワードを追加は成功しました。"
    elif [ "$choice" = "get" ]; then
        # Get Passwordの処理を記述
        echo "サービス名を入力してください:"
            read service_name
            if grep -q "$service_name" data.txt; then
               grep $service_name data.txt
            else
            echo "そのサービスは登録されていません。"
            fi

    
    elif [ "$choice" = "exit" ]; then
      echo "Thank YOU!!!"
      exit 0
    else
      echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
    fi
done
