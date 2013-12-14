.class public Lcom/aokp/romcontrol/fragments/AnimationControls;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "AnimationControls.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ACTIVITY_CLOSE:Ljava/lang/String; = "activity_close"

.field private static final ACTIVITY_OPEN:Ljava/lang/String; = "activity_open"

.field private static final ANIMATION_DURATION:Ljava/lang/String; = "animation_duration"

.field private static final ANIMATION_NO_OVERRIDE:Ljava/lang/String; = "animation_no_override"

.field private static final TASK_CLOSE:Ljava/lang/String; = "task_close"

.field private static final TASK_MOVE_TO_BACK:Ljava/lang/String; = "task_move_to_back"

.field private static final TASK_MOVE_TO_FRONT:Ljava/lang/String; = "task_move_to_front"

.field private static final TASK_OPEN:Ljava/lang/String; = "task_open"

.field private static final WALLPAPER_CLOSE:Ljava/lang/String; = "wallpaper_close"

.field private static final WALLPAPER_INTRA_CLOSE:Ljava/lang/String; = "wallpaper_intra_close"

.field private static final WALLPAPER_INTRA_OPEN:Ljava/lang/String; = "wallpaper_intra_open"

.field private static final WALLPAPER_OPEN:Ljava/lang/String; = "wallpaper_open"


# instance fields
.field mActivityClosePref:Landroid/preference/ListPreference;

.field mActivityOpenPref:Landroid/preference/ListPreference;

.field mAnimNoOverride:Landroid/preference/CheckBoxPreference;

.field mAnimationDuration:Lcom/aokp/romcontrol/widgets/AnimBarPreference;

