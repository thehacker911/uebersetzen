.class public Lcom/aokp/romcontrol/fragments/StatusBarBattery;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "StatusBarBattery.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREF_BATT_ANIMATE:Ljava/lang/String; = "battery_bar_animate"

.field private static final PREF_BATT_BAR:Ljava/lang/String; = "battery_bar_list"

.field private static final PREF_BATT_BAR_COLOR:Ljava/lang/String; = "battery_bar_color"

.field private static final PREF_BATT_BAR_STYLE:Ljava/lang/String; = "battery_bar_style"

.field private static final PREF_BATT_BAR_WIDTH:Ljava/lang/String; = "battery_bar_thickness"

.field private static final PREF_BATT_ICON:Ljava/lang/String; = "battery_icon_list"


# instance fields
.field mBatteryBar:Landroid/preference/ListPreference;

.field mBatteryBarChargingAnimation:Landroid/preference/CheckBoxPreference;

.field mBatteryBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field mBatteryBarStyle:Landroid/preference/ListPreference;

.field mBatteryBarThickness:Landroid/preference/ListPreference;

.field mBatteryIcon:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0b0055

    const/4 v6, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->setTitle(I)V

    .line 36
    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->addPreferencesFromResource(I)V

    .line 38
    const-string v1, "battery_icon_list"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryIcon:Landroid/preference/ListPreference;

    .line 39
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryIcon:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryIcon:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v4, "statusbar_battery_icon"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 43
    const-string v1, "battery_bar_list"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBar:Landroid/preference/ListPreference;

    .line 44
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBar:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBar:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v4, "statusbar_battery_bar"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 48
    const-string v1, "battery_bar_style"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarStyle:Landroid/preference/ListPreference;

    .line 49
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarStyle:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarStyle:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v4, "statusbar_battery_bar_style"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 53
    const-string v1, "battery_bar_color"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 54
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    const-string v1, "battery_bar_animate"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarChargingAnimation:Landroid/preference/CheckBoxPreference;

    .line 57
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarChargingAnimation:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "statusbar_battery_bar_animate"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    const-string v1, "battery_bar_thickness"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarThickness:Landroid/preference/ListPreference;

    .line 61
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarThickness:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarThickness:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v4, "statusbar_battery_bar_thickness"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 67
    .local v0, hasNavBarByDefault:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "navigation_bar_show"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBar:Landroid/preference/ListPreference;

    const v2, 0x7f060034

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 70
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBar:Landroid/preference/ListPreference;

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBar:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarStyle:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 78
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarChargingAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarThickness:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 81
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarStyle:Landroid/preference/ListPreference;

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 82
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(I)V

    .line 83
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarChargingAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 84
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarThickness:Landroid/preference/ListPreference;

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 86
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBar:Landroid/preference/ListPreference;

    const v2, 0x7f060036

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 73
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBar:Landroid/preference/ListPreference;

    const v2, 0x7f060035

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0b0055

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 103
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryIcon:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    .line 105
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 106
    .local v2, val:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v4, "statusbar_battery_icon"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    .line 157
    .end local v2           #val:I
    :goto_0
    return v3

    .line 108
    .restart local p2
    :cond_0
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v5, :cond_1

    .line 109
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, intHex:I
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "statusbar_battery_bar_color"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 118
    .end local v0           #hex:Ljava/lang/String;
    .end local v1           #intHex:I
    :cond_1
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBar:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    .line 120
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 121
    .restart local v2       #val:I
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "statusbar_battery_bar"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    if-nez v2, :cond_2

    .line 124
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarStyle:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 125
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v5, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 126
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarChargingAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 127
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarThickness:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 128
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarStyle:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 129
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(I)V

    .line 130
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarChargingAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 131
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarThickness:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarStyle:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 134
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 135
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarChargingAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 136
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarThickness:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 137
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarStyle:Landroid/preference/ListPreference;

    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, v8}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarChargingAnimation:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b01a5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 140
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarThickness:Landroid/preference/ListPreference;

    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 144
    .end local v2           #val:I
    .restart local p2
    :cond_3
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarStyle:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_4

    .line 146
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 147
    .restart local v2       #val:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v4, "statusbar_battery_bar_style"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    goto/16 :goto_0

    .line 150
    .end local v2           #val:I
    .restart local p2
    :cond_4
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarThickness:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_5

    .line 152
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 153
    .restart local v2       #val:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v4, "statusbar_battery_bar_thickness"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    goto/16 :goto_0

    .end local v2           #val:I
    .restart local p2
    :cond_5
    move v3, v4

    .line 157
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 91
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mBatteryBarChargingAnimation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 93
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarBattery;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "statusbar_battery_bar_animate"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    :goto_1
    return v1

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method
