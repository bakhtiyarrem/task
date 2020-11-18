$(document).ready(function () {
    render_table()
});

function render_table() { //отрисовка таблицы
    $.ajax({
        url: 'vendor/table.php',
        type: 'POST',
        dataType: 'json',
        success(data) {
            $('#tbody td,#tbody th').remove();
            $(data).each(function (index, item) {
                $('#tbody').append(`<tr data-id="${item[0]}">
                    <th scope="row">${item[0]}</th>
                    <td><span>${item[1]}</span><input class="nameTable none"  value='${item[1]}'></td>
                    <td><span>${item[2]}</span><input class="surnameTable none"  value='${item[2]}'></td>
                    <td><span>${item[3]}</span><input class="patronymicTable none"  value='${item[3]}'></td>
                    <td><span>${item[4]}</span><input class="dateBirthTable none"  value='${item[4]}'></td>
                    <td><span>${item[5]}</span><input class="iinTable none"  value='${item[5]}'></td>
                    <td><span>${item[6]}</span><input class="phoneTable none"  value='${item[6]}'></td>
                    <td><span>${item[7]}</span><input class="streetTable none"  value='${item[7]}'></td>
                    <td><span>${item[8]}</span><input class="apartmentTable none"  value='${item[8]}'></td>
                    <td ><img src=${item[9]} alt="photo"></td>
                    <td class="text-primary edit-user" data-id="${item[0]}">Редактировать</td>
                    <td class="text-primary send-update none">Готово</td>
                    <td class="text-danger delete-user"  data-id="${item[0]}">Удалить</td>
                </tr>`);


            });
        }
    });
}

//Получаем photo
let photo = false;

$('input[name="photo"]').change(function (e) {
    photo = e.target.files[0];
});


//РЕГИСТРАЦИЯ ПОЛЬЗОВАТЕЛЯ
$('#submit').click(function (e) {
    e.preventDefault();

    let name = $('input[name=name]').val(),
        surname = $('input[name=surname]').val(),
        patronymic = $('input[name=patronymic]').val(),
        dateBirth = $('input[name=dateBirth]').val(),
        iin = $('input[name=iin]').val(),
        phone = $('input[name=phone]').val(),
        street = $('input[name=street]').val(),
        apartment = $('input[name=apartment]').val()

    let formData = new FormData();
    formData.append('name', name);
    formData.append('surname', surname);
    formData.append('patronymic', patronymic);
    formData.append('dateBirth', dateBirth);
    formData.append('iin', iin);
    formData.append('phone', phone);
    formData.append('street', street);
    formData.append('apartment', apartment);
    formData.append('photo', photo);

    $.ajax({
        url: 'vendor/register.php',
        type: 'POST',
        dataType: 'json',
        processData: false,
        contentType: false,
        cache: false,
        data: formData,
        success(data) {
            if (data.status === true) {

            }
            $('form input[type=text], input[type=tel], input[type=file],  input[type=date]').val('');
            render_table()
        }
    });
});

//Удаление пользователя
$('#tbody').on('click', '.delete-user', function (e) {
    let userId = $(this).attr("data-id")
    console.log(userId);
    $.ajax({
        url: 'vendor/delete-user.php',
        type: 'POST',
        dataType: 'json',
        data: { userId: userId },
        success(data) {
            render_table()
        }
    });

})

//Редактирование пользователя
$('#tbody').on('click', '.edit-user', function (e) {


    let rowrId = $(this).attr("data-id")
    $(`tr[data-id='${rowrId}']`).addClass('edit-table')
    $(`tr[data-id='${rowrId}'] input`).toggleClass('none')
    $(`tr[data-id='${rowrId}'] span`).toggleClass('none')
    $(`tr[data-id='${rowrId}'] .edit-user`).toggleClass('none')
    $(`tr[data-id='${rowrId}'] .send-update`).toggleClass('none')

    $('.send-update').click(function () {
        let name = $('.edit-table .nameTable').val(),
            surname = $('.edit-table .surnameTable').val(),
            patronymic = $('.edit-table .patronymicTable').val(),
            dateBirth = $('.edit-table .dateBirthTable').val(),
            iin = $('.edit-table .iinTable').val(),
            phone = $('.edit-table .phoneTable').val(),
            street = $('.edit-table .streetTable').val(),
            apartment = $('.edit-table .apartmentTable').val()

        let formData = new FormData();
        formData.append('id', rowrId);
        formData.append('name', name);
        formData.append('surname', surname);
        formData.append('patronymic', patronymic);
        formData.append('dateBirth', dateBirth);
        formData.append('iin', iin);
        formData.append('phone', phone);
        formData.append('street', street);
        formData.append('apartment', apartment);

        $(`tr[data-id='${rowrId}']`).removeClass('edit-table')
        $(`tr[data-id='${rowrId}'] input`).toggleClass('none')
        $(`tr[data-id='${rowrId}'] span`).toggleClass('none')
        $(`tr[data-id='${rowrId}'] .edit-user`).toggleClass('none')
        $(`tr[data-id='${rowrId}'] .send-update`).toggleClass('none')

        $.ajax({
            url: 'vendor/edit-user.php',
            type: 'POST',
            dataType: 'json',
            processData: false,
            contentType: false,
            cache: false,
            data: formData,
            success(data) {
                console.log(data);
                rowrId = null;
                render_table()
            }
        });

    })




})

