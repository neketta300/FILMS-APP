# FILMS-APP

## **Оглавление**
- [1. Введение](#intro)
- [2. Требования пользователя](#user_requirements)
  - [2.1 Программные интерфейсы](#interfaces)
  - [2.2 Интерфейс пользователя](#ui)
  - [2.3 Характеристики пользователей](#user_characteristics)
  - [2.4 Предположения и зависимости](#assumptions)
- [3. Системные требования](#system_requirements)
  - [3.1 Функциональные требования](#functional_requirements)
  - [3.2 Нефункциональные требования](#non_functional_requirements)

<a name="intro"></a>
## **1. Введение**

**Название проекта:** N3FILMZ

**Технологии и инструменты разработки:**

•	Язык разработки: Dart.

•	Фреймворк для создания UI: FLUTTER.

•	Среда разработки: VS Code.

**Описание проекта:**  
Проект представляет собой мобильное приложение для просмотра фильмов.

**Границы проекта:**  
Приложение не предоставляет функций комментирования фильмов.

<a name="user_requirements"></a>
## **2. Требования пользователя**

<a name="interfaces"></a>
### **2.1 Программные интерфейсы:**

Продукт будет взаимодействовать с несколькими внешними системами:

•	Movie DB API для отображения фильмов, информации о них, актерах.

•	Firebase Authentication для авторизации и хранения данных пользователей (тренеров, администраторов).

<a name="ui"></a>
### **2.2 Интерфейс пользователя:**

Приложение будет содержать следующие основные интерфейсы:

• Страница авторизации: Экран для ввода данных пользователя (логин и пароль).
  
  ![Страница авторизации](docs/mocaps/auth_screen.png)

• Страница с фильмами.
  
  ![Страница фильмов](docs/mocaps/films_list_sccreen.png)

• Страница с описанием каждого фильма.
  
  ![Страница профиля зала](docs/mocaps/film_info_screen.png)

• Страница новостей: Новые фильмы/премьеры.
  
  ![Интерактивная карта](docs/mocaps/news_screen.jpg)

Пример взаимодействия:

| Действие пользователя                          | Реакция системы                                               |
|------------------------------------------------|---------------------------------------------------------------|
| Ввод логина и пароля, нажимает "Войти"         | Проверка данных и вход в систему                              |
| Нажимает на фильмы                             | Открывается страница с фильмами                               |
| Нажимает на сериалы                            | Открывается страница с сериалами                              |
| Скролит вниз                                   | Возможность просмотр всех фильмов                             |

<a name="user_characteristics"></a>
### **2.3 Характеристики пользователей:**

•	Люди: Возраст 6+, с базовыми навыками работы со смартфонов. Уровень технической грамотности — средний.

<a name="assumptions"></a>
### **2.4 Предположения и зависимости:**

•	Все пользователи должны иметь подключение к интернету для синхронизации данных с облаком.

•	Приложение будет работать только на устройствах с Android 6.0 и выше.

<a name="system_requirements"></a>
## **3. Системные требования**

<a name="functional_requirements"></a>
### **3.1 Функциональные требования:**

1.	Приложение должно позволять пользователям просматривать фильмы и их описание.
  
2.	Пользователи должны иметь возможность добавлять и редактировать информацию о тренерах и учениках.
	
3.	Авторизация через Firebase должна быть обязательной для всех пользователей.
	
4.	Приложение должно поддерживать управление жестами для выполнения определённых действий.
   
5.	Приложение должно поддерживать синхронизацию данных с облаком (Firebase).


<a name="non_functional_requirements"></a>
### **3.2 Нефункциональные требования:**

•	Надёжность: Приложение должно быть устойчивым к потерям соединения с интернетом, с возможностью локального хранения данных и последующей синхронизации.

•	Безопасность: Данные пользователей и залов должны быть защищены, а авторизация — проводиться через надёжную систему (например, Firebase Authentication).

•	Производительность: Приложение должно загружаться и работать плавно на большинстве современных устройств.

•	Удобство использования: Интерфейс должен быть интуитивно понятным, особенно для пользователей с базовыми техническими навыками.