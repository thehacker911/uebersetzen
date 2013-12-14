.class final Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;
.super Ljava/lang/Object;
.source "UrlImageViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

.field final synthetic val$defaultDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$downloads:Ljava/util/ArrayList;

.field final synthetic val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/ArrayList;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$downloads:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 309
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {v4, v5}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iget-object v3, v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;->result:Landroid/graphics/drawable/Drawable;

    .line 311
    .local v3, usableResult:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    .line 312
    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 313
    :cond_0
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$200()Ljava/util/Hashtable;

    move-result-object v4

    iget-object v5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$300()Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

    move-result-object v4

    iget-object v5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$downloads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 317
    .local v1, iv:Landroid/widget/ImageView;
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$400()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 318
    .local v2, pendingUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$400()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    if-eqz v3, :cond_1

    .line 326
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    if-eqz v4, :cond_1

    .line 329
    iget-object v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$callback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;

    iget-object v5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;

    iget-object v5, v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;->result:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;->val$url:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v1, v5, v6, v7}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;->onLoaded(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto :goto_0

    .line 332
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #pendingUrl:Ljava/lang/String;
    :cond_2
    return-void
.end method
