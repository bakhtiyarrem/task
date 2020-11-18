<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>task</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="container">
        <h2 class="pt-4 text-center">Форма регистрации</h2>
        <form class="pt-2 mb-4" enctype= multipart/form-data>
            <div class="form-group">
                <label for="name">Имя: </label>
                <input required  type="text"  class="form-control" id="name" name="name" name="name" placeholder="Имя">
            </div>
            <div class="form-group">
                <label for="surname">Фамилия: </label>
                <input   type="text"  class="form-control" id="surname" name="surname" placeholder="Фамилия">
            </div>
            <div class="form-group">
                <label for="patronymic">Отчество: </label>
                <input   type="text"  class="form-control" id="patronymic" name="patronymic" placeholder="Отчество">
            </div>
            <div class="form-group">
                <label for="dateBirth">Дата рождения: </label>
                <input  type="date"  class="form-control" id="dateBirth" name="dateBirth" placeholder="Дата рождения">
            </div>
            <div class="form-group">
                <label for="iin">ИИН: </label>
                <input  type="text"  class="form-control" id="iin" name="iin" placeholder="иин"
                    onkeypress="return (event.charCode >= 48 && event.charCode <= 57 && /^\d{0,12}$/.test(this.value));">
            </div>
            <div class="form-group">
                <label for="phone">Номер телефона: </label>
                <input  type="tel"  class="form-control" id="phone" name="phone" placeholder="+7 (___) ___-___">
            </div>

            <div class="form-group">
                <label for="street ">Адрес: </label>
                <input  type="text"  class="form-control mb-1" id="street" name="street" placeholder="Улица">
                <input type="text" class="form-control " id="apartment" name="apartment" placeholder="Квартира">
            </div>

            <div class="form-group">
                <label for="photo">Загрузите ваше фото</label>
                <input  type="file"  class="form-control-file" id="photo" name="photo">
            </div>

            <input class=" btn btn-success" id="submit" type="submit" value="Регистрация">
            <!-- <button type="button" class="btn btn-success">Регистрация</button> -->
        </form>

        <h2 class="text-center mb-4">Список пользователей</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Имя</th>
                    <th scope="col">Фамилия</th>
                    <th scope="col">Отчество</th>
                    <th scope="col">Дата рожд</th>
                    <th scope="col">Иин</th>
                    <th scope="col">Номер тел</th>
                    <th scope="col">Улица</th>
                    <th scope="col">Дом</th>
                    <th scope="col">Фото</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>

            <tbody id="tbody">
        
            </tbody>

        </table>


    </div> <!-- container -->


    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"></script>
    <script src="js/jquery.maskedinput.min.js"></script>
    <script src="js/query.js"></script>
    <script src="js/main.js"></script>
</body>

</html>