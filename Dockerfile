# Базовый образ с Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл с зависимостями и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь остальной код приложения
COPY . .

# Указываем, какой порт будет слушать приложение
EXPOSE 5000

# Команда для запуска приложения
CMD ["python", "app.py"]