.class public Lcom/aokp/romcontrol/fragments/StatusBarClock;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "StatusBarClock.java"

# interfaces
.implements Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREF_AM_PM_STYLE:Ljava/lang/String; = "clock_am_pm_style"

.field private static final PREF_CLOCK_DOUBLECLICK:Ljava/lang/String; = "clock_doubleclick"

.field private static final PREF_CLOCK_LONGCLICK:Ljava/lang/String; = "clock_longclick"

.field private static final PREF_CLOCK_SHORTCLICK:Ljava/lang/String; = "clock_shortclick"

.field private static final PREF_CLOCK_WEEKDAY:Ljava/lang/String; = "clock_weekday"

.field private static final PREF_COLOR_PICKER:Ljava/lang/String; = "clock_color"

.field private static final PREF_ENABLE:Ljava/lang/String; = "clock_style"


# instance fields
.field private doubleClick:I

.field private longClick:I

.field mClockAmPmstyle:Landroid/preference/ListPreference;

.field mClockDoubleClick:Landroid/preference/ListPreference;

.field mClockLongClick:Landroid/preference/ListPreference;

.field mClockShortClick:Landroid/preference/ListPreference;

.field mClockStyle:Landroid/preference/ListPreference;

.field mClockWeekday:Landroid/preference/ListPreference;

.field mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field private mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

.field private mPreference:Landroid/preference/Preference;

.field private mString:Ljava/lang/String;

.field private shortClick:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->shortClick:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->longClick:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->doubleClick:I

    return-void
.end method

