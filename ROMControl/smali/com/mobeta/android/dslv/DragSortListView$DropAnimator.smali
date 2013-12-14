.class Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;
.super Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropAnimator"
.end annotation


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .locals 0
    .parameter
    .parameter "smoothness"
    .parameter "duration"

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 1151
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    .line 1152
    return-void
.end method

.method private getTargetY()I
    .locals 6

    .prologue
    .line 1164
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1165
    .local v0, first:I
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I
    invoke-static {v4}, Lcom/mobeta/android/dslv/DragSortListView;->access$1000(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 1166
    .local v1, otherAdjust:I
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1167
    .local v3, v:Landroid/view/View;
    const/4 v2, -0x1

    .line 1168
    .local v2, targetY:I
    if-eqz v3, :cond_2

    .line 1169
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ne v4, v5, :cond_0

    .line 1170
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1183
    :goto_0
    return v2

    .line 1171
    :cond_0
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ge v4, v5, :cond_1

    .line 1173
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_0

    .line 1176
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I
    invoke-static {v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$1100(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_0

    .line 1180
    :cond_2
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$800(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    .line 1157
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$900(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->srcPos:I

    .line 1158
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x2

    #setter for: Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I
    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$102(Lcom/mobeta/android/dslv/DragSortListView;I)I

    .line 1159
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$500(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    .line 1160
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$500(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    .line 1161
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #calls: Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$1200(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 1201
    return-void
.end method

.method public onUpdate(FF)V
    .locals 6
    .parameter "frac"
    .parameter "smoothFrac"

    .prologue
    .line 1188
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v2

    .line 1189
    .local v2, targetY:I
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->access$500(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v2

    int-to-float v0, v3

    .line 1190
    .local v0, deltaY:F
    const/high16 v3, 0x3f80

    sub-float v1, v3, p2

    .line 1191
    .local v1, f:F
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    div-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 1192
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->access$500(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v4, v1

    float-to-int v4, v4

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1193
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->access$500(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1194
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v4, 0x1

    #calls: Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V
    invoke-static {v3, v4}, Lcom/mobeta/android/dslv/DragSortListView;->access$700(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    .line 1196
    :cond_0
    return-void
.end method
