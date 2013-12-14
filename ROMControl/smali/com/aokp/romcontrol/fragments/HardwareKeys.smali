.class public Lcom/aokp/romcontrol/fragments/HardwareKeys;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "HardwareKeys.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ACTION_APP_SWITCH:I = 0x2

.field private static final ACTION_IN_APP_SEARCH:I = 0x5

.field private static final ACTION_MENU:I = 0x1

.field private static final ACTION_NOTHING:I = 0x0

.field private static final ACTION_SEARCH:I = 0x3

.field private static final ACTION_VOICE_SEARCH:I = 0x4

.field private static final CATEGORY_APPSWITCH:Ljava/lang/String; = "app_switch_key"

.field private static final CATEGORY_ASSIST:Ljava/lang/String; = "assist_key"

.field private static final CATEGORY_HOME:Ljava/lang/String; = "home_key"

.field private static final CATEGORY_MENU:Ljava/lang/String; = "menu_key"

.field private static final CATEGORY_VOLUME:Ljava/lang/String; = "volume_keys"

.field private static final KEY_APP_SWITCH_LONG_PRESS:Ljava/lang/String; = "hardware_keys_app_switch_long_press"

.field private static final KEY_APP_SWITCH_PRESS:Ljava/lang/String; = "hardware_keys_app_switch_press"

.field private static final KEY_ASSIST_LONG_PRESS:Ljava/lang/String; = "hardware_keys_assist_long_press"

.field private static final KEY_ASSIST_PRESS:Ljava/lang/String; = "hardware_keys_assist_press"

.field private static final KEY_ENABLE_CUSTOM_BINDING:Ljava/lang/String; = "hardware_keys_enable_custom"

.field private static final KEY_HOME_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_home_double_tap"

.field private static final KEY_HOME_LONG_PRESS:Ljava/lang/String; = "hardware_keys_home_long_press"

.field private static final KEY_MASK_APP_SWITCH:I = 0x10

.field private static final KEY_MASK_ASSIST:I = 0x8

.field private static final KEY_MASK_BACK:I = 0x2

.field private static final KEY_MASK_HOME:I = 0x1

.field private static final KEY_MASK_MENU:I = 0x4

.field private static final KEY_MENU_LONG_PRESS:Ljava/lang/String; = "hardware_keys_menu_long_press"

.field private static final KEY_MENU_PRESS:Ljava/lang/String; = "hardware_keys_menu_press"

.field private static final PREF_LONGPRESS_TO_KILL:Ljava/lang/String; = "longpress_to_kill"


# instance fields
.field private mAppSwitchLongPressAction:Landroid/preference/ListPreference;

.field private mAppSwitchPressAction:Landroid/preference/ListPreference;

.field private mAssistLongPressAction:Landroid/preference/ListPreference;

.field private mAssistPressAction:Landroid/preference/ListPreference;

.field private mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mLongPressToKill:Landroid/preference/CheckBoxPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    return-void
.end method

.method private handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "pref"
    .parameter "newValue"
    .parameter "setting"

    .prologue
    .line 208
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 209
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, index:I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    return-void
.end method

