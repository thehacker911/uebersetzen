.class public Lcom/aokp/romcontrol/fragments/Sound;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "Sound.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final GENERIC_VIBRATE_INTENSITY:Ljava/lang/String; = "generic_vibrate_intensity"

.field private static final PREF_BT_CONNECTED_ACTION:Ljava/lang/String; = "bt_audio_mode"

.field private static final PREF_ENABLE_VOLUME_OPTIONS:Ljava/lang/String; = "enable_volume_options"

.field private static final PREF_FLIP_ACTION:Ljava/lang/String; = "flip_mode"

.field private static final PREF_HEADPHONES_PLUGGED_ACTION:Ljava/lang/String; = "headphone_audio_mode"

.field private static final PREF_INCREASING_RING:Ljava/lang/String; = "increasing_ring"

.field private static final PREF_LESS_NOTIFICATION_SOUNDS:Ljava/lang/String; = "less_notification_sounds"

.field private static final PREF_PHONE_RING_SILENCE:Ljava/lang/String; = "phone_ring_silence"

.field private static final PREF_USER_DOWN_MS:Ljava/lang/String; = "user_down_ms"

.field private static final PREF_USER_TIMEOUT:Ljava/lang/String; = "user_timeout"

.field private static final VIBRATE_CATEGORY:Ljava/lang/String; = "vibrate_category"


# instance fields
.field mAnnoyingNotifications:Landroid/preference/ListPreference;

.field mBTPluggedAction:Landroid/preference/ListPreference;

.field private mCallPref:I

.field mEnableVolumeOptions:Landroid/preference/CheckBoxPreference;

.field mFlipAction:Landroid/preference/ListPreference;

.field private mFlipPref:I

.field mFlipScreenOff:Landroid/preference/ListPreference;

.field mHeadphonesPluggedAction:Landroid/preference/ListPreference;

.field mIncreasingRing:Landroid/preference/Preference;

.field mPhoneSilent:Landroid/preference/ListPreference;

.field private mTactileFeedbackEnabled:Z

.field mUserDownMS:Landroid/preference/ListPreference;

.field mVibtationIntensity:Lcom/aokp/romcontrol/widgets/VibDurationPreference;

.field prefs:Landroid/content/SharedPreferences;

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    return-void
.end method

