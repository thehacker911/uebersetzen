.class Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingDismissData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;",
        ">;"
    }
.end annotation


# instance fields
.field public position:I

.field final synthetic this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter "position"
    .parameter "view"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->this$0:Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput p2, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    .line 297
    iput-object p3, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    .line 298
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 303
    iget v0, p1, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    iget v1, p0, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;->compareTo(Lcom/google/android/apps/dashclock/ui/SwipeDismissListViewTouchListener$PendingDismissData;)I

    move-result v0

    return v0
.end method
