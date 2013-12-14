.class public Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;
.super Lcom/koushikdutta/urlimageviewhelper/LruCache;
.source "UrlLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/urlimageviewhelper/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "maxSize"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/LruCache;-><init>(I)V

    .line 9
    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;->sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 13
    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 15
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 18
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