.method private getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 4
    .parameter "preference"

    .prologue
    .line 190
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockDoubleClick:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 191
    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATION_CLOCK:[Ljava/lang/String;

    iget v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->doubleClick:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mString:Ljava/lang/String;

    .line 198
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mString:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, uri:Ljava/lang/String;
    const-string v0, ""

    .line 201
    .local v0, empty:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 222
    .end local v0           #empty:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 192
    .end local v1           #uri:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockLongClick:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 193
    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATION_CLOCK:[Ljava/lang/String;

    iget v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->longClick:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mString:Ljava/lang/String;

    goto :goto_0

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockShortClick:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 195
    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATION_CLOCK:[Ljava/lang/String;

    iget v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->shortClick:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mString:Ljava/lang/String;

    goto :goto_0

    .line 205
    .restart local v0       #empty:Ljava/lang/String;
    .restart local v1       #uri:Ljava/lang/String;
    :cond_3
    const-string v2, "**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 206
    const-string v2, "**alarm**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 207
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0176

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 208
    :cond_4
    const-string v2, "**event**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 210
    :cond_5
    const-string v2, "**voiceassist**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 211
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b017b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 212
    :cond_6
    const-string v2, "**clockoptions**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 213
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 214
    :cond_7
    const-string v2, "**today**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 215
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0179

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 216
    :cond_8
    const-string v2, "**null**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 217
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 220
    :cond_9
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v2, v1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 222
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 179
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 180
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0b0056

    const/4 v5, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->setTitle(I)V

    .line 50
    const v1, 0x7f05000d

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 54
    .local v0, prefs:Landroid/preference/PreferenceScreen;
    new-instance v1, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-direct {v1, p0, p0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;-><init>(Landroid/app/Fragment;Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;)V

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    .line 56
    const-string v1, "clock_style"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockStyle:Landroid/preference/ListPreference;

    .line 57
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockStyle:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockStyle:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "statusbar_clock_style"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 61
    const-string v1, "clock_am_pm_style"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockAmPmstyle:Landroid/preference/ListPreference;

    .line 62
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockAmPmstyle:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockAmPmstyle:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "statusbar_clock_am_pm_style"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 66
    const-string v1, "clock_color"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 67
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string v1, "clock_weekday"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockWeekday:Landroid/preference/ListPreference;

    .line 70
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockWeekday:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockWeekday:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "statusbar_clock_weekday"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 74
    const-string v1, "clock_shortclick"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockShortClick:Landroid/preference/ListPreference;

    .line 75
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockShortClick:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockShortClick:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockShortClick:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    const-string v1, "clock_longclick"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockLongClick:Landroid/preference/ListPreference;

    .line 79
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockLongClick:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockLongClick:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockLongClick:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    const-string v1, "clock_doubleclick"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockDoubleClick:Landroid/preference/ListPreference;

    .line 83
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockDoubleClick:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockDoubleClick:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockStyle:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockAmPmstyle:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockWeekday:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockAmPmstyle:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 91
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v1, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(I)V

    .line 92
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockWeekday:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b0056

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, result:Z
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockAmPmstyle:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    .line 102
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 103
    .local v3, val:I
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "statusbar_clock_am_pm_style"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 170
    .end local v3           #val:I
    :cond_0
    :goto_0
    return v2

    .line 106
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockStyle:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_3

    .line 108
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 109
    .restart local v3       #val:I
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "statusbar_clock_style"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 111
    if-nez v3, :cond_2

    .line 112
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockAmPmstyle:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 113
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 114
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockWeekday:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 115
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockAmPmstyle:Landroid/preference/ListPreference;

    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 116
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, v8}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(I)V

    .line 117
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockWeekday:Landroid/preference/ListPreference;

    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockAmPmstyle:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 120
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setEnabled(Z)V

    .line 121
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockWeekday:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 122
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockAmPmstyle:Landroid/preference/ListPreference;

    invoke-virtual {v4, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v4, v9}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockWeekday:Landroid/preference/ListPreference;

    const v5, 0x7f0b0172

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 126
    .end local v3           #val:I
    .restart local p2
    :cond_3
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    if-ne p1, v4, :cond_4

    .line 127
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, intHex:I
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "statusbar_clock_color"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    const-string v4, "ROMAN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    .end local v0           #hex:Ljava/lang/String;
    .end local v1           #intHex:I
    :cond_4
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockWeekday:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_5

    .line 136
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 137
    .restart local v3       #val:I
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "statusbar_clock_weekday"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 139
    goto/16 :goto_0

    .end local v3           #val:I
    .restart local p2
    :cond_5
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockShortClick:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_7

    .line 140
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mPreference:Landroid/preference/Preference;

    .line 141
    sget-object v4, Landroid/provider/Settings$System;->NOTIFICATION_CLOCK:[Ljava/lang/String;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->shortClick:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mString:Ljava/lang/String;

    .line 142
    const-string v4, "**app**"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 143
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v4}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    goto/16 :goto_0

    .line 145
    :cond_6
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->NOTIFICATION_CLOCK:[Ljava/lang/String;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->shortClick:I

    aget-object v5, v5, v6

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 147
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockShortClick:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockShortClick:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 149
    .restart local p2
    :cond_7
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockLongClick:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_9

    .line 150
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mPreference:Landroid/preference/Preference;

    .line 151
    sget-object v4, Landroid/provider/Settings$System;->NOTIFICATION_CLOCK:[Ljava/lang/String;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->longClick:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mString:Ljava/lang/String;

    .line 152
    const-string v4, "**app**"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 153
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v4}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    goto/16 :goto_0

    .line 155
    :cond_8
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->NOTIFICATION_CLOCK:[Ljava/lang/String;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->longClick:I

    aget-object v5, v5, v6

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 157
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockLongClick:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockLongClick:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 159
    .restart local p2
    :cond_9
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockDoubleClick:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    .line 160
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mPreference:Landroid/preference/Preference;

    .line 161
    sget-object v4, Landroid/provider/Settings$System;->NOTIFICATION_CLOCK:[Ljava/lang/String;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->doubleClick:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mString:Ljava/lang/String;

    .line 162
    const-string v4, "**app**"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 163
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v4}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    goto/16 :goto_0

    .line 165
    :cond_a
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->NOTIFICATION_CLOCK:[Ljava/lang/String;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->doubleClick:I

    aget-object v5, v5, v6

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 167
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockDoubleClick:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mClockDoubleClick:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/StatusBarClock;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "bmp"
    .parameter "isApplication"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mContentRes:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarClock;->mString:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    return-void
.end method
