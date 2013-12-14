.class Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;
.super Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiftAnimator"
.end annotation


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .locals 0
    .parameter
    .parameter "smoothness"
    .parameter "duration"

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 1119
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    .line 1120
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$300(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    .line 1125
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$400(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    .line 1126
    return-void
.end method

.method public onUpdate(FF)V
    .locals 4
    .parameter "frac"
    .parameter "smoothFrac"

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$100(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1131
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->cancel()V

    .line 1137
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    #setter for: Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I
    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$302(Lcom/mobeta/android/dslv/DragSortListView;I)I

    .line 1134
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$500(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mY:I
    invoke-static {v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$600(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I
    invoke-static {v2}, Lcom/mobeta/android/dslv/DragSortListView;->access$300(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1135
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x1

    #calls: Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V
    invoke-static {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->access$700(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    goto :goto_0
.end method
