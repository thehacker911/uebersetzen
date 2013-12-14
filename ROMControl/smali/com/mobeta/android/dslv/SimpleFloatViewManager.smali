.class public Lcom/mobeta/android/dslv/SimpleFloatViewManager;
.super Ljava/lang/Object;
.source "SimpleFloatViewManager.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;


# instance fields
.field private mFloatBGColor:I

.field private mFloatBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field protected mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .parameter "lv"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/high16 v0, -0x100

    iput v0, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBGColor:I

    .line 45
    iput-object p1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    .line 46
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 60
    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 66
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 73
    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 75
    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBGColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 79
    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 80
    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 2
    .parameter "floatView"

    .prologue
    const/4 v1, 0x0

    .line 99
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    iput-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 103
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .parameter "floatView"
    .parameter "position"
    .parameter "touch"

    .prologue
    .line 91
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 49
    iput p1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBGColor:I

    .line 50
    return-void
.end method
