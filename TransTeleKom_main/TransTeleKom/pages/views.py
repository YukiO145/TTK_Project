from django.http import HttpResponseRedirect
from django.shortcuts import render
from pages.forms import BForm, MessageForm, OrderForm
from django.contrib import messages
from pages.models import New, Rate


def home(request):
    return render(request, 'pages/home.html', {})


def about(request):
    return render(request, 'pages/about.html', {})


def news(request, mode):
    news = []
    if mode == 'all':
        news = New.objects.all().order_by('-pdate')
    else:
        news = New.objects.all().order_by('-pdate')[:3]
    return render(request, 'pages/news.html', {'news': news})


def house(request):
    rates = Rate.objects.filter(rtype__title='домашний')
    submitted = False
    if request.method == "POST":
        form = OrderForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(
                request, ("Заявка отправлена. В ближайшее время с Вами свяжется менеджер."))
            return render(request, 'pages/house.html', {'rates': rates, 'form': form, 'submitted': 'True'})
    else:
        form = OrderForm
        if 'submitted' in request.GET:
            submitted = True
        return render(request, 'pages/house.html', {'rates': rates, 'form': form, 'submitted': submitted})

def business(request):
    rates = Rate.objects.filter(rtype__title='бизнес')
    submitted = False
    if request.method == "POST":
        form = BForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(
                request, ("Заявка отправлена. В ближайшее время с Вами свяжется менеджер."))
            return render(request, 'pages/buisness.html', {'rates': rates, 'form': form, 'submitted': 'True'})
    else:
        form = BForm
        if 'submitted' in request.GET:
            submitted = True
        return render(request, 'pages/buisness.html', {'rates': rates, 'form': form, 'submitted': submitted})
    

def contacts(request):    
    submitted = False
    if request.method == "POST":
        form = MessageForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/contacts?submitted=True')
    else:
        form = MessageForm
        if 'submitted' in request.GET:
            submitted = True
        return render(request, 'pages/contacts.html', {'form': form, 'submitted': submitted})