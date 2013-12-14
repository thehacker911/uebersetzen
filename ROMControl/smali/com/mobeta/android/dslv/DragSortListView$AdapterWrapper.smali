.class Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;
.super Landroid/widget/HeaderViewListAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter
    .parameter "adapter"

    .prologue
    const/4 v0, 0x0

    .line 638
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 639
    invoke-direct {p0, v0, v0, p2}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 640
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 641
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 653
    if-eqz p2, :cond_1

    move-object v2, p2

    .line 654
    check-cast v2, Lcom/mobeta/android/dslv/DragSortItemView;

    .line 655
    .local v2, v:Lcom/mobeta/android/dslv/DragSortItemView;
    invoke-virtual {v2, v4}, Lcom/mobeta/android/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 657
    .local v1, oldChild:Landroid/view/View;
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1, v1, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 658
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_0

    .line 660
    invoke-virtual {v2, v4}, Lcom/mobeta/android/dslv/DragSortItemView;->removeViewAt(I)V

    .line 661
    invoke-virtual {v2, v0}, Lcom/mobeta/android/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    .line 674
    .end local v1           #oldChild:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, p1

    const/4 v5, 0x1

    #calls: Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V
    invoke-static {v3, v4, v2, v5}, Lcom/mobeta/android/dslv/DragSortListView;->access$200(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 676
    return-object v2

    .line 664
    .end local v0           #child:Landroid/view/View;
    .end local v2           #v:Lcom/mobeta/android/dslv/DragSortItemView;
    :cond_1
    new-instance v2, Lcom/mobeta/android/dslv/DragSortItemView;

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mobeta/android/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    .line 665
    .restart local v2       #v:Lcom/mobeta/android/dslv/DragSortItemView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/mobeta/android/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 669
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/mobeta/android/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
