from django.shortcuts import render
ddd
# Create your views here.
from django.views import View


class LandingPageView(View):
    def get(self, request):
        context = {

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
