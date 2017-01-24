# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-01-24 22:35
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import tinymce.models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0003_orangepage'),
    ]

    operations = [
        migrations.CreateModel(
            name='TripleTextItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('text', tinymce.models.HTMLField()),
                ('name', models.CharField(blank=True, default='', max_length=255)),
                ('city', models.CharField(blank=True, default='', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='YellowPage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('items', models.ManyToManyField(to='base.TripleTextItem')),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
    ]