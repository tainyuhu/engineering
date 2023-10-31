from django.db import models

# 施工項目
class Breeding_TaskModel(models.Model):
    created_at = models.DateTimeField("建立時間", auto_now_add=True)
    updated_at = models.DateTimeField("最後更新時間", auto_now=True)


    class Meta:
        db_table = 'breeding_tasks'
        ordering = ('id',)


# 工程狀態列表
# https://stackoverflow.com/questions/1117564/set-django-integerfield-by-choices-name
class StatusStatement(models.IntegerChoices):
    NOTSTART = 0, '未開工'
    COMPLETED = 1, '完工'
    PROGRESS = 2, '施工中'
    STOP = 3, '停工'


# 工程項目
class Breeding_ProjectModel(models.Model):
    # id = models.CharField('編號', max_length=50, primary_key=True)
    project_code = models.CharField("工程代號", max_length=255)
    project_name = models.CharField("工程名稱", max_length=255)
    project_location = models.CharField("工程地點", max_length=255)
    project_area = models.CharField("工程區域", max_length=255)
    project_status = models.IntegerField("工程狀態", default=StatusStatement.NOTSTART, choices=StatusStatement.choices)

    estimated_start_date = models.DateField('預計開始時間', null=True)
    estimated_completion_date = models.DateField('預計結束時間', null=True)
    actual_start_date = models.DateField('實際開始時間', null=True)
    actual_completion_date = models.DateField('實際結束時間', null=True)

    created_at = models.DateTimeField("建立時間", auto_now_add=True)
    updated_at = models.DateTimeField("最後更新時間", auto_now=True)

    # 權重識別碼 
    tasks_id = models.ForeignKey( 
        Breeding_TaskModel, 
        related_name="projects", # 反向關聯
        db_column="tasks_id", # 欄位名稱(要去捕捉[source])
        on_delete=models.CASCADE 
    )

    class Meta:
        db_table = 'breeding_project'
        ordering = ('id',)


    
# Breeding 分項權重
class Breeding_SubItemWeightModel(models.Model):
    # id = models.CharField('編號', max_length=50, primary_key=True)
    subitem_name = models.CharField("分項工程", max_length=255)
    subitem_weight = models.FloatField("分向權重", null=True)
    created_at = models.DateTimeField("建立時間", auto_now_add=True)
    updated_at = models.DateTimeField("最後更新時間", auto_now=True)

    # 權重識別碼
    tasks_id = models.ForeignKey( 
        Breeding_TaskModel, 
        related_name="sub_items", # 反向關聯
        db_column="tasks_id", # 欄位名稱(要去捕捉[source])
        on_delete=models.CASCADE 
    )

    class Meta:
        db_table = 'breeding_subitem_weight'
        ordering = ('id',)

    
# Breeding 細項權重
class Breeding_DetailedItemWeightModel(models.Model):
    # id = models.CharField('編號', max_length=50, primary_key=True)
    detailed_name = models.CharField("細項工程", max_length=255)
    detailed_weight = models.FloatField("細項權重", null=True)

    created_at = models.DateTimeField("建立時間", auto_now_add=True)
    updated_at = models.DateTimeField("最後更新時間", auto_now=True)

    # 權重識別碼
    subitem_id = models.ForeignKey( 
        Breeding_TaskModel, 
        related_name="detailed_items", # 反向關聯
        db_column="subitem_id", # 欄位名稱(要去捕捉[source])
        on_delete=models.CASCADE 
    )

    class Meta:
        db_table = 'breeding_detaileditem_weight'
        ordering = ('id',)



    
# Breeding 預期進度
class Breeding_ExpectedProgressModel(models.Model):
    # id = models.CharField('編號', max_length=50, primary_key=True)
    # 工程識別碼
    project_id = models.ForeignKey( 
        Breeding_ProjectModel, 
        related_name="expected_progress", # 反向關聯
        db_column="project_id", # 欄位名稱(要去捕捉[source])
        on_delete=models.CASCADE 
    )

    # 分項識別碼
    subitem_id = models.ForeignKey( 
        Breeding_SubItemWeightModel, 
        related_name="expected_progress", # 反向關聯
        db_column="subitem_id", # 欄位名稱(要去捕捉[source])
        on_delete=models.CASCADE 
    )

    # 細項識別碼 
    detailed_id = models.ForeignKey( 
        Breeding_DetailedItemWeightModel, 
        related_name="expected_progress", # 反向關聯
        db_column="detailed_id", # 欄位名稱(要去捕捉[source])
        on_delete=models.CASCADE 
    )
    

    estimated_start_date = models.DateField('預計開始時間', null=True)
    estimated_completion_date = models.DateField('預計結束時間', null=True)
    actual_start_date = models.DateField('實際開始時間', null=True)
    actual_completion_date = models.DateField('實際結束時間', null=True)

    created_at = models.DateTimeField("建立時間", auto_now_add=True)
    updated_at = models.DateTimeField("最後更新時間", auto_now=True)


    class Meta:
        db_table = 'breeding_expected_progress'
        ordering = ('id',)

    
# Breeding 工程進度
class Breeding_ProgressModel(models.Model):
    # id = models.CharField('編號', max_length=50, primary_key=True)
    # 預期識別碼 
    expected_id = models.ForeignKey( 
        Breeding_ProjectModel, 
        related_name="progress", # 反向關聯
        db_column="expected_id", # 欄位名稱(要去捕捉[source])
        on_delete=models.CASCADE 
    )

    start_date = models.DateField('開始日期', null=True)
    completion_date = models.DateField('結束日期', null=True)

    progress = models.FloatField("進度", null=True)
    personnel = models.CharField("現場監工", max_length=50, null=True)
    cause = models.TextField("未施工原因", null=True)

    created_at = models.DateTimeField("建立時間", auto_now_add=True)
    updated_at = models.DateTimeField("最後更新時間", auto_now=True)


    class Meta:
        db_table = 'breeding_progress'
        ordering = ('id',)