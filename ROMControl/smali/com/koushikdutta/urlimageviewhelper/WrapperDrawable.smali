.class Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WrapperDrawable.java"


# instance fields
.field mDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 16
    iget-object v0, p1, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v0}, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 17
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 32
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 42
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/WrapperDrawable;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 37
    return-void
.end method
