import random

from random import randint

from django.db.models import Sum
from django.shortcuts import render

# Create your views here.
from django.views import View

from charity_good_hands_app.models import Donation, Institution, Category


class LandingPageView(View):
    def get(self, request):

        bag_quantity = Donation.objects.all().aggregate(Sum('quantity'))['quantity__sum']
        institution_quantity = Donation.objects.all().annotate(Sum('institution'))


        #
        # list_random_num = [0]
        # while 0 in list_random_num:
        #     list_random_num = random.sample(range(6), 3)

        institution = Institution.objects.filter(type=1)


        list_institution = []
        while len(list_institution) != 3:
            r = random.choice(institution)
            if r not in list_institution:
                list_institution.append(r)


        print(list_institution)
        # random_list = random.choices(random1, k=3)
        # random_list = random.choices(random1, k=4)



        institution1 = list_institution[-1]
        institution2 = list_institution[-2]
        institution3 = list_institution[-3]
        # institution3 = random.choice(random1)
        # institution2 = Institution.objects.get(id=list_random_num[-2])
        # institution3 = Institution.objects.get(id=list_random_num[-3])

        # institution3 = Institution.objects.get(id=d.index(1))
        # institution3 = Institution.objects.get(id=randint(1, last_inst))
        # institution = Institution.objects.all()[randint(0, last_inst - 1)]



        context = {
            'bag_quantity': bag_quantity,
            'institution_quantity': institution_quantity,
            'institution1': institution1,
            'institution2': institution2,
            'institution3': institution3,



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



class RegisterView(View):
    def get(self, request):
        context = {

        }
        return render(request, 'register.html', context)
