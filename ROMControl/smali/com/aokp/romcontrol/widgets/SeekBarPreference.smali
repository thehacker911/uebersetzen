.class public Lcom/aokp/romcontrol/widgets/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

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

    sput v0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->maximum:I

    .line 18
    const/4 v0, 0x5

    sput v0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->interval:I

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
    const/16 v0, 0x3c

    iput v0, p0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->defaultValue:I

    .line 29
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040020

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, layout:Landroid/view/View;
    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->monitorBox:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->bar:Landroid/widget/SeekBar;

    .line 38
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 39
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->bar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->defaultValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 41
    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 51
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
    .line 64
    int-to-float v0, p2

    sget v1, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->interval:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->interval:I

    mul-int p2, v0, v1

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->monitorBox:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->changer:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 74
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 79
    return-void
.end method

.method public setInitValue(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 45
    iput p1, p0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->defaultValue:I

    .line 46
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .parameter "onPreferenceChangeListener"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->changer:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    return-void
.end method
