.class Lcom/aokp/romcontrol/fragments/Vibrations$13;
.super Landroid/view/View;
.source "Vibrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/Vibrations;->updatePatternBar(Landroid/media/VibrationPattern;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

.field final synthetic val$mWidth:I


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Vibrations;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$13;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iput p3, p0, Lcom/aokp/romcontrol/fragments/Vibrations$13;->val$mWidth:I

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 320
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 321
    .local v1, measuredWidth:I
    iget v2, p0, Lcom/aokp/romcontrol/fragments/Vibrations$13;->val$mWidth:I

    if-lez v2, :cond_0

    .line 322
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 323
    .local v0, measureMode:I
    iget v2, p0, Lcom/aokp/romcontrol/fragments/Vibrations$13;->val$mWidth:I

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 325
    .end local v0           #measureMode:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 326
    return-void
.end method
