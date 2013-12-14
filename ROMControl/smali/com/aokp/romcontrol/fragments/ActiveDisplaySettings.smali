.class public Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "ActiveDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_ALL_NOTIFICATIONS:Ljava/lang/String; = "ad_all_notifications"

.field private static final KEY_BRIGHTNESS:Ljava/lang/String; = "ad_brightness"

.field private static final KEY_ENABLED:Ljava/lang/String; = "ad_enable"

.field private static final KEY_EXCLUDED_APPS:Ljava/lang/String; = "ad_excluded_apps"

.field private static final KEY_HIDE_LOW_PRIORITY:Ljava/lang/String; = "ad_hide_low_priority"

.field private static final KEY_POCKET_MODE:Ljava/lang/String; = "ad_pocket_mode"

.field private static final KEY_REDISPLAY:Ljava/lang/String; = "ad_redisplay"

.field private static final KEY_SHOW_AMPM:Ljava/lang/String; = "ad_show_ampm"

.field private static final KEY_SHOW_DATE:Ljava/lang/String; = "ad_show_date"

.field private static final KEY_SHOW_TEXT:Ljava/lang/String; = "ad_text"

.field private static final KEY_SUNLIGHT_MODE:Ljava/lang/String; = "ad_sunlight_mode"

.field private static final TAG:Ljava/lang/String; = "ActiveDisplaySettings"


# instance fields
.field private mAllNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mBrightnessLevel:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

.field private mEnabledPref:Landroid/preference/SwitchPreference;

.field private mExcludedAppsPref:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

.field private mHideLowPriorityPref:Landroid/preference/CheckBoxPreference;

.field private mPocketModePref:Landroid/preference/ListPreference;

.field private mRedisplayPref:Landroid/preference/ListPreference;

.field private mShowAmPmPref:Landroid/preference/CheckBoxPreference;

.field private mShowDatePref:Landroid/preference/CheckBoxPreference;

.field private mShowTextPref:Landroid/preference/CheckBoxPreference;

.field private mSunlightModePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    return-void
.end method

