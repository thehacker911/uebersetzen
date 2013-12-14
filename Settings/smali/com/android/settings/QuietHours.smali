.class public Lcom/android/settings/QuietHours;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "QuietHours.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/QuietHours$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAutoSms:Landroid/preference/ListPreference;

.field private mAutoSmsCall:Landroid/preference/ListPreference;

.field private mAutoSmsMessage:Landroid/preference/Preference;

.field private mBypassRingtone:Landroid/preference/RingtonePreference;

.field private mCallBypass:Landroid/preference/ListPreference;

.field private mCallBypassNumber:Landroid/preference/ListPreference;

.field private mCallBypassPref:I

.field private mCallPref:I

.field private mContext:Landroid/content/Context;

.field private mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQuietHoursDim:Landroid/preference/CheckBoxPreference;

.field private mQuietHoursEnabled:Landroid/preference/CheckBoxPreference;

.field private mQuietHoursNotifications:Landroid/preference/CheckBoxPreference;

.field private mQuietHoursRinger:Landroid/preference/CheckBoxPreference;

.field private mQuietHoursStill:Landroid/preference/CheckBoxPreference;

.field private mQuietHoursTimeRange:Lcom/android/settings/TimeRangePreference;

.field private mRingtoneLoop:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Lcom/android/settings/QuietHours$SettingsObserver;

.field private mSmsBypass:Landroid/preference/ListPreference;

.field private mSmsBypassCode:Landroid/preference/Preference;

.field private mSmsBypassPref:I

.field private mSmsPref:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 398
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/QuietHours;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/QuietHours;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/QuietHours;->setSmsBypassCodeSummary()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/QuietHours;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private setSmsBypassCodeSummary()V
    .locals 4

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0807d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, defaultCode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "sms_bypass_code"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, code:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/QuietHours;->mSmsBypassCode:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 396
    return-void
.end method

.method private shouldDisplayRingerPrefs()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 388
    iget-object v3, p0, Lcom/android/settings/QuietHours;->mBypassRingtone:Landroid/preference/RingtonePreference;

    iget v0, p0, Lcom/android/settings/QuietHours;->mSmsBypassPref:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/QuietHours;->mCallBypassPref:I

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/QuietHours;->mRingtoneLoop:Landroid/preference/CheckBoxPreference;

    iget v3, p0, Lcom/android/settings/QuietHours;->mSmsBypassPref:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/settings/QuietHours;->mCallBypassPref:I

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 390
    return-void

    :cond_3
    move v0, v1

    .line 388
    goto :goto_0
.end method

