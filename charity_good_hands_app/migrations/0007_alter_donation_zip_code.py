# Generated by Django 3.2.8 on 2021-10-30 13:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('charity_good_hands_app', '0006_user_is_email_verified'),
    ]

    operations = [
        migrations.AlterField(
            model_name='donation',
            name='zip_code',
            field=models.CharField(max_length=128),
        ),
    ]
