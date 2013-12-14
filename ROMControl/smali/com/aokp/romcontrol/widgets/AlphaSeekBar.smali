.class public Lcom/aokp/romcontrol/widgets/AlphaSeekBar;
.super Landroid/widget/LinearLayout;
.source "AlphaSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final MAX_VALUE:I = 0xff

.field private static final SUPERSTATE:Ljava/lang/String; = "superstate"


# instance fields
.field defaultValue:I

.field private mAlphaText:Landroid/widget/TextView;

.field private mPercentText:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0xff

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v4, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->defaultValue:I

    .line 34
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 35
    .local v0, parent:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mAlphaText:Landroid/widget/TextView;

    .line 38
    const v1, 0x7f0a000e

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mPercentText:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0a000d

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 40
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 41
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 42
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->defaultValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public getCurrentAlpha()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 48
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mAlphaText:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v1, Ljava/lang/Float;

    int-to-float v2, p2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x437f

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 50
    .local v0, percent:I
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mPercentText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 78
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 82
    return-void
.end method

.method public setCurrentAlpha(I)V
    .locals 1
    .parameter "p"

    .prologue
    .line 58
    if-gez p1, :cond_2

    .line 59
    const/4 p1, 0x0

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 66
    :cond_1
    return-void

    .line 60
    :cond_2
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 61
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mAlphaText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->mPercentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 74
    return-void
.end method
