# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-01-24 20:29
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import tinymce.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='BaseSingletonPage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('logo', models.ImageField(blank=True, default='', upload_to='')),
                ('active', models.BooleanField(default=True)),
                ('title', models.CharField(blank=True, default='', max_length=255)),
                ('slug', models.CharField(blank=True, default='', max_length=255)),
                ('css', models.CharField(blank=True, default='', max_length=255)),
                ('template', models.CharField(blank=True, default='', max_length=255)),
                ('js', models.CharField(blank=True, default='', max_length=255)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('x', models.FloatField()),
                ('y', models.FloatField()),
            ],
        ),
        migrations.CreateModel(
            name='ImageItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='')),
                ('order', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Shop',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('address', models.CharField(max_length=255)),
                ('x', models.FloatField()),
                ('y', models.FloatField()),
            ],
        ),
        migrations.CreateModel(
            name='TextDoubleImageItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='')),
                ('text', tinymce.models.HTMLField()),
                ('order', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='TextImageItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='')),
                ('text', tinymce.models.HTMLField()),
                ('order', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='TextItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('order', models.IntegerField()),
                ('caption', tinymce.models.HTMLField()),
                ('text', tinymce.models.HTMLField()),
            ],
        ),
        migrations.CreateModel(
            name='DocsPage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('items', models.ManyToManyField(to='base.ImageItem')),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
        migrations.CreateModel(
            name='FactsPage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('free_delivery_button', models.ImageField(upload_to='')),
                ('no_delivery_button', models.ImageField(upload_to='')),
                ('items', models.ManyToManyField(to='base.TextImageItem')),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
        migrations.CreateModel(
            name='FaqPage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('items', models.ManyToManyField(to='base.TextItem')),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
        migrations.CreateModel(
            name='ForPage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('items', models.ManyToManyField(to='base.ImageItem')),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
        migrations.CreateModel(
            name='GreenPage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('caption', tinymce.models.HTMLField()),
                ('free_delivery_button', models.ImageField(upload_to='')),
                ('no_delivery_button', models.ImageField(upload_to='')),
                ('items', models.ManyToManyField(to='base.TextImageItem')),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
        migrations.CreateModel(
            name='HowPage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('caption', tinymce.models.HTMLField()),
                ('items', models.ManyToManyField(to='base.TextDoubleImageItem')),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
        migrations.CreateModel(
            name='MintPage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('left_image', models.ImageField(upload_to='')),
                ('right_image', models.ImageField(upload_to='')),
                ('caption', tinymce.models.HTMLField()),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
        migrations.CreateModel(
            name='TopPage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('backgound', models.ImageField(blank=True, default='', upload_to='')),
                ('image', models.ImageField(blank=True, default='', upload_to='')),
                ('text', tinymce.models.HTMLField(blank=True, default='')),
                ('banner', models.ImageField(blank=True, default='', upload_to='')),
                ('free_delivery_button', models.ImageField(blank=True, default='', upload_to='')),
                ('no_delivery_button', models.ImageField(blank=True, default='', upload_to='')),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
        migrations.CreateModel(
            name='WhyPage',
            fields=[
                ('basesingletonpage_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='base.BaseSingletonPage')),
                ('items', models.ManyToManyField(to='base.TextImageItem')),
            ],
            options={
                'abstract': False,
            },
            bases=('base.basesingletonpage',),
        ),
    ]
