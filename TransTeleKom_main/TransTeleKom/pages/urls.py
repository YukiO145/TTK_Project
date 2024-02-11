from django.urls import path
from pages import views

urlpatterns = [
    path('', views.home, name="home"),
    path('about/', views.about, name='about'),   
    path('news/<mode>', views.news, name='news'),    
    path('house/', views.house, name='house'),
    path('business/', views.business, name='business'),    
    path('contacts', views.contacts, name='contacts'),    
]