.method private shouldDisplayTextPref()V
    .locals 2

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/settings/QuietHours;->mAutoSmsMessage:Landroid/preference/Preference;

    iget v0, p0, Lcom/android/settings/QuietHours;->mSmsPref:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/QuietHours;->mCallPref:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 385
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 132
    const v7, 0x7f05001e

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->addPreferencesFromResource(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    .line 135
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 136
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 137
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    .line 140
    const-string v7, "quiet_hours_enabled"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mQuietHoursEnabled:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string v7, "quiet_hours_timerange"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/TimeRangePreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings/TimeRangePreference;

    .line 142
    const-string v7, "quiet_hours_notifications"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mQuietHoursNotifications:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v7, "quiet_hours_ringer"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mQuietHoursRinger:Landroid/preference/CheckBoxPreference;

    .line 144
    const-string v7, "quiet_hours_still"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mQuietHoursStill:Landroid/preference/CheckBoxPreference;

    .line 145
    const-string v7, "quiet_hours_dim"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mQuietHoursDim:Landroid/preference/CheckBoxPreference;

    .line 146
    const-string v7, "loop_bypass_ringtone"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mRingtoneLoop:Landroid/preference/CheckBoxPreference;

    .line 147
    const-string v7, "auto_sms"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mAutoSms:Landroid/preference/ListPreference;

    .line 148
    const-string v7, "auto_sms_call"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mAutoSmsCall:Landroid/preference/ListPreference;

    .line 149
    const-string v7, "auto_sms_message"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mAutoSmsMessage:Landroid/preference/Preference;

    .line 150
    const-string v7, "sms_bypass"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mSmsBypass:Landroid/preference/ListPreference;

    .line 151
    const-string v7, "call_bypass"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mCallBypass:Landroid/preference/ListPreference;

    .line 152
    const-string v7, "required_calls"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mCallBypassNumber:Landroid/preference/ListPreference;

    .line 153
    const-string v7, "sms_bypass_code"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mSmsBypassCode:Landroid/preference/Preference;

    .line 154
    const-string v7, "bypass_ringtone"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/RingtonePreference;

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mBypassRingtone:Landroid/preference/RingtonePreference;

    .line 156
    new-instance v7, Lcom/android/settings/QuietHours$SettingsObserver;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v10}, Lcom/android/settings/QuietHours$SettingsObserver;-><init>(Lcom/android/settings/QuietHours;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mSettingsObserver:Lcom/android/settings/QuietHours$SettingsObserver;

    .line 159
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings/TimeRangePreference;

    const-string v10, "quiet_hours_start"

    invoke-static {v4, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const-string v11, "quiet_hours_end"

    invoke-static {v4, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Lcom/android/settings/TimeRangePreference;->setTimeRange(II)V

    .line 161
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings/TimeRangePreference;

    invoke-virtual {v7, p0}, Lcom/android/settings/TimeRangePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mQuietHoursNotifications:Landroid/preference/CheckBoxPreference;

    const-string v7, "quiet_hours_notifications"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mQuietHoursRinger:Landroid/preference/CheckBoxPreference;

    const-string v7, "quiet_hours_ringer"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_2

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mQuietHoursStill:Landroid/preference/CheckBoxPreference;

    const-string v7, "quiet_hours_still"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_3

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mAutoSms:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "auto_sms"

    const-string v12, "0"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 166
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mAutoSms:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mAutoSmsCall:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "auto_sms_call"

    const-string v12, "0"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 168
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mAutoSmsCall:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mSmsBypass:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "sms_bypass"

    const-string v12, "0"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 170
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mSmsBypass:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mCallBypass:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "call_bypass"

    const-string v12, "0"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 172
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mCallBypass:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mCallBypassNumber:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "required_calls"

    const-string v12, "2"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 174
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mCallBypassNumber:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mBypassRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v7, p0}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 179
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    if-nez v7, :cond_4

    .line 180
    const-string v7, "sms_respond"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    const-string v7, "quiethours_bypass"

    invoke-virtual {p0, v7}, Lcom/android/settings/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    :goto_3
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mQuietHoursDim:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1110024

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_8

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/QuietHours;->mQuietHoursDim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :goto_4
    new-instance v7, Lcom/android/settings/QuietHours$1;

    invoke-direct {v7, p0}, Lcom/android/settings/QuietHours$1;-><init>(Lcom/android/settings/QuietHours;)V

    iput-object v7, p0, Lcom/android/settings/QuietHours;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 230
    .end local v3           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    return-void

    .restart local v3       #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    :cond_1
    move v7, v9

    .line 162
    goto/16 :goto_0

    :cond_2
    move v7, v9

    .line 163
    goto/16 :goto_1

    :cond_3
    move v7, v9

    .line 164
    goto/16 :goto_2

    .line 183
    .restart local v6       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "required_calls"

    const-string v11, "2"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, callBypassNumber:I
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "loop_bypass_ringtone"

    invoke-interface {v7, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 185
    .local v2, loopRingtone:Z
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "sms_bypass"

    const-string v11, "0"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/QuietHours;->mSmsBypassPref:I

    .line 186
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "auto_sms"

    const-string v11, "0"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/QuietHours;->mSmsPref:I

    .line 187
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "auto_sms_call"

    const-string v11, "0"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/QuietHours;->mCallPref:I

    .line 188
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v10, "call_bypass"

    const-string v11, "0"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/QuietHours;->mCallBypassPref:I

    .line 189
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/service/SmsCallHelper;->returnUserRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 190
    .local v0, alertSoundUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    .line 191
    .local v5, ringtoneAlarm:Landroid/media/Ringtone;
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mBypassRingtone:Landroid/preference/RingtonePreference;

    iget-object v10, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mRingtoneLoop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mRingtoneLoop:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    const v7, 0x7f0807e0

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 196
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mSmsBypass:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/QuietHours;->mSmsBypass:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/QuietHours;->mSmsBypassPref:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mCallBypass:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/QuietHours;->mCallBypass:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/QuietHours;->mCallBypassPref:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mCallBypassNumber:Landroid/preference/ListPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/settings/QuietHours;->mCallBypassNumber:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    add-int/lit8 v12, v1, -0x2

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0807dd

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mAutoSms:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/QuietHours;->mAutoSms:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/QuietHours;->mSmsPref:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mAutoSmsCall:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/QuietHours;->mAutoSmsCall:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/QuietHours;->mCallPref:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mCallBypassNumber:Landroid/preference/ListPreference;

    iget v7, p0, Lcom/android/settings/QuietHours;->mCallBypassPref:I

    if-eqz v7, :cond_6

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 203
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mSmsBypassCode:Landroid/preference/Preference;

    iget v7, p0, Lcom/android/settings/QuietHours;->mSmsBypassPref:I

    if-eqz v7, :cond_7

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/QuietHours;->shouldDisplayRingerPrefs()V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/QuietHours;->shouldDisplayTextPref()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/QuietHours;->setSmsBypassCodeSummary()V

    goto/16 :goto_3

    .line 193
    :cond_5
    const v7, 0x7f0807e1

    goto/16 :goto_5

    :cond_6
    move v7, v9

    .line 202
    goto :goto_6

    :cond_7
    move v7, v9

    .line 203
    goto :goto_7

    .line 213
    .end local v0           #alertSoundUri:Landroid/net/Uri;
    .end local v1           #callBypassNumber:I
    .end local v2           #loopRingtone:Z
    .end local v5           #ringtoneAlarm:Landroid/media/Ringtone;
    :cond_8
    iget-object v7, p0, Lcom/android/settings/QuietHours;->mQuietHoursDim:Landroid/preference/CheckBoxPreference;

    const-string v10, "quiet_hours_dim"

    invoke-static {v4, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_9

    :goto_8
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_9
    move v8, v9

    goto :goto_8
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/QuietHours;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 242
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 333
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings/TimeRangePreference;

    if-ne p1, v6, :cond_0

    .line 334
    const-string v4, "quiet_hours_start"

    iget-object v6, p0, Lcom/android/settings/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings/TimeRangePreference;

    invoke-virtual {v6}, Lcom/android/settings/TimeRangePreference;->getStartTime()I

    move-result v6

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    const-string v4, "quiet_hours_end"

    iget-object v6, p0, Lcom/android/settings/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings/TimeRangePreference;

    invoke-virtual {v6}, Lcom/android/settings/TimeRangePreference;->getEndTime()I

    move-result v6

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    iget-object v4, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/service/SmsCallHelper;->scheduleService(Landroid/content/Context;)V

    .line 380
    .end local p2
    :goto_0
    return v5

    .line 340
    .restart local p2
    :cond_0
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mAutoSms:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_1

    .line 341
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/QuietHours;->mSmsPref:I

    .line 342
    iget-object v4, p0, Lcom/android/settings/QuietHours;->mAutoSms:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/QuietHours;->mAutoSms:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/QuietHours;->mSmsPref:I

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    invoke-direct {p0}, Lcom/android/settings/QuietHours;->shouldDisplayTextPref()V

    goto :goto_0

    .line 345
    .restart local p2
    :cond_1
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mAutoSmsCall:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    .line 346
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/QuietHours;->mCallPref:I

    .line 347
    iget-object v4, p0, Lcom/android/settings/QuietHours;->mAutoSmsCall:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/QuietHours;->mAutoSmsCall:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/QuietHours;->mCallPref:I

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    invoke-direct {p0}, Lcom/android/settings/QuietHours;->shouldDisplayTextPref()V

    goto :goto_0

    .line 350
    .restart local p2
    :cond_2
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mSmsBypass:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_4

    .line 351
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/QuietHours;->mSmsBypassPref:I

    .line 352
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mSmsBypass:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/QuietHours;->mSmsBypass:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/QuietHours;->mSmsBypassPref:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mSmsBypassCode:Landroid/preference/Preference;

    iget v7, p0, Lcom/android/settings/QuietHours;->mSmsBypassPref:I

    if-eqz v7, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 354
    invoke-direct {p0}, Lcom/android/settings/QuietHours;->shouldDisplayRingerPrefs()V

    goto :goto_0

    .line 356
    .restart local p2
    :cond_4
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mCallBypass:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_6

    .line 357
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/QuietHours;->mCallBypassPref:I

    .line 358
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mCallBypass:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/QuietHours;->mCallBypass:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/QuietHours;->mCallBypassPref:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mCallBypassNumber:Landroid/preference/ListPreference;

    iget v7, p0, Lcom/android/settings/QuietHours;->mCallBypassPref:I

    if-eqz v7, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 360
    invoke-direct {p0}, Lcom/android/settings/QuietHours;->shouldDisplayRingerPrefs()V

    goto/16 :goto_0

    .line 362
    .restart local p2
    :cond_6
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mCallBypassNumber:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_7

    .line 363
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 364
    .local v3, val:I
    iget-object v4, p0, Lcom/android/settings/QuietHours;->mCallBypassNumber:Landroid/preference/ListPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/QuietHours;->mCallBypassNumber:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    add-int/lit8 v8, v3, -0x2

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0807dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 367
    .end local v3           #val:I
    .restart local p2
    :cond_7
    iget-object v6, p0, Lcom/android/settings/QuietHours;->mBypassRingtone:Landroid/preference/RingtonePreference;

    if-ne p1, v6, :cond_9

    .line 368
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 369
    .local v3, val:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 371
    .local v2, ringtone:Landroid/media/Ringtone;
    if-eqz v2, :cond_8

    .line 372
    const-string v4, "bypass_ringtone"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 373
    iget-object v4, p0, Lcom/android/settings/QuietHours;->mBypassRingtone:Landroid/preference/RingtonePreference;

    iget-object v6, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 376
    :cond_8
    const-string v4, "bypass_ringtone"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #ringtone:Landroid/media/Ringtone;
    .end local v3           #val:Landroid/net/Uri;
    .restart local p2
    :cond_9
    move v5, v4

    .line 380
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v12, 0x7f080818

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 248
    .local v7, resolver:Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mQuietHoursEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_1

    .line 249
    const-string v10, "quiet_hours_enabled"

    iget-object v11, p0, Lcom/android/settings/QuietHours;->mQuietHoursEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_0

    move v8, v9

    :cond_0
    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    :goto_0
    return v9

    .line 252
    :cond_1
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mQuietHoursNotifications:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_3

    .line 253
    const-string v10, "quiet_hours_notifications"

    iget-object v11, p0, Lcom/android/settings/QuietHours;->mQuietHoursNotifications:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_2

    move v8, v9

    :cond_2
    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 256
    :cond_3
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mQuietHoursRinger:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_5

    .line 257
    const-string v10, "quiet_hours_ringer"

    iget-object v11, p0, Lcom/android/settings/QuietHours;->mQuietHoursRinger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_4

    move v8, v9

    :cond_4
    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 260
    :cond_5
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mQuietHoursStill:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_7

    .line 261
    const-string v10, "quiet_hours_still"

    iget-object v11, p0, Lcom/android/settings/QuietHours;->mQuietHoursStill:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_6

    move v8, v9

    :cond_6
    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 264
    :cond_7
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mQuietHoursDim:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_9

    .line 265
    const-string v10, "quiet_hours_dim"

    iget-object v11, p0, Lcom/android/settings/QuietHours;->mQuietHoursDim:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_8

    move v8, v9

    :cond_8
    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 268
    :cond_9
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mRingtoneLoop:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_b

    .line 269
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mRingtoneLoop:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/QuietHours;->mRingtoneLoop:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_a

    const v8, 0x7f0807e0

    :goto_1
    invoke-virtual {v10, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    :cond_a
    const v8, 0x7f0807e1

    goto :goto_1

    .line 273
    :cond_b
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mAutoSmsMessage:Landroid/preference/Preference;

    if-ne p2, v10, :cond_c

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0807d2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, defaultText:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "auto_sms_message"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, autoText:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0807d0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 279
    const v10, 0x7f0807d1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 281
    new-instance v6, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 282
    .local v6, input:Landroid/widget/EditText;
    new-array v5, v9, [Landroid/text/InputFilter;

    .line 284
    .local v5, filter:[Landroid/text/InputFilter;
    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    const/16 v11, 0xa0

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v5, v8

    .line 285
    invoke-virtual {v6, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 287
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/android/settings/QuietHours$2;

    invoke-direct {v10, p0, v6, v4}, Lcom/android/settings/QuietHours$2;-><init>(Lcom/android/settings/QuietHours;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 301
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v1           #autoText:Ljava/lang/String;
    .end local v4           #defaultText:Ljava/lang/String;
    .end local v5           #filter:[Landroid/text/InputFilter;
    .end local v6           #input:Landroid/widget/EditText;
    :cond_c
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mSmsBypassCode:Landroid/preference/Preference;

    if-ne p2, v10, :cond_d

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0807d7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, defaultCode:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "sms_bypass_code"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, code:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .restart local v0       #alert:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0807d9

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 306
    const v10, 0x7f0807da

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 308
    new-instance v6, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 309
    .restart local v6       #input:Landroid/widget/EditText;
    new-array v5, v9, [Landroid/text/InputFilter;

    .line 310
    .restart local v5       #filter:[Landroid/text/InputFilter;
    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    const/16 v11, 0x14

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v5, v8

    .line 311
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 313
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/QuietHours;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/android/settings/QuietHours$3;

    invoke-direct {v10, p0, v6, v3}, Lcom/android/settings/QuietHours$3;-><init>(Lcom/android/settings/QuietHours;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 328
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #defaultCode:Ljava/lang/String;
    .end local v5           #filter:[Landroid/text/InputFilter;
    .end local v6           #input:Landroid/widget/EditText;
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/QuietHours;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 236
    return-void
.end method

.method protected updateSettings()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 419
    iget-object v3, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 420
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/QuietHours;->mQuietHoursEnabled:Landroid/preference/CheckBoxPreference;

    const-string v4, "quiet_hours_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 422
    iget-object v1, p0, Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/service/SmsCallHelper;->scheduleService(Landroid/content/Context;)V

    .line 423
    return-void

    :cond_0
    move v1, v2

    .line 420
    goto :goto_0
.end method
