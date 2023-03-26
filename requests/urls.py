# requests/urls.py
from django.urls import path

from . import views

urlpatterns = [
    path('statuses/', views.statusesIndex, name='statusesIndex'),
    path('statuses/add/', views.statusesAdd, name='statusesAdd'),
    path('statuses/edit/<int:id>/', views.statusesEdit, name='statusesEdit'),
    path('statuses/delete/<int:id>/', views.statusesDelete, name='statusesDelete'),


    path('buildings/', views.buildingsIndex, name='buildingsIndex'),
    path('buildings/add/', views.buildingsAdd, name='buildingsAdd'),
    path('buildings/edit/<int:id>/', views.buildingsEdit, name='buildingsEdit'),
    path('buildings/delete/<int:id>/', views.buildingsDelete, name='buildingsDelete'),

    path('devices/', views.devicesIndex, name='devicesIndex'),
    path('devices/add/', views.devicesAdd, name='devicesAdd'),
    path('devices/edit/<int:id>/', views.devicesEdit, name='devicesEdit'),
    path('devices/delete/<int:id>/', views.devicesDelete, name='devicesDelete'),

    path('brands/', views.brandsIndex, name='brandsIndex'),
    path('brands/add/', views.brandsAdd, name='brandsAdd'),
    path('brands/edit/<int:id>/', views.brandsEdit, name='brandsEdit'),
    path('brands/delete/<int:id>/', views.brandsDelete, name='brandsDelete'),

    path('departments/', views.departmentsIndex, name='departmentsIndex'),
    path('departments/add/', views.departmentsAdd, name='departmentsAdd'),
    path('departments/edit/<int:id>/', views.departmentsEdit, name='departmentsEdit'),
    path('departments/delete/<int:id>/', views.departmentsDelete, name='departmentsDelete'),

    path('companies/', views.companiesIndex, name='companiesIndex'),
    path('companies/add/', views.companiesAdd, name='companiesAdd'),
    path('companies/edit/<int:id>/', views.companiesEdit, name='companiesEdit'),
    path('companies/delete/<int:id>/', views.companiesDelete, name='companiesDelete'),
    path('technicians/', views.techniciansIndex, name='techniciansIndex'),
    path('technicians/add/', views.techniciansAdd, name='techniciansAdd'),
    path('technicians/edit/<int:id>/', views.techniciansEdit, name='techniciansEdit'),
    path('technicians/delete/<int:id>/', views.techniciansDelete, name='techniciansDelete'),
    path('', views.homePage, name='homePage'),
    path('requests/requests/', views.requestsIndex, name='requestsIndex'),
    #path('requests/toners/', views.requestsToners, name='requestsToners'),
    path('requests/search/', views.requestsSearch, name='requestsSearch'),
    #path('requests/tonerssearch/', views.tonersSearch, name='tonersSearch'),
    #path('requests/tonersedit/<int:id>/', views.tonersEdit, name='tonersEdit'),
    path('requests/add/', views.requestsAdd, name='requestsAdd'),
    path('requests/edit/<int:id>/', views.requestsEdit, name='requestsEdit'),
    path('requests/view/<int:id>/', views.requestsView, name='requestsView'),
    path('requests/export/<slug:ids>/', views.requestsExport, name='requestsExport'),
    path('requests/delete/<int:id>/', views.requestsDelete, name='requestsDelete'),



    path('printers/', views.printersIndex, name='printersIndex'),
    path('printers/search/', views.printersSearch, name='printersSearch'),
    path('printers/add/', views.printersAdd, name='printersAdd'),
    path('printers/edit/<int:id>/', views.printersEdit, name='printersEdit'),
    path('printers/view/<int:id>/', views.printersView, name='printersView'),
    path('printers/export/<slug:ids>/', views.printersExport, name='printersExport'),
    path('printers/delete/<int:id>/', views.printersDelete, name='printersDelete'),





    path('users/', views.usersIndex, name='usersIndex'),
    path('users/add/', views.usersAdd, name='usersAdd'),
    path('users/edit/<int:id>/', views.usersEdit, name='usersEdit'),
    path('users/view/<int:id>/', views.usersView, name='usersView'),
    path('users/delete/<int:id>/', views.usersDelete, name='usersDelete'),
    path('users/changepassword/', views.changePassword, name='changePassword'),


    path('users/adminchangepassword/<int:id>/', views.adminChangePassword, name='adminChangePassword'),

    path('groups/add/', views.groupsAdd, name='groupsAdd'),
    path('groups/edit/<int:id>/', views.groupsEdit, name='groupsEdit'),
    path('groups/', views.groupsIndex, name='groupsIndex'),
    path('groups/view/<int:id>/', views.groupsView, name='groupsView'),
    path('groups/delete/<int:id>/', views.groupsDelete, name='groupsDelete'),
]

