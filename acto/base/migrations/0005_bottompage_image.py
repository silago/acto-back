# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-02-26 17:15
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0004_auto_20170226_1708'),
    ]

    operations = [
        migrations.AddField(
            model_name='bottompage',
            name='image',
            field=models.ImageField(default='', upload_to=''),
            preserve_default=False,
        ),
    ]