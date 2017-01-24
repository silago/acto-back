from django.db import models
from solo.models import SingletonModel

# django singleton
class BaseSingletonPage(SingletonModel):
    active = models.BoolField()
    title  = models.CharField()
    slug   = models.CharField()
    css    = models.CharField()
    template = models.CharField()
    js     = models.CharField()

class TopPage(BaseSingletonPage):
    #items = models.ManyToManyField()
    background
    image
    text
    banner
    free_delivery_button =
    no_delivery_button =

class FaqPage(BaseSingletonPage):
    items = ManyToManyField(ImageItem)


class CyanPage(BaseSingletonPage):
    leftImage
    rightImage
    caption


class FactsPage(BaseSingletonPage):
    items = models.ManyToManyField(TextImageItem)
    free_delivery_button =
    no_delivery_button =

class CyanPage(BaseSingletonPage):
    items = models.ManyToManyField(TextImageItem)

class GreenPage(BaseSingletonPage):
    items = models.ManyToManyField(TextImageItem)

class HowPage(BaseSingletonPage):
    caption
    logo
    items = models.ManyToManyField(TextDoubleImageItem)

class PageFaq():
    caption
    items = models.ManyToManyField(TextImageItem)

class TextItem(models.Model):
    order
    caption
    text

class ImageItem(models.Model):
    image =
    order =

class TextDoubleImageItem(models.Model):
    image =
    text =
    order =

class TextImageItem(models.Model):
    image =
    text =
    order =
# Create your models here.
