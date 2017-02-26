from django.db import models
from solo.models import SingletonModel
from tinymce.models import HTMLField
from django.conf import settings
import os

class TemplateItem(models.Model):
    name  = models.CharField(max_length=255,blank=True, null=True, default="")
    template  = models.FileField()
    def __str__(this):
        return this.name
#base blocks
class TripleTextItem(models.Model):
    text    = HTMLField()
    name  = models.CharField(max_length=255,blank=True, null=True, default="")
    subtext  = models.CharField(max_length=255,blank=True, null=True, default="")
    def __str__(this):
        return this.name+ ' ' + this.text

class TextItem(models.Model):
    order   = models.IntegerField()
    caption = HTMLField()
    text    = HTMLField()

class ImageItem(models.Model):
    image  = models.ImageField()
    order  = models.IntegerField()
    def __str__(this):
        return this.image.url


class DoubleTextDoubleImageItem(models.Model):
    image  = models.ImageField()
    subimage  = models.ImageField()
    caption  = models.CharField(max_length=255,blank=True, null=True, default="")
    text  = models.CharField(max_length=255,blank=True, null=True, default="")
    order = models.IntegerField()
    def __str__(this):
        return this.image.url + ' ' + this.text

class TextDoubleImageItem(models.Model):
    image  = models.ImageField()
    subimage  = models.ImageField()
    text     = HTMLField()
    order = models.IntegerField()
    def __str__(this):
        return this.image.url + ' ' + this.text

class TextImageItem(models.Model):
    image  = models.ImageField()
    text     = HTMLField()
    order  = models.IntegerField()
    def __str__(this):
        return this.image.url
# Create your models here.


# django singleton

class BaseSingletonModel(SingletonModel):
    def TemplatesList():
        tdir = settings.TEMPLATES[0]['DIRS'][0]
        result =  ((i,i) for i in os.listdir(tdir))
        return result
    logo   = models.ImageField(blank=True, null=True,default='')
    active = models.BooleanField(default=True)
    title  = models.CharField(max_length=255,blank=True, null=True, default="")
    slug   = models.CharField(max_length=255,blank=True, null=True, default="")
    template = models.CharField(max_length=255,blank=True, null=True,default="",choices = TemplatesList())
    order   = models.IntegerField(default=1)

    class Meta:
        abstract = True


class TopPage(BaseSingletonModel):
    backgound = models.ImageField(blank=True, null=True,default='')
    image = models.ImageField(blank=True, null=True,default='')
    text  = HTMLField(blank=True, null=True,default='')
    banner= models.ImageField(blank=True, null=True,default='')
    free_delivery_button =  models.ImageField(blank=True, null=True,default='')
    no_delivery_button   =  models.ImageField(blank=True, null=True,default='')

class ForPage(BaseSingletonModel):
    items = models.ManyToManyField(ImageItem)

class OrangePage(BaseSingletonModel):
    items = models.ManyToManyField(ImageItem)

class YellowPage(BaseSingletonModel):
    #text  = HTMLField(blank=True, null=True,default='')
    items = models.ManyToManyField(TripleTextItem)


class MintPage(BaseSingletonModel):
    left_image = models.ImageField()
    right_image = models.ImageField()
    caption = HTMLField()


class FactsPage(BaseSingletonModel):
    items = models.ManyToManyField(TextImageItem)


class GreenPage(BaseSingletonModel):
    caption = HTMLField()
    items = models.ManyToManyField(TextImageItem)
    free_delivery_button = models.ImageField()
    no_delivery_button  = models.ImageField()

class WhyPage(BaseSingletonModel):
    items = models.ManyToManyField(TextImageItem)


class HowPage(BaseSingletonModel):
    caption = HTMLField()
    items = models.ManyToManyField(DoubleTextDoubleImageItem)

class FaqPage(BaseSingletonModel):
    items = models.ManyToManyField(TextItem)

class DocsPage(BaseSingletonModel):
    items = models.ManyToManyField(ImageItem)

class FooterPage(BaseSingletonModel):
    items = models.ManyToManyField(TextImageItem)
    link = models.CharField(max_length=255)
    image = models.ImageField()
    pass


class BottomPage(BaseSingletonModel):
    #map page
    free_delivery_button = models.ImageField()
    no_delivery_button   = models.ImageField()
    image   = models.ImageField()
    #def getCities():
    #    City.get.all()
    #    pass


class City(models.Model):
    name = models.CharField(max_length=255)
    active = models.BooleanField(default=False)
    x    = models.FloatField()
    y    = models.FloatField()

class Shop(models.Model):
    name = models.CharField(max_length=255)
    x    = models.FloatField()
    y    = models.FloatField()

