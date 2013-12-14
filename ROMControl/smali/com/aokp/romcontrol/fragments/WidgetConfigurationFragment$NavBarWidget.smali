.class public Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;
.super Ljava/lang/Object;
.source "WidgetConfigurationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavBarWidget"
.end annotation


# instance fields
.field mHeight:I

.field mPreview:Landroid/graphics/drawable/Drawable;

.field mTitle:Ljava/lang/String;

.field mView:Landroid/widget/ImageView;

.field mWidgetId:I

.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V
    .locals 7
    .parameter
    .parameter "appWidgetId"

    .prologue
    const v6, 0x7f020047

    const/4 v5, 0x0

    .line 381
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mView:Landroid/widget/ImageView;

    .line 378
    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;

    .line 382
    iput p2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mWidgetId:I

    .line 383
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 384
    iget-object v2, p1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;

    .line 385
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    iput v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mHeight:I

    .line 386
    iget-object v2, p1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mTitle:Ljava/lang/String;

    .line 409
    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mView:Landroid/widget/ImageView;

    .line 410
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    return-void

    .line 388
    :cond_1
    iget-object v2, p1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mWidgetId:I

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 389
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v1, :cond_2

    .line 390
    iget-object v2, p1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;

    .line 391
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    iput v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mHeight:I

    goto :goto_0

    .line 393
    :cond_2
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mHeight:I

    .line 394
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mTitle:Ljava/lang/String;

    .line 395
    iget-object v2, p1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;

    .line 398
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 400
    :try_start_0
    iget-object v2, p1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mHeight:I

    return v0
.end method

.method public getView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mView:Landroid/widget/ImageView;

    .line 416
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->getWidgetPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getWidgetId()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mWidgetId:I

    return v0
.end method

.method public getWidgetPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mPreview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
