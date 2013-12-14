.class public Lcom/aokp/romcontrol/widgets/VibDurationPreference;
.super Landroid/preference/Preference;
.source "VibDurationPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static interval:I

.field public static maximum:I


# instance fields
.field private bar:Landroid/widget/SeekBar;

.field private changer:Landroid/preference/Preference$OnPreferenceChangeListener;

.field defaultValue:I

.field private monitorBox:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x64

    sput v0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->maximum:I

    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->interval:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->defaultValue:I

    .line 29
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040020

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, layout:Landroid/view/View;
    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->monitorBox:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->bar:Landroid/widget/SeekBar;

    .line 37
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 38
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->bar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->defaultValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 40
    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 63
    int-to-float v0, p2

    sget v1, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->interval:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->interval:I

    mul-int p2, v0, v1

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 66
    if-lez p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->monitorBox:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->changer:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 72
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->monitorBox:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0292

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 77
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 82
    return-void
.end method

.method public setInitValue(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 44
    iput p1, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->defaultValue:I

    .line 45
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .parameter "onPreferenceChangeListener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->changer:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 57
    invoke-super {p0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    return-void
.end method
