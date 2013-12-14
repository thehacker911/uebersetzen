.class Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$1;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$1;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "absListView"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 158
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "absListView"
    .parameter "scrollState"

    .prologue
    const/4 v0, 0x1

    .line 153
    iget-object v1, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$1;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    if-eq p2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->setEnabled(Z)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
