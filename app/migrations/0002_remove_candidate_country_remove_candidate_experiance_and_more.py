# Generated by Django 4.1.7 on 2023-04-18 09:25

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='candidate',
            name='country',
        ),
        migrations.RemoveField(
            model_name='candidate',
            name='experiance',
        ),
        migrations.RemoveField(
            model_name='candidate',
            name='highestedu',
        ),
        migrations.RemoveField(
            model_name='candidate',
            name='job_type',
        ),
        migrations.RemoveField(
            model_name='candidate',
            name='jobcategory',
        ),
        migrations.RemoveField(
            model_name='candidate',
            name='jobdesc',
        ),
        migrations.RemoveField(
            model_name='candidate',
            name='max_salary',
        ),
        migrations.RemoveField(
            model_name='candidate',
            name='min_salary',
        ),
        migrations.RemoveField(
            model_name='candidate',
            name='profile_pic',
        ),
        migrations.RemoveField(
            model_name='candidate',
            name='shift',
        ),
        migrations.RemoveField(
            model_name='candidate',
            name='website',
        ),
    ]