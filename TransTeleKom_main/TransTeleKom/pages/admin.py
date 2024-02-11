from django.contrib import admin

from pages.models import New, Order, RType, Rate, UMessage

@admin.register(New)
class NewAdmin(admin.ModelAdmin):
    list_display = ('title', 'photo',  'pdate')
    search_fields = ('title', )


@admin.register(RType)
class RTypeAdmin(admin.ModelAdmin):
    list_display = ('title', )
    search_fields = ('title', )


@admin.register(Rate)
class RateAdmin(admin.ModelAdmin):
    list_display = ('rtype', 'rtitle', 'speed',  'tv', 'desc', 'price')
    search_fields = ('rtitle', 'speed')



@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    list_display = ('phone', 'name', 'ctype',  'text')
    search_fields = ('phone', )
    list_filter = ('ctype',)


@admin.register(UMessage)
class UMessageAdmin(admin.ModelAdmin):
    list_display = ('email', 'name', 'mtext')
    search_fields = ('mtext', 'email')
