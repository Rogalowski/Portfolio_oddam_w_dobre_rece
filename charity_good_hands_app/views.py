from django.shortcuts import render

# Create your views here.
from django.views import View


class HomeView(View):
    def get(self, request):
        context = {

        }
        return render(request, 'index.html', context)
