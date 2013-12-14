.class Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmoothAnimator"
.end annotation


# instance fields
.field private mA:F

.field private mAlpha:F

.field private mB:F

.field private mC:F

.field private mCanceled:Z

.field private mD:F

.field private mDurationF:F

.field private mStartTime:J

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V
    .locals 4
    .parameter
    .parameter "smoothness"
    .parameter "duration"

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    .line 1051
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    .line 1053
    int-to-float v0, p3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mDurationF:F

    .line 1054
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mD:F

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mA:F

    .line 1055
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mB:F

    .line 1056
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mC:F

    .line 1057
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    .line 1078
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1082
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1090
    return-void
.end method

.method public onUpdate(FF)V
    .locals 0
    .parameter "frac"
    .parameter "smoothFrac"

    .prologue
    .line 1086
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 1094
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    if-eqz v1, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1098
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mDurationF:F

    div-float v0, v1, v2

    .line 1100
    .local v0, fraction:F
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_1

    .line 1101
    invoke-virtual {p0, v5, v5}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 1102
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onStop()V

    goto :goto_0

    .line 1104
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->transform(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 1105
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1070
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mStartTime:J

    .line 1071
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    .line 1072
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onStart()V

    .line 1073
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 1074
    return-void
.end method

.method public transform(F)F
    .locals 3
    .parameter "frac"

    .prologue
    const/high16 v2, 0x3f80

    .line 1060
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1061
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mA:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 1065
    :goto_0
    return v0

    .line 1062
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1063
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mB:F

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mC:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_0

    .line 1065
    :cond_1
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mD:F

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method
