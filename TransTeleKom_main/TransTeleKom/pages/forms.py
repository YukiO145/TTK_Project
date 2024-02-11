from django import forms
from django.forms import ModelForm
from pages.models import Order, UMessage


class OrderForm(ModelForm):
    class Meta:
        model = Order
        fields = ('phone', 'name', 'ctype', 'text')
        labels = {
            'ctype': '',
            'text': 'Заявка'
        }

        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control'}),
            'text': forms.Textarea(attrs={'class': 'form-control'}),
            'ctype': forms.TextInput(attrs={'hidden': '', 'value': 'ФЛ'}),
            'phone': forms.TextInput(attrs={'class': 'form-control'}),
        }


class BForm(ModelForm):
    class Meta:
        model = Order
        fields = ('phone', 'name', 'ctype', 'text')
        labels = {
            'ctype': '',
            'text': 'Заявка'
        }

        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control'}),
            'text': forms.Textarea(attrs={'class': 'form-control'}),
            'ctype': forms.TextInput(attrs={'hidden': '', 'value': 'ЮЛ'}),
            'phone': forms.TextInput(attrs={'class': 'form-control'}),
        }


class MessageForm(ModelForm):
    class Meta:
        model = UMessage
        fields = ('email', 'name', 'mtext')

        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control'}),
            'mtext': forms.Textarea(attrs={'class': 'form-control'}),
            'email': forms.EmailInput(attrs={'class': 'form-control'}),            
        }