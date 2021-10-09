# Generated by Django 3.2.8 on 2021-10-08 19:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('charity_good_hands_app', '0002_alter_institution_type'),
    ]

    operations = [
        migrations.AddField(
            model_name='donation',
            name='pick_up_comment',
            field=models.TextField(default=''),
        ),
        migrations.AddField(
            model_name='institution',
            name='description',
            field=models.TextField(default=''),
        ),
        migrations.AlterField(
            model_name='institution',
            name='type',
            field=models.IntegerField(choices=[(1, 'fundacja'), (2, 'organizacja pozarządowa'), (3, 'zbiórka lokalna')]),
        ),
    ]