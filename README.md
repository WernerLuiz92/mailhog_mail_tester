# 🐗 📨 MailHog Mail Tester

This repository contains a Docker Compose file for setting up a service to test emails via SMTP using the MailHog tool.

## 📖 Instructions

1. 💾 Clone this repository
    ```bash
        git clone https://github.com/WernerLuiz92/mail_tester.git
    ```
2. ⚙️ Configure the desired SMTP port (default is 1025) and UI port (default is 8025) in the `.env` file.
3. 📂 Open a terminal and navigate to the project folder.
    ```bash
        cd mail_tester
    ```
4. 🛠️ Build the Docker image. Run in the terminal.
    ```bash
        docker-compose build --no-cache
    ```
5. 🪄 Run the Docker container.
    ```bash
        docker-compose up -d
    ```
6. 🔧 Configure the `.env` file in your Laravel project. Run in the terminal.
    ```bash
        bin/bash mailhog-config.sh
    ```
    This will print the following:
    ```bash
        Mailhog is running on 172.X.X.X:YYYY
        Remember to add this to your Laravel Project's .env

        # Mailhog configuration
        MAIL_MAILER=smtp
        MAIL_HOST=172.X.X.X
        MAIL_PORT=YYYY
        MAIL_USERNAME=
        MAIL_PASSWORD=
        MAIL_ENCRYPTION=
        MAIL_FROM_ADDRESS='your@email.com'
        MAIL_FROM_NAME="${APP_NAME}"
    ```

    Copy the printed values and paste it in your project's `.env` file.

7. 🥳 Test your emails. And be happy. 🥳


## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).