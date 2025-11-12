@echo off
chcp 65001 >nul
echo ========================================
echo   Загрузка проекта на GitHub
echo ========================================
echo.

echo [1/5] Инициализация Git репозитория...
git init
if errorlevel 1 (
    echo ❌ Ошибка инициализации Git
    pause
    exit /b 1
)

echo.
echo [2/5] Добавление файлов...
git add .
if errorlevel 1 (
    echo ❌ Ошибка добавления файлов
    pause
    exit /b 1
)

echo.
echo [3/5] Создание коммита...
git commit -m "Initial commit: TTS приложение на базе Silero"
if errorlevel 1 (
    echo ❌ Ошибка создания коммита
    pause
    exit /b 1
)

echo.
echo [4/5] Переименование ветки в main...
git branch -M main
if errorlevel 1 (
    echo ❌ Ошибка переименования ветки
    pause
    exit /b 1
)

echo.
echo [5/5] Привязка к GitHub и загрузка...
git remote add origin https://github.com/UpDate0909/TTS-Text-to-Speech-Silero-TTS.git
git push -u origin main
if errorlevel 1 (
    echo ❌ Ошибка загрузки на GitHub
    echo.
    echo Возможные причины:
    echo - Репозиторий уже существует (используйте git push -f origin main)
    echo - Нет доступа к интернету
    echo - Неверные учетные данные GitHub
    pause
    exit /b 1
)

echo.
echo ========================================
echo   ✅ Проект успешно загружен на GitHub!
echo ========================================
echo.
echo Следующие шаги:
echo 1. Откройте https://github.com/UpDate0909/TTS-Text-to-Speech-Silero-TTS
echo 2. Создайте Release (см. RELEASE_INSTRUCTIONS.md)
echo 3. Загрузите text_to_vois.exe в Release
echo.
pause
