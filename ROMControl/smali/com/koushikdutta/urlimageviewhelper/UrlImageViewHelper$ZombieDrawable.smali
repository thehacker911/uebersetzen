.class Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;
.super Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;
.source "UrlImageViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZombieDrawable"
.end annotation


# instance fields
.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .parameter "url"
    .parameter "drawable"

    .prologue
    .line 489
    invoke-direct {p0, p2}, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 490
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mUrl:Ljava/lang/String;

    .line 492
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$700()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$800()Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$300()Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 501
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 503
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$800()Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$700()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 505
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$300()Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 509
    return-void
.end method
