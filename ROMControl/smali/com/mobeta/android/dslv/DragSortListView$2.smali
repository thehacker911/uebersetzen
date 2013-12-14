.class Lcom/mobeta/android/dslv/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobeta/android/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$2;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$2;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    #getter for: Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I
    invoke-static {v0}, Lcom/mobeta/android/dslv/DragSortListView;->access$100(Lcom/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$2;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->cancelDrag()V

    .line 551
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView$2;->cancel()V

    .line 556
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView$2;->cancel()V

    .line 561
    return-void
.end method
