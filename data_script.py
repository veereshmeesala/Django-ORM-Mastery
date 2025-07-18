
# insert some data for Catgegory
from app.inventory.models import Category
from django.utils.text import slugify

category = Category(
    name='Electronics',
    slug=slugify('Electronics'),
    is_active=True,
    level=0
)
category.save()
# check if the category is saved
print(category)  # Should print the category object with its details
# or
Category.objects.all()
