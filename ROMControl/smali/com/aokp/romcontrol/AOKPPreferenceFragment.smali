.class public Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "AOKPPreferenceFragment.java"

# interfaces
.implements Lcom/aokp/romcontrol/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsPreferenceFragment"


# instance fields
.field protected hasColorTuning:Z

.field protected hasFastCharge:Z

.field protected hasHardwareButtons:Z

.field protected hasTorch:Z

.field protected hasVibration:Z

.field protected mActionBar:Landroid/app/ActionBar;

.field protected mContentRes:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field private mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

.field protected mShortcutFragment:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->hasVibration:Z

    .line 205
    return-void
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/AOKPPreferenceFragment;)Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/aokp/romcontrol/AOKPPreferenceFragment;Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;)Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method public static hasPhoneAbility(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 91
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 93
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 97
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPhabletUI(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_ui_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSW600DPScreen(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x4416

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 102
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 103
    .local v3, widthPixels:I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 104
    .local v2, heightPixels:I
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 105
    .local v0, density:F
    if-ge v3, v2, :cond_2

    .line 106
    int-to-float v6, v3

    div-float/2addr v6, v0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    int-to-float v6, v2

    div-float/2addr v6, v0

    cmpl-float v6, v6, v7

    if-gez v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public static isTabletUI(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_ui_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 304
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 122
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/ButtonBarHandler;

    invoke-interface {v0}, Lcom/aokp/romcontrol/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getParentActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/ButtonBarHandler;

    invoke-interface {v0}, Lcom/aokp/romcontrol/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method protected isCheckBoxPrefernceChecked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 322
    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 323
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 325
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->hasTorch:Z

    .line 61
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->hasHardwareButtons:Z

    .line 62
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->hasFastCharge:Z

    .line 63
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->hasColorTuning:Z

    .line 64
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mActionBar:Landroid/app/ActionBar;

    .line 66
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mContentRes:Landroid/content/ContentResolver;

    .line 67
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "started_from_shortcut"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mShortcutFragment:Z

    .line 70
    :cond_0
    iget-boolean v1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mShortcutFragment:Z

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    :cond_1
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 75
    .local v0, mVibrator:Landroid/os/Vibrator;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iput-boolean v4, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->hasVibration:Z

    .line 78
    :cond_2
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    .line 159
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 160
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    .line 183
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;->access$002(Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 193
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 203
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 114
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    new-instance v0, Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/aokp/romcontrol/DialogCreatable;I)V

    iput-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    .line 168
    iget-object v0, p0, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->mDialogFragment:Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 310
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/high16 v3, 0x7f0b

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 312
    const/4 v1, 0x1

    .line 317
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 314
    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v1, 0x0

    goto :goto_0
.end method
