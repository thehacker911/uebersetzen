.class public Lcom/aokp/romcontrol/fragments/StatusBarSignal;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "StatusBarSignal.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final STATUS_BAR_NETWORK_STATS:Ljava/lang/String; = "status_bar_show_network_stats"

.field private static final STATUS_BAR_NETWORK_STATS_UPDATE:Ljava/lang/String; = "status_bar_network_status_update"


# instance fields
.field mAltSignal:Landroid/preference/CheckBoxPreference;

.field mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field mDbmStyletyle:Landroid/preference/ListPreference;

.field mHideSignal:Landroid/preference/CheckBoxPreference;

.field private mNetStatsColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field private mNetStatsUpdate:Landroid/preference/ListPreference;

.field private mNetworkStats:Landroid/preference/CheckBoxPreference;

.field mShow4gForLte:Landroid/preference/CheckBoxPreference;

.field mWifiColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field mWifiStyle:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v4, 0x7f0b0020

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->setTitle(I)V

    .line 37
    const v4, 0x7f05000f

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 41
    .local v1, prefs:Landroid/preference/PreferenceScreen;
    const-string v4, "signal_style"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mDbmStyletyle:Landroid/preference/ListPreference;

    .line 42
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mDbmStyletyle:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 43
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mDbmStyletyle:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v8, "statusbar_signal_text"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 46
    const-string v4, "signal_color"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 47
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v4, "wifi_signal_style"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiStyle:Landroid/preference/ListPreference;

    .line 50
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiStyle:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiStyle:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v8, "statusbar_wifi_signal_text"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 54
    const-string v4, "status_bar_show_network_stats"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetworkStats:Landroid/preference/CheckBoxPreference;

    .line 55
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetworkStats:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "status_bar_network_stats"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    const-string v4, "wifi_signal_color"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 59
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v4, "status_bar_network_status_color"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 62
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const-string v4, "hide_signal"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mHideSignal:Landroid/preference/CheckBoxPreference;

    .line 65
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mHideSignal:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v7, "statusbar_hide_signal_bars"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 68
    const-string v4, "alt_signal"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mAltSignal:Landroid/preference/CheckBoxPreference;

    .line 69
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mAltSignal:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v7, "statusbar_signal_cluster_alt"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 72
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 74
    .local v0, check4gByDefault:Z
    const-string v4, "show_4g_for_lte"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mShow4gForLte:Landroid/preference/CheckBoxPreference;

    .line 75
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mShow4gForLte:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v7, "statusbar_signal_show_4g_for_lte"

    invoke-static {v5, v7, v0}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 78
    const-string v4, "status_bar_network_status_update"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsUpdate:Landroid/preference/ListPreference;

    .line 79
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "status_bar_network_stats_update_frequency"

    const/16 v7, 0x1f4

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    .line 81
    .local v2, statsUpdate:J
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsUpdate:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsUpdate:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsUpdate:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsUpdate:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mDbmStyletyle:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 87
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    const v5, 0x7f0b0057

    invoke-virtual {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(I)V

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiStyle:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 92
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    const v5, 0x7f0b0058

    invoke-virtual {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(I)V

    .line 95
    :cond_1
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->hasPhoneAbility(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mDbmStyletyle:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 97
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mHideSignal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mAltSignal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mShow4gForLte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :cond_2
    return-void

    .end local v0           #check4gByDefault:Z
    .end local v2           #statsUpdate:J
    :cond_3
    move v4, v6

    .line 55
    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 131
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mDbmStyletyle:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_2

    .line 133
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 134
    .local v5, val:I
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v9, "statusbar_signal_text"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-nez v5, :cond_0

    :goto_0
    invoke-virtual {v8, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 137
    if-nez v5, :cond_1

    .line 138
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    const v8, 0x7f0b0057

    invoke-virtual {v6, v8}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(I)V

    .line 142
    :goto_1
    invoke-static {}, Lcom/aokp/romcontrol/util/Helpers;->restartSystemUI()V

    .line 192
    .end local v5           #val:I
    :goto_2
    return v7

    .restart local v5       #val:I
    :cond_0
    move v6, v7

    .line 136
    goto :goto_0

    .line 140
    :cond_1
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v6, v10}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    .end local v5           #val:I
    .restart local p2
    :cond_2
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v8, :cond_3

    .line 145
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v2

    .line 150
    .local v2, intHex:I
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v8, "statusbar_signal_text_color"

    invoke-static {v6, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 153
    .end local v0           #hex:Ljava/lang/String;
    .end local v2           #intHex:I
    :cond_3
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiStyle:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_6

    .line 155
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 156
    .restart local v5       #val:I
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v9, "statusbar_wifi_signal_text"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-nez v5, :cond_4

    :goto_3
    invoke-virtual {v8, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 159
    if-nez v5, :cond_5

    .line 160
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    const v8, 0x7f0b0058

    invoke-virtual {v6, v8}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(I)V

    .line 164
    :goto_4
    invoke-static {}, Lcom/aokp/romcontrol/util/Helpers;->restartSystemUI()V

    goto :goto_2

    :cond_4
    move v6, v7

    .line 158
    goto :goto_3

    .line 162
    :cond_5
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v6, v10}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 166
    .end local v5           #val:I
    .restart local p2
    :cond_6
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mWifiColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v8, :cond_7

    .line 167
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .restart local v0       #hex:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v2

    .line 172
    .restart local v2       #intHex:I
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v8, "statusbar_wifi_signal_text_color"

    invoke-static {v6, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 175
    .end local v0           #hex:Ljava/lang/String;
    .end local v2           #intHex:I
    :cond_7
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsUpdate:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_8

    move-object v6, p2

    .line 176
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 177
    .local v3, updateInterval:J
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsUpdate:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, index:I
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "status_bar_network_stats_update_frequency"

    invoke-static {v6, v8, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 180
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsUpdate:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsUpdate:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 182
    .end local v1           #index:I
    .end local v3           #updateInterval:J
    .restart local p2
    :cond_8
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetStatsColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v8, :cond_9

    .line 183
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0       #hex:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v2

    .line 188
    .restart local v2       #intHex:I
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v8, "status_bar_network_stats_text_color"

    invoke-static {v6, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .end local v0           #hex:Ljava/lang/String;
    .end local v2           #intHex:I
    :cond_9
    move v7, v6

    .line 192
    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 107
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mHideSignal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "statusbar_hide_signal_bars"

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mHideSignal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 126
    :goto_0
    return v2

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mAltSignal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "statusbar_signal_cluster_alt"

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mAltSignal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mShow4gForLte:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "statusbar_signal_show_4g_for_lte"

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mShow4gForLte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetworkStats:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->mNetworkStats:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 122
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarSignal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_network_stats"

    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 126
    .end local v0           #value:Z
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method
