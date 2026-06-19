# LaTeX CV

## Автор

**ФИО:** Артем Качурин

**Группа:** *КНАД253*

## Описание

Данный репозиторий содержит резюме, написанное на LaTeX.

Для обеспечения воспроизводимой сборки используется Docker на базе Debian 10.3. Автоматическая сборка проекта выполняется с помощью GitHub Actions.

## Структура проекта

```
.
├── choose_system.py
├── Dockerfile
├── README.md
├── .github/
│   └── workflows/
│       └── main.yml
└── CV/
    ├── main.tex
    ├── temp.cls
    ├── photo.png
    └── IMG/
```

## Сборка

Сборка Docker-образа:

```bash
docker build -t hsegitcv .
```

Запуск контейнера:

```bash
docker run --name hsegitcv-container hsegitcv
```

Копирование готового PDF:

```bash
docker cp hsegitcv-container:/app/CV/main.pdf .
```