.method private flipServiceCheck()V
    .locals 4

    .prologue
    .line 210
    iget v0, p0, Lcom/aokp/romcontrol/fragments/Sound;->mCallPref:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipPref:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContext:Landroid/content/Context;

    const-class v3, Lcom/aokp/romcontrol/service/FlipService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContext:Landroid/content/Context;

    const-class v3, Lcom/aokp/romcontrol/service/FlipService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f0b0054

    const v6, 0x7f05000a

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v3, 0x7f0b0028

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->setTitle(I)V

    .line 62
    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/Sound;->addPreferencesFromResource(I)V

    .line 63
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 64
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->prefs:Landroid/content/SharedPreferences;

    .line 65
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->vib:Landroid/os/Vibrator;

    .line 67
    const-string v3, "headphone_audio_mode"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mHeadphonesPluggedAction:Landroid/preference/ListPreference;

    .line 69
    const-string v3, "bt_audio_mode"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mBTPluggedAction:Landroid/preference/ListPreference;

    .line 71
    const-string v3, "enable_volume_options"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mEnableVolumeOptions:Landroid/preference/CheckBoxPreference;

    .line 72
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mEnableVolumeOptions:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContentRes:Landroid/content/ContentResolver;

    const-string v7, "enable_volume_options"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    const-string v3, "less_notification_sounds"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mAnnoyingNotifications:Landroid/preference/ListPreference;

    .line 76
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mAnnoyingNotifications:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mAnnoyingNotifications:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContentRes:Landroid/content/ContentResolver;

    const-string v7, "mute_annoying_notifications_threshold"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 80
    const-string v3, "flip_mode"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipAction:Landroid/preference/ListPreference;

    .line 81
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipAction:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipAction:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Sound;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "flip_mode"

    const-string v8, "-1"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "flip_mode"

    const-string v7, "-1"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipPref:I

    .line 85
    const-string v3, "user_down_ms"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mUserDownMS:Landroid/preference/ListPreference;

    .line 87
    const-string v3, "user_timeout"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipScreenOff:Landroid/preference/ListPreference;

    .line 89
    const-string v3, "phone_ring_silence"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mPhoneSilent:Landroid/preference/ListPreference;

    .line 90
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mPhoneSilent:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Sound;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "phone_ring_silence"

    const-string v8, "0"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mPhoneSilent:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "phone_ring_silence"

    const-string v7, "-1"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mCallPref:I

    .line 94
    const-string v3, "increasing_ring"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mIncreasingRing:Landroid/preference/Preference;

    .line 96
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "haptic_feedback_enabled"

    const/4 v7, -0x2

    invoke-static {v3, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mTactileFeedbackEnabled:Z

    .line 98
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "generic_vibrate_intensity"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 100
    .local v2, vibIntensity:I
    const-string v3, "generic_vibrate_intensity"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/aokp/romcontrol/widgets/VibDurationPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mVibtationIntensity:Lcom/aokp/romcontrol/widgets/VibDurationPreference;

    .line 101
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mVibtationIntensity:Lcom/aokp/romcontrol/widgets/VibDurationPreference;

    invoke-virtual {v3, v2}, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->setInitValue(I)V

    .line 102
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mVibtationIntensity:Lcom/aokp/romcontrol/widgets/VibDurationPreference;

    invoke-virtual {v3, p0}, Lcom/aokp/romcontrol/widgets/VibDurationPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    iget v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipPref:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    .line 105
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mUserDownMS:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 106
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipScreenOff:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 107
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mUserDownMS:Landroid/preference/ListPreference;

    const v6, 0x7f0b028a

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 108
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipScreenOff:Landroid/preference/ListPreference;

    const v6, 0x7f0b0288

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 116
    :goto_1
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/Sound;->hasPhoneAbility(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Sound;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Sound;->mPhoneSilent:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Sound;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Sound;->mIncreasingRing:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :cond_0
    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->hasVibration:Z

    if-nez v3, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Sound;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v3, "vibrate_category"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Sound;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    new-array v0, v9, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Sound;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b0281

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Sound;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b0283

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 134
    .local v0, noVibEntries:[Ljava/lang/String;
    new-array v1, v9, [Ljava/lang/String;

    const-string v3, "-1"

    aput-object v3, v1, v5

    const-string v3, "0"

    aput-object v3, v1, v4

    .line 135
    .local v1, noVibEntriesValues:[Ljava/lang/String;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mHeadphonesPluggedAction:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 136
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mHeadphonesPluggedAction:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 137
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mBTPluggedAction:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mBTPluggedAction:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 139
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipAction:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 140
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipAction:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 142
    .end local v0           #noVibEntries:[Ljava/lang/String;
    .end local v1           #noVibEntriesValues:[Ljava/lang/String;
    :cond_1
    return-void

    .end local v2           #vibIntensity:I
    :cond_2
    move v3, v5

    .line 96
    goto/16 :goto_0

    .line 110
    .restart local v2       #vibIntensity:I
    :cond_3
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mUserDownMS:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 111
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipScreenOff:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 112
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mUserDownMS:Landroid/preference/ListPreference;

    invoke-virtual {v3, v10}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 113
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipScreenOff:Landroid/preference/ListPreference;

    invoke-virtual {v3, v10}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v7, 0x7f0b0054

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 160
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipAction:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2

    .line 161
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipPref:I

    .line 162
    iget v5, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipPref:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 163
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->mUserDownMS:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 164
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipScreenOff:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 165
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->mUserDownMS:Landroid/preference/ListPreference;

    const v5, 0x7f0b028a

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 166
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipScreenOff:Landroid/preference/ListPreference;

    const v5, 0x7f0b0288

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Sound;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Sound;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b028c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Sound;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b028d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Sound;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b028b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/aokp/romcontrol/fragments/Sound$1;

    invoke-direct {v5, p0}, Lcom/aokp/romcontrol/fragments/Sound$1;-><init>(Lcom/aokp/romcontrol/fragments/Sound;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 185
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    :goto_0
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Sound;->flipServiceCheck()V

    .line 206
    :cond_0
    :goto_1
    return v3

    .line 180
    :cond_1
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Sound;->mUserDownMS:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 181
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipScreenOff:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 182
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->mUserDownMS:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 183
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->mFlipScreenOff:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 187
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Sound;->mAnnoyingNotifications:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    .line 188
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 189
    .local v2, val:I
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "mute_annoying_notifications_threshold"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 192
    .end local v2           #val:I
    .restart local p2
    :cond_3
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Sound;->mPhoneSilent:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_4

    .line 193
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->mCallPref:I

    .line 194
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Sound;->flipServiceCheck()V

    goto :goto_1

    .line 196
    .restart local p2
    :cond_4
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Sound;->mVibtationIntensity:Lcom/aokp/romcontrol/widgets/VibDurationPreference;

    if-ne p1, v5, :cond_5

    move-object v1, p2

    .line 197
    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, newVal:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 199
    .restart local v2       #val:I
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "generic_vibrate_intensity"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    rem-int/lit8 v4, v2, 0x5

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->mTactileFeedbackEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->vib:Landroid/os/Vibrator;

    if-eqz v4, :cond_0

    .line 202
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Sound;->vib:Landroid/os/Vibrator;

    const-wide/16 v5, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    .end local v1           #newVal:Ljava/lang/String;
    .end local v2           #val:I
    :cond_5
    move v3, v4

    .line 206
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Sound;->mEnableVolumeOptions:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 149
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 150
    .local v0, checked:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Sound;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "enable_volume_options"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 152
    const/4 v1, 0x1

    .line 155
    .end local v0           #checked:Z
    :goto_0
    return v1

    .restart local p2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
