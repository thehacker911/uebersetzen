.class Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;
.super Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAnimator"
.end annotation


# instance fields
.field private mFirstChildHeight:I

.field private mFirstPos:I

.field private mFirstStartBlank:F

.field private mSecondChildHeight:I

.field private mSecondPos:I

.field private mSecondStartBlank:F

.field private srcPos:I

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .locals 1
    .parameter
    .parameter "smoothness"
    .parameter "duration"

    .prologue
    const/4 v0, -0x1

    .line 1220
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 1221
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    .line 1213
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1214
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1222
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1226
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1227
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1228
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1300(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    .line 1229
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    .line 1230
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$900(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->srcPos:I

    .line 1231
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x1

    #setter for: Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I
    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$102(Lcom/mobeta/android/dslv/DragSortListView;I)I

    .line 1232
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #calls: Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1500(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 1233
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #calls: Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem()V
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1700(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 1271
    return-void
.end method

.method public onUpdate(FF)V
    .locals 10
    .parameter "frac"
    .parameter "smoothFrac"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1237
    const/high16 v5, 0x3f80

    sub-float v1, v5, p2

    .line 1239
    .local v1, f:F
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1240
    .local v2, firstVis:I
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1243
    .local v3, item:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1244
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    if-ne v5, v7, :cond_0

    .line 1245
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    #calls: Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I
    invoke-static {v5, v6, v3, v8}, Lcom/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v5

    iput v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1246
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    .line 1248
    :cond_0
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1249
    .local v0, blank:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1250
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1251
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1253
    .end local v0           #blank:I
    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    if-eq v5, v6, :cond_3

    .line 1254
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1255
    if-eqz v3, :cond_3

    .line 1256
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    if-ne v5, v7, :cond_2

    .line 1257
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    #calls: Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I
    invoke-static {v5, v6, v3, v8}, Lcom/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v5

    iput v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1258
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    .line 1260
    :cond_2
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1261
    .restart local v0       #blank:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1262
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1263
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    .end local v0           #blank:I
    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method
