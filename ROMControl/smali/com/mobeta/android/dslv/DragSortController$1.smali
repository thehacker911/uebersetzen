.class Lcom/mobeta/android/dslv/DragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortController;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/DragSortController;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 472
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    #getter for: Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$000(Lcom/mobeta/android/dslv/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    #getter for: Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$100(Lcom/mobeta/android/dslv/DragSortController;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 486
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    #getter for: Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$200(Lcom/mobeta/android/dslv/DragSortController;)F

    move-result v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    #getter for: Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$300(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(Z)Z

    goto :goto_0

    .line 480
    :pswitch_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    #getter for: Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$200(Lcom/mobeta/android/dslv/DragSortController;)F

    move-result v0

    neg-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/mobeta/android/dslv/DragSortController;

    #getter for: Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortController;->access$300(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(Z)Z

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
