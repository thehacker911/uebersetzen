.class public Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;
.super Landroid/preference/VolumePreference;
.source "IncreasingRingPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IncreasingRingPreference"


# instance fields
.field private mEnabledCheckbox:Landroid/widget/CheckBox;

.field private mInterval:Landroid/widget/Spinner;

.field private mIntervalTitle:Landroid/widget/TextView;

.field private mIntervalValues:[I

.field private mMinVolumeSeekBar:Landroid/widget/SeekBar;

.field private mMinVolumeTitle:Landroid/widget/TextView;

.field private mRingVolumeNotice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->setStreamType(I)V

    .line 56
    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->setDialogLayoutResource(I)V

    .line 57
    const v0, 0x7f020024

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->setDialogIcon(I)V

    .line 58
    return-void
.end method

.method private updateEnabledStates()V
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 137
    .local v0, enable:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mMinVolumeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mMinVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mRingVolumeNotice:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mIntervalTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mInterval:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 142
    return-void
.end method

.method private updateVolumeNoticeVisibility(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mMinVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v2

    if-le p1, v2, :cond_1

    const/4 v0, 0x1

    .line 129
    .local v0, visible:Z
    :goto_0
    iget-object v2, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mRingVolumeNotice:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    return-void

    .end local v0           #visible:Z
    :cond_1
    move v0, v1

    .line 128
    goto :goto_0

    .line 132
    .restart local v0       #visible:Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 66
    .local v1, cr:Landroid/content/ContentResolver;
    const v5, 0x7f0a002b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    .line 67
    const v5, 0x7f0a002c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mMinVolumeTitle:Landroid/widget/TextView;

    .line 68
    const v5, 0x102033b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mMinVolumeSeekBar:Landroid/widget/SeekBar;

    .line 69
    const v5, 0x7f0a002d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mRingVolumeNotice:Landroid/widget/TextView;

    .line 70
    const v5, 0x7f0a002e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mIntervalTitle:Landroid/widget/TextView;

    .line 71
    const v5, 0x7f0a002f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mInterval:Landroid/widget/Spinner;

    .line 72
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f060058

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mIntervalValues:[I

    .line 74
    iget-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-object v8, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    const-string v5, "increasing_ring"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 76
    iget-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mMinVolumeSeekBar:Landroid/widget/SeekBar;

    const-string v8, "increasing_ring_min_vol"

    invoke-static {v1, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 78
    const-string v5, "increasing_ring_interval"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 79
    .local v4, interval:I
    const/4 v3, 0x0

    .line 81
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mIntervalValues:[I

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 82
    iget-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mIntervalValues:[I

    aget v5, v5, v2

    if-ne v5, v4, :cond_2

    .line 83
    move v3, v2

    .line 87
    :cond_0
    iget-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mInterval:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 89
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 90
    .local v0, am:Landroid/media/AudioManager;
    iget-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mMinVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 92
    iget-object v5, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mMinVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->updateVolumeNoticeVisibility(I)V

    .line 93
    invoke-direct {p0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->updateEnabledStates()V

    .line 94
    return-void

    .end local v0           #am:Landroid/media/AudioManager;
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #interval:I
    :cond_1
    move v5, v7

    .line 75
    goto :goto_0

    .line 81
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v4       #interval:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mMinVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->updateVolumeNoticeVisibility(I)V

    .line 115
    invoke-direct {p0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->updateEnabledStates()V

    .line 116
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, v2}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 100
    if-eqz p1, :cond_1

    .line 101
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 102
    .local v0, checked:Z
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 104
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "increasing_ring"

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    const-string v2, "increasing_ring_interval"

    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mIntervalValues:[I

    iget-object v4, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mInterval:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    const-string v2, "increasing_ring_min_vol"

    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mMinVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    .end local v0           #checked:Z
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 178
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 170
    check-cast v0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;

    .line 171
    .local v0, myState:Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;
    invoke-virtual {v0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 172
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;->mEnabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mInterval:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mInterval:Landroid/widget/Spinner;

    iget v2, v0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;->mIntervalSelection:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 147
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 152
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 153
    .local v0, myState:Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;
    iget-object v2, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mEnabledCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;->mEnabled:Z

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mInterval:Landroid/widget/Spinner;

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->mInterval:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;->mIntervalSelection:I

    :cond_2
    move-object v1, v0

    .line 159
    goto :goto_0
.end method

.method public onVolumeChange(Landroid/preference/VolumePreference$SeekBarVolumizer;I)Z
    .locals 1
    .parameter "volumizer"
    .parameter "value"

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/preference/VolumePreference;->onVolumeChange(Landroid/preference/VolumePreference$SeekBarVolumizer;I)Z

    move-result v0

    .line 121
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0, p2}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;->updateVolumeNoticeVisibility(I)V

    .line 124
    :cond_0
    return v0
.end method
