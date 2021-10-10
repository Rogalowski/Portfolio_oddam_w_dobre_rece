from django.contrib import admin

# Register your models here.
from charity_good_hands_app.models import User, Institution, Category, Donation

admin.site.register(User)
admin.site.register(Institution)
admin.site.register(Category)
admin.site.register(Donation)
