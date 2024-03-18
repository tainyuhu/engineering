from django.db import models

class BrowseProgressPermission(models.Model):
    class Meta:
        managed = False
        permissions = (
            ("view_browse_progress", "Can view Browse Progress"),
        )