.method private handleCheckboxClick(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "setting"

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 201
    .local v0, list:Landroid/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super/range {p0 .. p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v22, 0x7f050002

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 88
    .local v19, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 89
    .local v20, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 91
    .local v17, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x10e0044

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 93
    .local v7, deviceKeys:I
    and-int/lit8 v22, v7, 0x1

    if-eqz v22, :cond_4

    const/4 v12, 0x1

    .line 94
    .local v12, hasHomeKey:Z
    :goto_0
    and-int/lit8 v22, v7, 0x4

    if-eqz v22, :cond_5

    const/4 v13, 0x1

    .line 95
    .local v13, hasMenuKey:Z
    :goto_1
    and-int/lit8 v22, v7, 0x8

    if-eqz v22, :cond_6

    const/4 v11, 0x1

    .line 96
    .local v11, hasAssistKey:Z
    :goto_2
    and-int/lit8 v22, v7, 0x10

    if-eqz v22, :cond_7

    const/4 v10, 0x1

    .line 98
    .local v10, hasAppSwitchKey:Z
    :goto_3
    const-string v22, "foo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "device keys "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v9, 0x0

    .line 100
    .local v9, hasAnyBindableKey:Z
    const-string v22, "home_key"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    .line 102
    .local v14, homeCategory:Landroid/preference/PreferenceCategory;
    const-string v22, "menu_key"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 104
    .local v16, menuCategory:Landroid/preference/PreferenceCategory;
    const-string v22, "assist_key"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 106
    .local v4, assistCategory:Landroid/preference/PreferenceCategory;
    const-string v22, "app_switch_key"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 108
    .local v3, appSwitchCategory:Landroid/preference/PreferenceCategory;
    const-string v22, "volume_keys"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceCategory;

    .line 111
    .local v21, volumeCategory:Landroid/preference/PreferenceCategory;
    const-string v22, "longpress_to_kill"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mLongPressToKill:Landroid/preference/CheckBoxPreference;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mLongPressToKill:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    const-string v22, "kill_app_longpress_back"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    if-eqz v12, :cond_9

    .line 116
    const v22, 0x10e0026

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 118
    .local v6, defaultLongPressAction:I
    if-ltz v6, :cond_0

    const/16 v22, 0x5

    move/from16 v0, v22

    if-le v6, v0, :cond_1

    .line 120
    :cond_0
    const/4 v6, 0x0

    .line 123
    :cond_1
    const v22, 0x10e0027

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 125
    .local v5, defaultDoubleTapAction:I
    if-ltz v5, :cond_2

    const/16 v22, 0x5

    move/from16 v0, v22

    if-le v5, v0, :cond_3

    .line 127
    :cond_2
    const/4 v5, 0x0

    .line 130
    :cond_3
    const-string v22, "key_home_long_press_action"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 133
    .local v15, longPressAction:I
    const-string v22, "hardware_keys_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v15}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 135
    const-string v22, "key_home_double_tap_action"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 138
    .local v8, doubleTapAction:I
    const-string v22, "hardware_keys_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 140
    const/4 v9, 0x1

    .line 145
    .end local v5           #defaultDoubleTapAction:I
    .end local v6           #defaultLongPressAction:I
    .end local v8           #doubleTapAction:I
    .end local v15           #longPressAction:I
    :goto_5
    if-eqz v13, :cond_b

    .line 146
    const-string v22, "key_menu_action"

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 148
    .local v18, pressAction:I
    const-string v22, "hardware_keys_menu_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 150
    const-string v23, "key_menu_long_press_action"

    if-eqz v11, :cond_a

    const/16 v22, 0x0

    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 153
    .restart local v15       #longPressAction:I
    const-string v22, "hardware_keys_menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v15}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 155
    const/4 v9, 0x1

    .line 160
    .end local v15           #longPressAction:I
    .end local v18           #pressAction:I
    :goto_7
    if-eqz v11, :cond_c

    .line 161
    const-string v22, "key_assist_action"

    const/16 v23, 0x3

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 163
    .restart local v18       #pressAction:I
    const-string v22, "hardware_keys_assist_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 165
    const-string v22, "key_assist_long_press_action"

    const/16 v23, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 167
    .restart local v15       #longPressAction:I
    const-string v22, "hardware_keys_assist_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v15}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 169
    const/4 v9, 0x1

    .line 174
    .end local v15           #longPressAction:I
    .end local v18           #pressAction:I
    :goto_8
    if-eqz v10, :cond_d

    .line 175
    const-string v22, "key_app_switch_action"

    const/16 v23, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 177
    .restart local v18       #pressAction:I
    const-string v22, "hardware_keys_app_switch_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 179
    const-string v22, "key_app_switch_long_press_action"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 181
    .restart local v15       #longPressAction:I
    const-string v22, "hardware_keys_app_switch_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v15}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 183
    const/4 v9, 0x1

    .line 188
    .end local v15           #longPressAction:I
    .end local v18           #pressAction:I
    :goto_9
    const-string v22, "hardware_keys_enable_custom"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

    .line 191
    if-eqz v9, :cond_f

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    const-string v22, "hardware_key_rebinding"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    const/16 v22, 0x1

    :goto_a
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    :goto_b
    return-void

    .line 93
    .end local v3           #appSwitchCategory:Landroid/preference/PreferenceCategory;
    .end local v4           #assistCategory:Landroid/preference/PreferenceCategory;
    .end local v9           #hasAnyBindableKey:Z
    .end local v10           #hasAppSwitchKey:Z
    .end local v11           #hasAssistKey:Z
    .end local v12           #hasHomeKey:Z
    .end local v13           #hasMenuKey:Z
    .end local v14           #homeCategory:Landroid/preference/PreferenceCategory;
    .end local v16           #menuCategory:Landroid/preference/PreferenceCategory;
    .end local v21           #volumeCategory:Landroid/preference/PreferenceCategory;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 94
    .restart local v12       #hasHomeKey:Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 95
    .restart local v13       #hasMenuKey:Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 96
    .restart local v11       #hasAssistKey:Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 112
    .restart local v3       #appSwitchCategory:Landroid/preference/PreferenceCategory;
    .restart local v4       #assistCategory:Landroid/preference/PreferenceCategory;
    .restart local v9       #hasAnyBindableKey:Z
    .restart local v10       #hasAppSwitchKey:Z
    .restart local v14       #homeCategory:Landroid/preference/PreferenceCategory;
    .restart local v16       #menuCategory:Landroid/preference/PreferenceCategory;
    .restart local v21       #volumeCategory:Landroid/preference/PreferenceCategory;
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 142
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 150
    .restart local v18       #pressAction:I
    :cond_a
    const/16 v22, 0x3

    goto/16 :goto_6

    .line 157
    .end local v18           #pressAction:I
    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 171
    :cond_c
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 185
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_9

    .line 192
    :cond_e
    const/16 v22, 0x0

    goto :goto_a

    .line 195
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_b
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x1

    .line 221
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_home_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    :goto_0
    return v0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    const-string v2, "key_home_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_menu_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_menu_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 238
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_assist_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_4
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_5

    .line 242
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_assist_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_5
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_6

    .line 246
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_app_switch_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_6
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_7

    .line 250
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_app_switch_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 260
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

    const-string v2, "hardware_key_rebinding"

    invoke-direct {p0, v1, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->handleCheckboxClick(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .line 268
    :goto_0
    return v0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mLongPressToKill:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/HardwareKeys;->mLongPressToKill:Landroid/preference/CheckBoxPreference;

    const-string v2, "kill_app_longpress_back"

    invoke-direct {p0, v1, v2}, Lcom/aokp/romcontrol/fragments/HardwareKeys;->handleCheckboxClick(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method
