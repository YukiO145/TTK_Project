from django.db import models


class New(models.Model):
    title = models.CharField('Название', max_length=255)
    text = models.TextField('Описание', max_length=7000)
    photo = models.ImageField(
        'Фото', null=True, blank=True, upload_to="images/")
    pdate = models.DateField('Дата публикации')

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = ('Новость')
        verbose_name_plural = ('Новости')


class RType(models.Model):
    title = models.CharField('Название', max_length=255)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = ('Тип тарифа')
        verbose_name_plural = ('Типы тарифов')


class Rate(models.Model):
    rtype = models.ForeignKey(RType, verbose_name='Тип тарифа', max_length=255, on_delete=models.DO_NOTHING)
    rtitle = models.CharField('Название', max_length=255)
    speed = models.IntegerField('Скорость')
    tv = models.IntegerField('Количество каналов')
    desc = models.TextField('Описание', max_length=7000)
    price = models.IntegerField('Цена за месяц')

    def __str__(self):
        return self.rtitle

    class Meta:
        verbose_name = ('Тариф')
        verbose_name_plural = ('Тарифы')



class Order(models.Model):
    phone = models.CharField('Телефон', max_length=20)
    name = models.CharField('Имя', max_length=255)
    ctype = models.CharField('Тип клиента', max_length=255)
    text = models.TextField('Описание', max_length=5000)

    def __str__(self):
        return self.phone +', '+self.name

    class Meta:
        verbose_name = ('Заявка')
        verbose_name_plural = ('Заявки')


class UMessage(models.Model):
    email = models.EmailField('Почта', max_length=300)
    name = models.CharField('Имя', max_length=300, null=True)
    mtext = models.TextField('Сообщение', max_length=5000)

    def __str__(self):
        return self.email

    class Meta:
        verbose_name = ('Сообщение')
        verbose_name_plural = ('Сообщения')
