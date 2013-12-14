.class public Lcom/aokp/romcontrol/fragments/SPenGestures;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "SPenGestures.java"

# interfaces
.implements Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionCodes:[Ljava/lang/String;

.field private mActions:[Ljava/lang/String;

.field mDouble:Landroid/preference/ListPreference;

.field mDown:Landroid/preference/ListPreference;

.field mEnableIcon:Landroid/preference/CheckBoxPreference;

.field mEnableSPen:Landroid/preference/CheckBoxPreference;

.field mLeft:Landroid/preference/ListPreference;

.field mLong:Landroid/preference/ListPreference;

.field private mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

.field private mPreference:Landroid/preference/Preference;

.field mRight:Landroid/preference/ListPreference;

.field private mSPenChecked:Z

.field private mString:Ljava/lang/String;

.field mUp:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    return-void
.end method

.method private getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 3
    .parameter "preference"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 226
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    .line 239
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, uri:Ljava/lang/String;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/util/aokp/NavBarHelpers;->getProperSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 227
    .end local v0           #uri:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 228
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 230
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 232
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_5

    .line 234
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_5
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 236
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    goto :goto_0
.end method

.method private setSummaries()V
    .locals 2

    .prologue
    const v1, 0x7f0b005e

    .line 207
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mSPenChecked:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 216
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 217
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 218
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 219
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 220
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 196
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 197
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 203
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v3, 0x7f0b0025

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/SPenGestures;->setTitle(I)V

    .line 46
    const v3, 0x7f05000b

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/SPenGestures;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 50
    .local v2, prefs:Landroid/preference/PreferenceScreen;
    new-instance v3, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-direct {v3, p0, p0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;-><init>(Landroid/app/Fragment;Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;)V

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    .line 53
    invoke-static {}, Lcom/android/internal/util/aokp/NavBarHelpers;->getNavBarActions()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActionCodes:[Ljava/lang/String;

    .line 54
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActionCodes:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActions:[Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActions:[Ljava/lang/String;

    array-length v0, v3

    .line 56
    .local v0, actionqty:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActions:[Ljava/lang/String;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActionCodes:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    const-string v3, "enable_spen"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/SPenGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mEnableSPen:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mEnableSPen:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "enable_spen_actions"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 63
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mEnableSPen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mSPenChecked:Z

    .line 65
    const-string v3, "enable_stylus pointer"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/SPenGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mEnableIcon:Landroid/preference/CheckBoxPreference;

    .line 66
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mEnableIcon:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "stylus_icon_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 69
    const-string v3, "spen_left"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/SPenGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    .line 70
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActions:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActionCodes:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 74
    const-string v3, "spen_right"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/SPenGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    .line 75
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActions:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActionCodes:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 79
    const-string v3, "spen_up"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/SPenGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    .line 80
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActions:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActionCodes:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 84
    const-string v3, "spen_down"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/SPenGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    .line 85
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActions:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 87
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActionCodes:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 89
    const-string v3, "spen_double"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/SPenGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    .line 90
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActions:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActionCodes:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 94
    const-string v3, "spen_long"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/SPenGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    .line 95
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActions:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mActionCodes:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/SPenGestures;->setSummaries()V

    .line 100
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, result:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 127
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPreference:Landroid/preference/Preference;

    .line 128
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    .line 129
    sget-object v1, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_APP:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v1}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    .line 187
    .end local p2
    :cond_0
    :goto_0
    return v0

    .line 132
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    aget-object v2, v2, v3

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLeft:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 137
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPreference:Landroid/preference/Preference;

    .line 138
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    .line 139
    sget-object v1, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_APP:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v1}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    aget-object v2, v2, v4

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mRight:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    .restart local p2
    :cond_4
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_6

    .line 147
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPreference:Landroid/preference/Preference;

    .line 148
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    aget-object v1, v1, v6

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    .line 149
    sget-object v1, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_APP:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v1}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    goto :goto_0

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    aget-object v2, v2, v6

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mUp:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 156
    .restart local p2
    :cond_6
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_8

    .line 157
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPreference:Landroid/preference/Preference;

    .line 158
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    aget-object v1, v1, v5

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    .line 159
    sget-object v1, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_APP:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v1}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 160
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    goto/16 :goto_0

    .line 162
    :cond_7
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    aget-object v2, v2, v5

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDown:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 166
    .restart local p2
    :cond_8
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_a

    .line 167
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPreference:Landroid/preference/Preference;

    .line 168
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    aget-object v1, v1, v7

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    .line 169
    sget-object v1, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_APP:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v1}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 170
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    goto/16 :goto_0

    .line 172
    :cond_9
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    aget-object v2, v2, v7

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mDouble:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 176
    .restart local p2
    :cond_a
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 177
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPreference:Landroid/preference/Preference;

    .line 178
    sget-object v1, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    .line 179
    sget-object v1, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_APP:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v1}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 180
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    goto/16 :goto_0

    .line 182
    :cond_b
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->SPEN_ACTIONS:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mLong:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/SPenGestures;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 105
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mEnableSPen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mEnableSPen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mSPenChecked:Z

    .line 107
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "enable_spen_actions"

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mSPenChecked:Z

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 110
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/SPenGestures;->setSummaries()V

    .line 119
    :goto_0
    return v0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mEnableIcon:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "stylus_icon_enabled"

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mEnableIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 119
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "bmp"
    .parameter "isApplication"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mContentRes:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/SPenGestures;->mString:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    return-void
.end method
