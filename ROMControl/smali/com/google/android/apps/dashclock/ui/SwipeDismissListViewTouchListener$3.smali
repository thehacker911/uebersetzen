.class Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    iput p2, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    .line 320
    iget-object v5, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    invoke-static {v5}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->access$106(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)I

    .line 321
    iget-object v5, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    #getter for: Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I
    invoke-static {v5}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->access$100(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)I

    move-result v5

    if-nez v5, :cond_2

    .line 324
    iget-object v5, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    #getter for: Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->access$200(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 326
    iget-object v5, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    #getter for: Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->access$200(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 327
    .local v0, dismissPositions:[I
    iget-object v5, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    #getter for: Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->access$200(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 328
    iget-object v5, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    #getter for: Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->access$200(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;

    iget v5, v5, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    aput v5, v0, v1

    .line 327
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 330
    :cond_0
    iget-object v5, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    #getter for: Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->mCallbacks:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$DismissCallbacks;
    invoke-static {v5}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->access$400(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$DismissCallbacks;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    #getter for: Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->access$300(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$DismissCallbacks;->onDismiss(Landroid/widget/ListView;[I)V

    .line 333
    iget-object v5, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    #getter for: Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->access$200(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;

    .line 335
    .local v4, pendingDismiss:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;
    iget-object v5, v4, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 336
    iget-object v5, v4, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 337
    iget-object v5, v4, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 338
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->val$originalHeight:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 339
    iget-object v5, v4, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 342
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #pendingDismiss:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;
    :cond_1
    iget-object v5, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$3;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    #getter for: Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;->access$200(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 344
    .end local v0           #dismissPositions:[I
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method