.method private getExcludedApps()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "active_display_excluded_apps"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, excluded:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const/4 v1, 0x0

    .line 233
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private hasLightSensor()Z
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 224
    .local v0, sm:Landroid/hardware/SensorManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasProximitySensor()Z
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 219
    .local v0, sm:Landroid/hardware/SensorManager;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private storeExcludedApps(Ljava/util/Set;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 239
    .local v1, delimiter:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 240
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, "|"

    goto :goto_0

    .line 244
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "active_display_excluded_apps"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    return-void
.end method

.method private updatePocketModeSummary(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mPocketModePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mPocketModePref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mPocketModePref:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "active_display_pocket_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    return-void
.end method

.method private updateRedisplaySummary(J)V
    .locals 5
    .parameter "value"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mRedisplayPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mRedisplayPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mRedisplayPref:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "active_display_redisplay"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 215
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v5, 0x7f050005

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->addPreferencesFromResource(I)V

    .line 76
    const-string v5, "ad_enable"

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mEnabledPref:Landroid/preference/SwitchPreference;

    .line 77
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mEnabledPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "enable_active_display"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 79
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mEnabledPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v5, "ad_text"

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowTextPref:Landroid/preference/CheckBoxPreference;

    .line 82
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowTextPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "active_display_text"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    const-string v5, "ad_all_notifications"

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mAllNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 86
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mAllNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "active_display_all_notifications"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    const-string v5, "ad_hide_low_priority"

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mHideLowPriorityPref:Landroid/preference/CheckBoxPreference;

    .line 90
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mHideLowPriorityPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "active_display_hide_low_priority_notifications"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    const-string v5, "ad_pocket_mode"

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mPocketModePref:Landroid/preference/ListPreference;

    .line 94
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mPocketModePref:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "active_display_pocket_mode"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 97
    .local v1, mode:I
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mPocketModePref:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->updatePocketModeSummary(I)V

    .line 99
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->hasProximitySensor()Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mPocketModePref:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    :cond_0
    const-string v5, "ad_sunlight_mode"

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mSunlightModePref:Landroid/preference/CheckBoxPreference;

    .line 104
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mSunlightModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "active_display_sunlight_mode"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_7

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->hasLightSensor()Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mSunlightModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 111
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "ad_redisplay"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mRedisplayPref:Landroid/preference/ListPreference;

    .line 112
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mRedisplayPref:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "active_display_redisplay"

    const-wide/16 v9, 0x0

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 115
    .local v3, timeout:J
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mRedisplayPref:Landroid/preference/ListPreference;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, v3, v4}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->updateRedisplaySummary(J)V

    .line 118
    const-string v5, "ad_show_date"

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowDatePref:Landroid/preference/CheckBoxPreference;

    .line 119
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowDatePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "active_display_show_date"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_8

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    const-string v5, "ad_show_ampm"

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowAmPmPref:Landroid/preference/CheckBoxPreference;

    .line 123
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowAmPmPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "active_display_show_ampm"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_9

    :goto_6
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    const-string v5, "ad_brightness"

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mBrightnessLevel:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    .line 127
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mBrightnessLevel:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "active_display_brightness"

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setInitValue(I)V

    .line 129
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mBrightnessLevel:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {v5, p0}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    const-string v5, "ad_excluded_apps"

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mExcludedAppsPref:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    .line 132
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getExcludedApps()Ljava/util/Set;

    move-result-object v0

    .line 133
    .local v0, excludedApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mExcludedAppsPref:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    invoke-virtual {v5, v0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 134
    :cond_2
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mExcludedAppsPref:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    invoke-virtual {v5, p0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    return-void

    .end local v0           #excludedApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #mode:I
    .end local v2           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v3           #timeout:J
    :cond_3
    move v5, v7

    .line 77
    goto/16 :goto_0

    :cond_4
    move v5, v7

    .line 82
    goto/16 :goto_1

    :cond_5
    move v5, v7

    .line 86
    goto/16 :goto_2

    :cond_6
    move v5, v7

    .line 90
    goto/16 :goto_3

    .restart local v1       #mode:I
    :cond_7
    move v5, v7

    .line 104
    goto/16 :goto_4

    .restart local v2       #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v3       #timeout:J
    :cond_8
    move v5, v7

    .line 119
    goto :goto_5

    :cond_9
    move v6, v7

    .line 123
    goto :goto_6
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 138
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mRedisplayPref:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    .line 139
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 140
    .local v2, timeout:I
    int-to-long v5, v2

    invoke-direct {p0, v5, v6}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->updateRedisplaySummary(J)V

    .line 160
    .end local v2           #timeout:I
    :goto_0
    return v4

    .line 142
    .restart local p2
    :cond_0
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mPocketModePref:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    .line 143
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    .local v1, mode:I
    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->updatePocketModeSummary(I)V

    goto :goto_0

    .line 146
    .end local v1           #mode:I
    .restart local p2
    :cond_1
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mEnabledPref:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enable_active_display"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 151
    .restart local p2
    :cond_3
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mBrightnessLevel:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    if-ne p1, v5, :cond_4

    .line 152
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 153
    .local v0, brightness:I
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "active_display_brightness"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 156
    .end local v0           #brightness:I
    .restart local p2
    :cond_4
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mExcludedAppsPref:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    if-ne p1, v5, :cond_5

    .line 157
    check-cast p2, Ljava/util/Set;

    .end local p2
    invoke-direct {p0, p2}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->storeExcludedApps(Ljava/util/Set;)V

    goto :goto_0

    .restart local p2
    :cond_5
    move v4, v3

    .line 160
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 167
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowTextPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowTextPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 169
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "active_display_text"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    .end local v0           #value:Z
    :goto_0
    return v2

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mAllNotificationsPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mAllNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 174
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "active_display_all_notifications"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 177
    .end local v0           #value:Z
    :cond_3
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mHideLowPriorityPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 178
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mHideLowPriorityPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 179
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "active_display_hide_low_priority_notifications"

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 182
    .end local v0           #value:Z
    :cond_5
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mSunlightModePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 183
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mSunlightModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 184
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "active_display_sunlight_mode"

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 187
    .end local v0           #value:Z
    :cond_7
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowDatePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 188
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowDatePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 189
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "active_display_show_date"

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 192
    .end local v0           #value:Z
    :cond_9
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowAmPmPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 193
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->mShowAmPmPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 194
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ActiveDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "active_display_show_ampm"

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 198
    .end local v0           #value:Z
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method