.field private mAnimations:[I

.field private mAnimationsNum:[Ljava/lang/String;

.field private mAnimationsStrings:[Ljava/lang/String;

.field mTaskClosePref:Landroid/preference/ListPreference;

.field mTaskMoveToBackPref:Landroid/preference/ListPreference;

.field mTaskMoveToFrontPref:Landroid/preference/ListPreference;

.field mTaskOpenPref:Landroid/preference/ListPreference;

.field mWallpaperClose:Landroid/preference/ListPreference;

.field mWallpaperIntraClose:Landroid/preference/ListPreference;

.field mWallpaperIntraOpen:Landroid/preference/ListPreference;

.field mWallpaperOpen:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    return-void
.end method

.method private getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 219
    const-string v1, ""

    .line 220
    .local v1, mString:Ljava/lang/String;
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityOpenPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 221
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    aget-object v1, v2, v4

    .line 242
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    invoke-static {v2, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, mNum:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    return-object v2

    .line 222
    .end local v0           #mNum:I
    :cond_1
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityClosePref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 223
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v2, v3

    goto :goto_0

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskOpenPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 225
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v2, v3

    goto :goto_0

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskClosePref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 227
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v2, v3

    goto :goto_0

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToFrontPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 229
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v2, v3

    goto :goto_0

    .line 230
    :cond_5
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToBackPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 231
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v1, v2, v3

    goto :goto_0

    .line 232
    :cond_6
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperOpen:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 233
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v1, v2, v3

    goto :goto_0

    .line 234
    :cond_7
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperClose:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 235
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v1, v2, v3

    goto :goto_0

    .line 236
    :cond_8
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraOpen:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 237
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v1, v2, v3

    goto :goto_0

    .line 238
    :cond_9
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraClose:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 239
    sget-object v2, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v1, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v4, 0x7f0b03e5

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->setTitle(I)V

    .line 57
    const v4, 0x7f050006

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->addPreferencesFromResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 60
    .local v3, prefs:Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getAnimationsList()[I

    move-result-object v4

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimations:[I

    .line 61
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimations:[I

    array-length v0, v4

    .line 62
    .local v0, animqty:I
    new-array v4, v0, [Ljava/lang/String;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    .line 63
    new-array v4, v0, [Ljava/lang/String;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    .line 64
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 65
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimations:[I

    aget v6, v6, v2

    invoke-static {v5, v6}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getProperName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 66
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimations:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const-string v4, "animation_no_override"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimNoOverride:Landroid/preference/CheckBoxPreference;

    .line 70
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimNoOverride:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "animation_controls_no_override"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 73
    const-string v4, "activity_open"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityOpenPref:Landroid/preference/ListPreference;

    .line 74
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityOpenPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityOpenPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityOpenPref:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityOpenPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 77
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityOpenPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 79
    const-string v4, "activity_close"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityClosePref:Landroid/preference/ListPreference;

    .line 80
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityClosePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityClosePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityClosePref:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityClosePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityClosePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 85
    const-string v4, "task_open"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskOpenPref:Landroid/preference/ListPreference;

    .line 86
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskOpenPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskOpenPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskOpenPref:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskOpenPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 89
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskOpenPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 91
    const-string v4, "task_close"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskClosePref:Landroid/preference/ListPreference;

    .line 92
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskClosePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskClosePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskClosePref:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskClosePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskClosePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 97
    const-string v4, "task_move_to_front"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToFrontPref:Landroid/preference/ListPreference;

    .line 98
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToFrontPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 99
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToFrontPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToFrontPref:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToFrontPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToFrontPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 103
    const-string v4, "task_move_to_back"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToBackPref:Landroid/preference/ListPreference;

    .line 104
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToBackPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToBackPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToBackPref:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToBackPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToBackPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 109
    const-string v4, "wallpaper_open"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperOpen:Landroid/preference/ListPreference;

    .line 110
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperOpen:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperOpen:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperOpen:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperOpen:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperOpen:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 115
    const-string v4, "wallpaper_close"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperClose:Landroid/preference/ListPreference;

    .line 116
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperClose:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperClose:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperClose:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperClose:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperClose:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 121
    const-string v4, "wallpaper_intra_open"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraOpen:Landroid/preference/ListPreference;

    .line 122
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraOpen:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraOpen:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraOpen:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraOpen:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraOpen:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 127
    const-string v4, "wallpaper_intra_close"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraClose:Landroid/preference/ListPreference;

    .line 128
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraClose:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraClose:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraClose:Landroid/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraClose:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsStrings:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 131
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraClose:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationsNum:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 133
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "animation_controls_duration"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, defaultDuration:I
    const-string v4, "animation_duration"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/AnimationControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/aokp/romcontrol/widgets/AnimBarPreference;

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationDuration:Lcom/aokp/romcontrol/widgets/AnimBarPreference;

    .line 136
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationDuration:Lcom/aokp/romcontrol/widgets/AnimBarPreference;

    invoke-virtual {v4, v1}, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->setInitValue(I)V

    .line 137
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationDuration:Lcom/aokp/romcontrol/widgets/AnimBarPreference;

    invoke-virtual {v4, p0}, Lcom/aokp/romcontrol/widgets/AnimBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, result:Z
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityOpenPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 156
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 215
    .end local v1           #val:I
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/AnimationControls;->getProperSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    return v0

    .line 160
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mActivityClosePref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 162
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 163
    .restart local v1       #val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 166
    goto :goto_0

    .end local v1           #val:I
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskOpenPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 168
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    .restart local v1       #val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 172
    goto :goto_0

    .end local v1           #val:I
    .restart local p2
    :cond_3
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskClosePref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 174
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 175
    .restart local v1       #val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 178
    goto :goto_0

    .end local v1           #val:I
    .restart local p2
    :cond_4
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToFrontPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 180
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 181
    .restart local v1       #val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 184
    goto :goto_0

    .end local v1           #val:I
    .restart local p2
    :cond_5
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mTaskMoveToBackPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 186
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    .restart local v1       #val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 189
    goto :goto_0

    .end local v1           #val:I
    .restart local p2
    :cond_6
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperOpen:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 191
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 192
    .restart local v1       #val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 194
    goto/16 :goto_0

    .end local v1           #val:I
    .restart local p2
    :cond_7
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperClose:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 196
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 197
    .restart local v1       #val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 199
    goto/16 :goto_0

    .end local v1           #val:I
    .restart local p2
    :cond_8
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraOpen:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 201
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 202
    .restart local v1       #val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 204
    goto/16 :goto_0

    .end local v1           #val:I
    .restart local p2
    :cond_9
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mWallpaperIntraClose:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 206
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 207
    .restart local v1       #val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 209
    goto/16 :goto_0

    .end local v1           #val:I
    .restart local p2
    :cond_a
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimationDuration:Lcom/aokp/romcontrol/widgets/AnimBarPreference;

    if-ne p1, v2, :cond_0

    .line 210
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 211
    .restart local v1       #val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "animation_controls_duration"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimNoOverride:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mContentRes:Landroid/content/ContentResolver;

    const-string v1, "animation_controls_no_override"

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AnimationControls;->mAnimNoOverride:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
