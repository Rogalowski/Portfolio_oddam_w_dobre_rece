# Generated by Django 3.2.8 on 2021-10-08 14:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('charity_good_hands_app', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='institution',
            name='type',
            field=models.IntegerField(choices=[(1, 'fundacja'), (2, 'organizacja pozarządowa'), (3, 'zbiórka lokalna'), (4, 'domyślnie fundacja')]),
        ),
    ]