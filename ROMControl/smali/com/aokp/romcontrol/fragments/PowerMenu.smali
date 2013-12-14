.class public Lcom/aokp/romcontrol/fragments/PowerMenu;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "PowerMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREF_AIRPLANE_TOGGLE:Ljava/lang/String; = "show_airplane_toggle"

.field private static final PREF_NAVBAR_HIDE:Ljava/lang/String; = "show_navbar_hide"

.field private static final PREF_REBOOT_KEYGUARD:Ljava/lang/String; = "show_reboot_keyguard"

.field private static final PREF_SCREENSHOT:Ljava/lang/String; = "show_screenshot"

.field private static final PREF_TORCH_TOGGLE:Ljava/lang/String; = "show_torch_toggle"

.field private static final PREF_VOLUME_STATE_TOGGLE:Ljava/lang/String; = "show_volume_state_toggle"


# instance fields
.field mShowAirplaneToggle:Landroid/preference/SwitchPreference;

.field mShowNavBarHide:Landroid/preference/SwitchPreference;

.field mShowRebootKeyguard:Landroid/preference/SwitchPreference;

.field mShowScreenShot:Landroid/preference/SwitchPreference;

.field mShowTorchToggle:Landroid/preference/SwitchPreference;

.field mShowVolumeStateToggle:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/PowerMenu;->addPreferencesFromResource(I)V

    .line 51
    const-string v0, "show_torch_toggle"

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowTorchToggle:Landroid/preference/SwitchPreference;

    .line 52
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowTorchToggle:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_torch_toggle"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowTorchToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    const-string v0, "show_screenshot"

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowScreenShot:Landroid/preference/SwitchPreference;

    .line 57
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowScreenShot:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_screenshot"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowScreenShot:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v0, "show_airplane_toggle"

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowAirplaneToggle:Landroid/preference/SwitchPreference;

    .line 62
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowAirplaneToggle:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_airplane_toggle"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowAirplaneToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    const-string v0, "show_navbar_hide"

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowNavBarHide:Landroid/preference/SwitchPreference;

    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowNavBarHide:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_navbar_hide"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 69
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowNavBarHide:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    const-string v0, "show_volume_state_toggle"

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowVolumeStateToggle:Landroid/preference/SwitchPreference;

    .line 72
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowVolumeStateToggle:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_volume_state_toggle"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 74
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowVolumeStateToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    const-string v0, "show_reboot_keyguard"

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowRebootKeyguard:Landroid/preference/SwitchPreference;

    .line 77
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowRebootKeyguard:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_reboot_keyguard"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowRebootKeyguard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->hasTorch:Z

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/PowerMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowTorchToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowScreenShot:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_screenshot"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 126
    :goto_0
    return v0

    .line 99
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowTorchToggle:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_torch_toggle"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 104
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowAirplaneToggle:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_airplane_toggle"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 109
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowNavBarHide:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_navbar_hide"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 114
    .restart local p2
    :cond_3
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowVolumeStateToggle:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    .line 115
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_volume_state_toggle"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 119
    .restart local p2
    :cond_4
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mShowRebootKeyguard:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_5

    .line 120
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/PowerMenu;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "power_dialog_show_reboot_keyguard"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 126
    .restart local p2
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
