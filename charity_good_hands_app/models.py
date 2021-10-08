from django.contrib.auth.models import AbstractUser
from django.db import models

# Create your models here.
INSTITUTION = (
    (1, "fundacja"),
    (2, "organizacja pozarządowa"),
    (3, "zbiórka lokalna"),
)


class User(AbstractUser):
    """Stores a single user entry."""
    year_of_birth = models.IntegerField(null=True)


class Category(models.Model):
    name = models.CharField(max_length=64)


class Institution(models.Model):
    name = models.CharField(max_length=64)
    description = models.TextField
    type = models.IntegerField(choices=INSTITUTION)
    categories = models.ManyToManyField(Category)


class Donation(models.Model):
    quantity = models.IntegerField()
    categories = models.ManyToManyField(Category)
    institution = models.ForeignKey(Institution, on_delete=models.CASCADE)
    address = models.CharField(max_length=128)
    phone_number = models.IntegerField()
    zip_code = models.IntegerField()
    pick_up_date = models.DateField(auto_now=True)
    pick_up_time = models.DateTimeField(auto_now=True)
    pick_up_comment = models.TextField
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, related_name='user_profile')

