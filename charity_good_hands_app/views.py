from django.db.models import Sum
from django.shortcuts import render

# Create your views here.
from django.views import View

from charity_good_hands_app.models import Donation


class LandingPageView(View):
    def get(self, request):
        bag_quantity = Donation.objects.all().aggregate(Sum('quantity'))['quantity__sum']
        institution_quantity = Donation.objects.all().annotate(Sum('institution'))

        context = {
            'bag_quantity': bag_quantity,
            'institution_quantity': institution_quantity,
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
