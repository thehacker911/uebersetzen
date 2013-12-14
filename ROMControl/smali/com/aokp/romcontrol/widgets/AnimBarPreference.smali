.class public Lcom/aokp/romcontrol/widgets/AnimBarPreference;
.super Landroid/preference/Preference;
.source "AnimBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static interval:I

.field public static maximum:I


# instance fields
.field private bar:Landroid/widget/SeekBar;

.field private changer:Landroid/preference/Preference$OnPreferenceChangeListener;

.field defaultValue:I

.field private mContext:Landroid/content/Context;

.field private monitorBox:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x64

    sput v0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->maximum:I

    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->interval:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/16 v0, 0x3c

    iput v0, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->defaultValue:I

    .line 31
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->mContext:Landroid/content/Context;

    .line 36
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f040020

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, layout:Landroid/view/View;
    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->monitorBox:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->bar:Landroid/widget/SeekBar;

    .line 40
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 41
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->bar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->defaultValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 43
    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 53
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
    .line 66
    int-to-float v0, p2

    sget v1, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->interval:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->interval:I

    mul-int p2, v0, v1

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 68
    if-lez p2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->monitorBox:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p2, 0xf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->changer:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 74
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->monitorBox:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 79
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 84
    return-void
.end method

.method public setInitValue(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 47
    iput p1, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->defaultValue:I

    .line 48
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .parameter "onPreferenceChangeListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->changer:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 60
    invoke-super {p0, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    return-void
.end method
