# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-01-24 22:31
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0002_auto_20170124_2224'),
    ]

    operations = [
        migrations.CreateModel(
            name='OrangePage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('items', models.ManyToManyField(to='base.ImageItem')),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
    ]
