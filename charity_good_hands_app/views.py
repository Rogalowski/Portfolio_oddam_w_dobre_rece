import random

from random import randint

from django.contrib.auth import logout
from django.contrib.auth.hashers import make_password
from django.core.paginator import Paginator
from django.db.models import Sum
from django.shortcuts import render, redirect

# Create your views here.
from django.views import View

from charity_good_hands_app.models import Donation, Institution, User


class LandingPageView(View):
    def get(self, request):

        bag_quantity = Donation.objects.all().aggregate(Sum('quantity'))['quantity__sum']
        institution_quantity = Donation.objects.all().annotate(Sum('institution'))

        institution = Institution.objects.filter(type=1)
        organization = Institution.objects.filter(type=2)
        local_donator = Institution.objects.filter(type=3)

        list_institution = []
        list_organization = []
        list_local_donator = []

        '''Can we get next page without reloading/switch page (without loading new data from database) ?'''
        while len(list_institution) != len(institution):
            r = random.choice(institution)
            if r not in list_institution:
                list_institution.append(r)

        paginator = Paginator(institution, 4)
        page = request.GET.get('page')
        list_institution_pages = paginator.get_page(page)


        while len(list_organization) != len(organization):
            r = random.choice(organization)
            if r not in list_organization:
                list_organization.append(r)

        paginator = Paginator(organization, 4)
        page = request.GET.get('page')
        list_organization_pages = paginator.get_page(page)

        while len(list_local_donator) != len(local_donator):
            r = random.choice(local_donator)
            if r not in list_local_donator:
                list_local_donator.append(r)

        paginator = Paginator(local_donator, 4)
        page = request.GET.get('page')
        list_local_donator_pages = paginator.get_page(page)

        context = {
            'bag_quantity': bag_quantity,
            'institution_quantity': institution_quantity,
            'list_institution_pages': list_institution_pages,
            'list_organization_pages': list_organization_pages,
            'list_local_donator_pages': list_local_donator_pages,
        }
        return render(request, 'index.html', context)


class AddDonationView(View):
    def get(self, request):
        context = {

        }
        return render(request, 'form.html', context)


class LoginView(View):
    def get(self, request):
        context = {

        }
        return render(request, 'login.html', context)


class LogoutView(View):
    def get(self, request):
            logout(request)
            # return redirect('/')
            return redirect('home_index')


class RegisterView(View):
    def get(self, request):
        context = {

        }
        return render(request, 'register.html', context)
    def post(self, request, *args, **kwargs):
        name = request.POST.get('name')
        surname = request.POST.get('surname')
        email = request.POST.get('email')
        password = request.POST.get('password')
        password2 = request.POST.get('password2')

        if password == password2:
            password2 = make_password(password)
        else:
            wrong_pass = '''PASSWORD NOT THE SAME, PLEASE TRY AGAIN!'''
            context = {
                'wrong_pass': wrong_pass
            }
            return render(request, 'register.html', context)

        register_user = User.objects.create(
            username=email,
            first_name=name,
            last_name=surname,
            email=email,
            password=password2
        )
        print('ZAPISANO ', email)
        return redirect('login_view')
