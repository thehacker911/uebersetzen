.class public Lcom/aokp/romcontrol/fragments/UserInterface;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "UserInterface.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;
    }
.end annotation


# static fields
.field private static final BOOTANIMATION_SYSTEM_PATH:Ljava/lang/String; = "/system/media/bootanimation.zip"

.field private static final BOOTANIMATION_USER_PATH:Ljava/lang/String; = "/data/local/bootanimation.zip"

.field private static final DEBUG:Z = false

.field private static final PREF_180:Ljava/lang/CharSequence; = null

.field private static final PREF_270:Ljava/lang/CharSequence; = null

.field private static final PREF_CUSTOM_BOOTANIM:Ljava/lang/CharSequence; = null

.field private static final PREF_DARK_UI:Ljava/lang/CharSequence; = null

.field private static final PREF_DISABLE_BOOTANIM:Ljava/lang/CharSequence; = null

.field private static final PREF_DISPLAY:Ljava/lang/CharSequence; = null

.field private static final PREF_FORCE_DUAL_PANEL:Ljava/lang/CharSequence; = null

.field private static final PREF_HIDE_EXTRAS:Ljava/lang/CharSequence; = null

.field private static final PREF_MISC:Ljava/lang/CharSequence; = null

.field private static final PREF_NAVBAR:Ljava/lang/CharSequence; = null

.field private static final PREF_POWER_CRT_MODE:Ljava/lang/CharSequence; = null

.field private static final PREF_POWER_CRT_SCREEN_OFF:Ljava/lang/CharSequence; = null

.field private static final PREF_RAM_USAGE_BAR:Ljava/lang/CharSequence; = null

.field private static final PREF_RECENT_GOOGLE_ASSIST:Ljava/lang/CharSequence; = null

.field private static final PREF_RECENT_KILL_ALL:Ljava/lang/CharSequence; = null

.field private static final PREF_SHOW_OVERFLOW:Ljava/lang/CharSequence; = null

.field private static final PREF_USER_MODE_UI:Ljava/lang/CharSequence; = null

.field private static final PREF_WAKEUP_WHEN_PLUGGED_UNPLUGGED:Ljava/lang/CharSequence; = null

.field private static final REQUEST_PICK_BOOT_ANIMATION:I = 0xcb

.field private static final WALLPAPER_NAME:Ljava/lang/String; = "notification_wallpaper.jpg"

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mLastRandomInsultIndex:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field private errorHandler:Landroid/os/Handler;

.field private finishedHandler:Landroid/os/Handler;

.field mAllow180Rotation:Landroid/preference/CheckBoxPreference;

.field mAllow270Rotation:Landroid/preference/CheckBoxPreference;

.field private mAnimationPart1:Landroid/graphics/drawable/AnimationDrawable;

.field private mAnimationPart2:Landroid/graphics/drawable/AnimationDrawable;

.field private mBootAnimationPath:Ljava/lang/String;

.field mCrtMode:Landroid/preference/ListPreference;

.field mCrtOff:Landroid/preference/CheckBoxPreference;

.field mCustomBootAnimation:Landroid/preference/Preference;

.field mCustomBootAnimationDialog:Landroid/app/AlertDialog;

.field mDarkUI:Landroid/preference/CheckBoxPreference;

.field mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

.field mDualpane:Landroid/preference/CheckBoxPreference;

.field mError:Landroid/widget/TextView;

.field private mErrormsg:Ljava/lang/String;

.field mHideExtras:Landroid/preference/CheckBoxPreference;

.field private mInsults:[Ljava/lang/String;

.field mRamBar:Landroid/preference/CheckBoxPreference;

.field private mRandomGenerator:Ljava/util/Random;

.field mRecentGoog:Landroid/preference/CheckBoxPreference;

.field mRecentKillAll:Landroid/preference/CheckBoxPreference;

.field private mSeekbarProgress:I

.field mShowActionOverflow:Landroid/preference/CheckBoxPreference;

.field private mUiMode:I

.field mUserModeUI:Landroid/preference/ListPreference;

.field mUserRotationAngles:I

.field mView:Landroid/widget/ImageView;

.field mWakeUpWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "rotate_180"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_180:Ljava/lang/CharSequence;

    .line 81
    const-string v0, "rotate_270"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_270:Ljava/lang/CharSequence;

    .line 82
    const-string v0, "show_overflow"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_SHOW_OVERFLOW:Ljava/lang/CharSequence;

    .line 83
    const-string v0, "recent_kill_all"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_RECENT_KILL_ALL:Ljava/lang/CharSequence;

    .line 84
    const-string v0, "recent_google_assist"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_RECENT_GOOGLE_ASSIST:Ljava/lang/CharSequence;

    .line 85
    const-string v0, "ram_usage_bar"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_RAM_USAGE_BAR:Ljava/lang/CharSequence;

    .line 86
    const-string v0, "user_mode_ui"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_USER_MODE_UI:Ljava/lang/CharSequence;

    .line 87
    const-string v0, "hide_extras"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_HIDE_EXTRAS:Ljava/lang/CharSequence;

    .line 88
    const-string v0, "wakeup_when_plugged_unplugged"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_WAKEUP_WHEN_PLUGGED_UNPLUGGED:Ljava/lang/CharSequence;

    .line 90
    const-string v0, "force_dualpanel"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_FORCE_DUAL_PANEL:Ljava/lang/CharSequence;

    .line 91
    const-string v0, "disable_bootanimation"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_DISABLE_BOOTANIM:Ljava/lang/CharSequence;

    .line 92
    const-string v0, "custom_bootanimation"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_CUSTOM_BOOTANIM:Ljava/lang/CharSequence;

    .line 93
    const-string v0, "navbar"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_NAVBAR:Ljava/lang/CharSequence;

    .line 94
    const-string v0, "misc"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_MISC:Ljava/lang/CharSequence;

    .line 95
    const-string v0, "display"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_DISPLAY:Ljava/lang/CharSequence;

    .line 96
    const-string v0, "system_power_crt_mode"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_POWER_CRT_MODE:Ljava/lang/CharSequence;

    .line 97
    const-string v0, "system_power_crt_screen_off"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_POWER_CRT_SCREEN_OFF:Ljava/lang/CharSequence;

    .line 98
    const-string v0, "ui_inverted_mode"

    sput-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_DARK_UI:Ljava/lang/CharSequence;

    .line 134
    const/4 v0, -0x1

    sput v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mLastRandomInsultIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->TAG:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRandomGenerator:Ljava/util/Random;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUserRotationAngles:I

    .line 712
    new-instance v0, Lcom/aokp/romcontrol/fragments/UserInterface$7;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$7;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->errorHandler:Landroid/os/Handler;

    .line 720
    new-instance v0, Lcom/aokp/romcontrol/fragments/UserInterface$8;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$8;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->finishedHandler:Landroid/os/Handler;

    .line 800
    return-void
.end method

.method private DisableBootAnimation()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 744
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->resetSwaggedOutBootAnimation()V

    .line 745
    const-string v1, "grep -q \"debug.sf.nobootanimation\" /system/build.prop"

    invoke-static {v1}, Lcom/aokp/romcontrol/util/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/CommandResult;->success()Z

    move-result v1

    if-nez v1, :cond_0

    .line 749
    const-string v1, "rw"

    invoke-static {v1}, Lcom/aokp/romcontrol/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 750
    const-string v4, "echo debug.sf.nobootanimation=%d >> /system/build.prop"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aokp/romcontrol/util/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    .line 753
    const-string v1, "ro"

    invoke-static {v1}, Lcom/aokp/romcontrol/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 756
    :cond_0
    new-instance v0, Lcom/aokp/romcontrol/fragments/UserInterface$10;

    invoke-direct {v0, p0, v2}, Lcom/aokp/romcontrol/fragments/UserInterface$10;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface;Z)V

    .line 775
    .local v0, processor:Lcom/aokp/romcontrol/util/AbstractAsyncSuCMDProcessor;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/UserInterface;->getBootAnimationCommand(Z)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/util/AbstractAsyncSuCMDProcessor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 776
    return-void

    .end local v0           #processor:Lcom/aokp/romcontrol/util/AbstractAsyncSuCMDProcessor;
    :cond_1
    move v1, v3

    .line 750
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/fragments/UserInterface;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/UserInterface;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/UserInterface;->installBootAnim(Landroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mLastRandomInsultIndex:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    sput p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mLastRandomInsultIndex:I

    return p0
.end method

.method static synthetic access$1300()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/UserInterface;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->resetBootAnimation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/aokp/romcontrol/fragments/UserInterface;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aokp/romcontrol/fragments/UserInterface;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/UserInterface;->createPreview(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/aokp/romcontrol/fragments/UserInterface;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart2:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aokp/romcontrol/fragments/UserInterface;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart1:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aokp/romcontrol/fragments/UserInterface;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mErrormsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aokp/romcontrol/fragments/UserInterface;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mInsults:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/aokp/romcontrol/fragments/UserInterface;)Ljava/util/Random;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRandomGenerator:Ljava/util/Random;

    return-object v0
.end method

.method private createPreview(Ljava/lang/String;)V
    .locals 31
    .parameter "path"

    .prologue
    .line 550
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v24, zip:Ljava/io/File;
    const/16 v25, 0x0

    .line 552
    .local v25, zipfile:Ljava/util/zip/ZipFile;
    const-string v5, ""

    .line 553
    .local v5, desc:Ljava/lang/String;
    const/4 v12, 0x0

    .line 554
    .local v12, inputStream:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 555
    .local v13, inputStreamReader:Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 557
    .local v2, bufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v26, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 558
    .end local v25           #zipfile:Ljava/util/zip/ZipFile;
    .local v26, zipfile:Ljava/util/zip/ZipFile;
    :try_start_1
    const-string v27, "desc.txt"

    invoke-virtual/range {v26 .. v27}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v23

    .line 559
    .local v23, ze:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    .line 560
    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    .line 561
    .end local v13           #inputStreamReader:Ljava/io/InputStreamReader;
    .local v14, inputStreamReader:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 562
    .local v22, sb:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    .line 563
    .end local v2           #bufferedReader:Ljava/io/BufferedReader;
    .local v3, bufferedReader:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .line 564
    .local v21, read:Ljava/lang/String;
    :goto_0
    if-eqz v21, :cond_0

    .line 565
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const/16 v27, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    move-result-object v5

    .line 576
    if-eqz v3, :cond_1

    .line 577
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 583
    :cond_1
    :goto_1
    if-eqz v14, :cond_2

    .line 584
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 590
    :cond_2
    :goto_2
    if-eqz v12, :cond_3

    .line 591
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 598
    :cond_3
    :goto_3
    const-string v27, "\\r"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "\\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 600
    .local v11, info:[Ljava/lang/String;
    const/16 v27, 0x0

    aget-object v27, v11, v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    aget-object v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 601
    .local v4, delay:I
    const/16 v27, 0x1

    aget-object v27, v11, v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x3

    aget-object v16, v27, v28

    .line 604
    .local v16, partName1:Ljava/lang/String;
    :try_start_7
    array-length v0, v11

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_b

    .line 605
    const/16 v27, 0x2

    aget-object v27, v11, v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x3

    aget-object v17, v27, v28
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 613
    .local v17, partName2:Ljava/lang/String;
    :goto_4
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 614
    .local v15, opt:Landroid/graphics/BitmapFactory$Options;
    const/16 v27, 0x4

    move/from16 v0, v27

    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 615
    new-instance v27, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart1:Landroid/graphics/drawable/AnimationDrawable;

    .line 616
    new-instance v27, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart2:Landroid/graphics/drawable/AnimationDrawable;

    .line 618
    :try_start_8
    invoke-virtual/range {v26 .. v26}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v9

    .line 619
    .local v9, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_4
    :goto_5
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 620
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 621
    .local v8, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v27

    if-nez v27, :cond_4

    .line 624
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    aget-object v20, v27, v28

    .line 625
    .local v20, partname:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v27

    if-eqz v27, :cond_d

    .line 626
    const/16 v18, 0x0

    .line 628
    .local v18, partOneInStream:Ljava/io/InputStream;
    :try_start_9
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v18

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart1:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v27, v0

    new-instance v28, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-static {v0, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 633
    if-eqz v18, :cond_4

    .line 634
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_5

    .line 651
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v9           #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v18           #partOneInStream:Ljava/io/InputStream;
    .end local v20           #partname:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 652
    .local v7, e1:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const v28, 0x7f0b00f1

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/UserInterface;->mErrormsg:Ljava/lang/String;

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->errorHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object v2, v3

    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferedReader:Ljava/io/BufferedReader;
    move-object v13, v14

    .end local v14           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v13       #inputStreamReader:Ljava/io/InputStreamReader;
    move-object/from16 v25, v26

    .line 675
    .end local v4           #delay:I
    .end local v7           #e1:Ljava/io/IOException;
    .end local v11           #info:[Ljava/lang/String;
    .end local v15           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #partName1:Ljava/lang/String;
    .end local v17           #partName2:Ljava/lang/String;
    .end local v21           #read:Ljava/lang/String;
    .end local v22           #sb:Ljava/lang/StringBuilder;
    .end local v23           #ze:Ljava/util/zip/ZipEntry;
    .end local v26           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v25       #zipfile:Ljava/util/zip/ZipFile;
    :cond_5
    :goto_6
    return-void

    .line 570
    :catch_1
    move-exception v10

    .line 571
    .local v10, handleAllException:Ljava/lang/Exception;
    :goto_7
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const v28, 0x7f0b00f0

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/UserInterface;->mErrormsg:Ljava/lang/String;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->errorHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 576
    if-eqz v2, :cond_6

    .line 577
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 583
    :cond_6
    :goto_8
    if-eqz v13, :cond_7

    .line 584
    :try_start_d
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 590
    :cond_7
    :goto_9
    if-eqz v12, :cond_5

    .line 591
    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_6

    .line 593
    :catch_2
    move-exception v27

    goto :goto_6

    .line 575
    .end local v10           #handleAllException:Ljava/lang/Exception;
    :catchall_0
    move-exception v27

    .line 576
    :goto_a
    if-eqz v2, :cond_8

    .line 577
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 583
    :cond_8
    :goto_b
    if-eqz v13, :cond_9

    .line 584
    :try_start_10
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 590
    :cond_9
    :goto_c
    if-eqz v12, :cond_a

    .line 591
    :try_start_11
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 595
    :cond_a
    :goto_d
    throw v27

    .line 607
    .end local v2           #bufferedReader:Ljava/io/BufferedReader;
    .end local v13           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v25           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #delay:I
    .restart local v11       #info:[Ljava/lang/String;
    .restart local v14       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v16       #partName1:Ljava/lang/String;
    .restart local v21       #read:Ljava/lang/String;
    .restart local v22       #sb:Ljava/lang/StringBuilder;
    .restart local v23       #ze:Ljava/util/zip/ZipEntry;
    .restart local v26       #zipfile:Ljava/util/zip/ZipFile;
    :cond_b
    :try_start_12
    const-string v17, ""
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .restart local v17       #partName2:Ljava/lang/String;
    goto/16 :goto_4

    .line 609
    .end local v17           #partName2:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 610
    .local v6, e:Ljava/lang/Exception;
    const-string v17, ""

    .restart local v17       #partName2:Ljava/lang/String;
    goto/16 :goto_4

    .line 633
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v9       #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v15       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v18       #partOneInStream:Ljava/io/InputStream;
    .restart local v20       #partname:Ljava/lang/String;
    :catchall_1
    move-exception v27

    if-eqz v18, :cond_c

    .line 634
    :try_start_13
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    :cond_c
    throw v27

    .line 637
    .end local v18           #partOneInStream:Ljava/io/InputStream;
    :cond_d
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    move-result v27

    if-eqz v27, :cond_4

    .line 638
    const/16 v19, 0x0

    .line 640
    .local v19, partTwoInStream:Ljava/io/InputStream;
    :try_start_14
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v19

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart2:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v27, v0

    new-instance v28, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-static {v0, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 645
    if-eqz v19, :cond_4

    .line 646
    :try_start_15
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    goto/16 :goto_5

    .line 645
    :catchall_2
    move-exception v27

    if-eqz v19, :cond_e

    .line 646
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    :cond_e
    throw v27
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    .line 657
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v19           #partTwoInStream:Ljava/io/InputStream;
    .end local v20           #partname:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_10

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "Multipart Animation"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart1:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart2:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart1:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v27, v0

    new-instance v28, Lcom/aokp/romcontrol/fragments/UserInterface$6;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/UserInterface$6;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/AnimationDrawable;->setOnAnimationFinishedListener(Landroid/graphics/drawable/AnimationDrawable$OnAnimationFinishedListener;)V

    .line 674
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->finishedHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object v2, v3

    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferedReader:Ljava/io/BufferedReader;
    move-object v13, v14

    .end local v14           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v13       #inputStreamReader:Ljava/io/InputStreamReader;
    move-object/from16 v25, v26

    .line 675
    .end local v26           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v25       #zipfile:Ljava/util/zip/ZipFile;
    goto/16 :goto_6

    .line 672
    .end local v2           #bufferedReader:Ljava/io/BufferedReader;
    .end local v13           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v25           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v14       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v26       #zipfile:Ljava/util/zip/ZipFile;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart1:Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    goto :goto_e

    .line 579
    .end local v4           #delay:I
    .end local v9           #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v11           #info:[Ljava/lang/String;
    .end local v15           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #partName1:Ljava/lang/String;
    .end local v17           #partName2:Ljava/lang/String;
    :catch_4
    move-exception v27

    goto/16 :goto_1

    .line 586
    :catch_5
    move-exception v27

    goto/16 :goto_2

    .line 593
    :catch_6
    move-exception v27

    goto/16 :goto_3

    .line 579
    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .end local v14           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v21           #read:Ljava/lang/String;
    .end local v22           #sb:Ljava/lang/StringBuilder;
    .end local v23           #ze:Ljava/util/zip/ZipEntry;
    .end local v26           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v2       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v10       #handleAllException:Ljava/lang/Exception;
    .restart local v13       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v25       #zipfile:Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v27

    goto/16 :goto_8

    .line 586
    :catch_8
    move-exception v27

    goto/16 :goto_9

    .line 579
    .end local v10           #handleAllException:Ljava/lang/Exception;
    :catch_9
    move-exception v28

    goto/16 :goto_b

    .line 586
    :catch_a
    move-exception v28

    goto/16 :goto_c

    .line 593
    :catch_b
    move-exception v28

    goto/16 :goto_d

    .line 575
    .end local v25           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v26       #zipfile:Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v27

    move-object/from16 v25, v26

    .end local v26           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v25       #zipfile:Ljava/util/zip/ZipFile;
    goto/16 :goto_a

    .end local v13           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v25           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v14       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v23       #ze:Ljava/util/zip/ZipEntry;
    .restart local v26       #zipfile:Ljava/util/zip/ZipFile;
    :catchall_4
    move-exception v27

    move-object v13, v14

    .end local v14           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v13       #inputStreamReader:Ljava/io/InputStreamReader;
    move-object/from16 v25, v26

    .end local v26           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v25       #zipfile:Ljava/util/zip/ZipFile;
    goto/16 :goto_a

    .end local v2           #bufferedReader:Ljava/io/BufferedReader;
    .end local v13           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v25           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v14       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v22       #sb:Ljava/lang/StringBuilder;
    .restart local v26       #zipfile:Ljava/util/zip/ZipFile;
    :catchall_5
    move-exception v27

    move-object v2, v3

    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferedReader:Ljava/io/BufferedReader;
    move-object v13, v14

    .end local v14           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v13       #inputStreamReader:Ljava/io/InputStreamReader;
    move-object/from16 v25, v26

    .end local v26           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v25       #zipfile:Ljava/util/zip/ZipFile;
    goto/16 :goto_a

    .line 570
    .end local v22           #sb:Ljava/lang/StringBuilder;
    .end local v23           #ze:Ljava/util/zip/ZipEntry;
    .end local v25           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v26       #zipfile:Ljava/util/zip/ZipFile;
    :catch_c
    move-exception v10

    move-object/from16 v25, v26

    .end local v26           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v25       #zipfile:Ljava/util/zip/ZipFile;
    goto/16 :goto_7

    .end local v13           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v25           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v14       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v23       #ze:Ljava/util/zip/ZipEntry;
    .restart local v26       #zipfile:Ljava/util/zip/ZipFile;
    :catch_d
    move-exception v10

    move-object v13, v14

    .end local v14           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v13       #inputStreamReader:Ljava/io/InputStreamReader;
    move-object/from16 v25, v26

    .end local v26           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v25       #zipfile:Ljava/util/zip/ZipFile;
    goto/16 :goto_7

    .end local v2           #bufferedReader:Ljava/io/BufferedReader;
    .end local v13           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v25           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v14       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v22       #sb:Ljava/lang/StringBuilder;
    .restart local v26       #zipfile:Ljava/util/zip/ZipFile;
    :catch_e
    move-exception v10

    move-object v2, v3

    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferedReader:Ljava/io/BufferedReader;
    move-object v13, v14

    .end local v14           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v13       #inputStreamReader:Ljava/io/InputStreamReader;
    move-object/from16 v25, v26

    .end local v26           #zipfile:Ljava/util/zip/ZipFile;
    .restart local v25       #zipfile:Ljava/util/zip/ZipFile;
    goto/16 :goto_7
.end method

.method private getBootAnimationCommand(Z)[Ljava/lang/String;
    .locals 10
    .parameter "checked"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v9, 0x20

    .line 685
    const/4 v7, 0x3

    new-array v2, v7, [Ljava/lang/String;

    .line 686
    .local v2, cmds:[Ljava/lang/String;
    const-string v3, "/system/media/bootanimation.backup"

    .line 687
    .local v3, storedLocation:Ljava/lang/String;
    const-string v4, "/data/local/bootanimation.backup"

    .line 688
    .local v4, storedUserLocation:Ljava/lang/String;
    const-string v0, "/system/media/bootanimation.zip"

    .line 689
    .local v0, activeLocation:Ljava/lang/String;
    const-string v1, "/data/local/bootanimation.zip"

    .line 690
    .local v1, activeUserLocation:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 692
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mv "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 693
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mv "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 706
    :goto_0
    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "busybox sed -i \"/debug.sf.nobootanimation/ c debug.sf.nobootanimation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/build.prop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 709
    return-object v2

    .line 696
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mv "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 697
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mv "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    goto :goto_0

    :cond_1
    move v5, v6

    .line 706
    goto :goto_1
.end method

.method private installBootAnim(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 5
    .parameter "dialog"
    .parameter "bootAnimationPath"

    .prologue
    const/4 v4, 0x0

    .line 732
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 733
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->DisableBootAnimation()V

    .line 734
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 735
    new-instance v0, Lcom/aokp/romcontrol/fragments/UserInterface$9;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$9;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /data/local/bootanimation.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "chmod 644 /data/local/bootanimation.zip"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/UserInterface$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 741
    return-void
.end method

.method private openBootAnimationDialog()V
    .locals 10

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->resetSwaggedOutBootAnimation()V

    .line 441
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "boot animation path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCustomBootAnimationDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 443
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCustomBootAnimationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->cancel()V

    .line 444
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCustomBootAnimationDialog:Landroid/app/AlertDialog;

    .line 446
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0b00eb

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 448
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "/system/media/bootanimation.zip"

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "/data/local/bootanimation.zip"

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 451
    const v6, 0x7f0b00ec

    new-instance v7, Lcom/aokp/romcontrol/fragments/UserInterface$1;

    invoke-direct {v7, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$1;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 473
    :cond_1
    :goto_0
    const v6, 0x7f0b00ee

    new-instance v7, Lcom/aokp/romcontrol/fragments/UserInterface$3;

    invoke-direct {v7, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$3;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 493
    const/high16 v6, 0x104

    new-instance v7, Lcom/aokp/romcontrol/fragments/UserInterface$4;

    invoke-direct {v7, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$4;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 503
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040005

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0a0022

    invoke-virtual {v6, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 506
    .local v3, layout:Landroid/view/View;
    const v6, 0x7f0a0024

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mError:Landroid/widget/TextView;

    .line 507
    const v6, 0x7f0a0023

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mView:Landroid/widget/ImageView;

    .line 508
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 510
    .local v1, display:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 511
    .local v4, size:Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 512
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mView:Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v8, 0x2

    iget v9, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mError:Landroid/widget/TextView;

    const v7, 0x7f0b00ef

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 514
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCustomBootAnimationDialog:Landroid/app/AlertDialog;

    .line 516
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCustomBootAnimationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 517
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCustomBootAnimationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 518
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/aokp/romcontrol/fragments/UserInterface$5;

    invoke-direct {v6, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$5;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 524
    .local v5, thread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 525
    return-void

    .line 458
    .end local v1           #display:Landroid/view/Display;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #layout:Landroid/view/View;
    .end local v4           #size:Landroid/graphics/Point;
    .end local v5           #thread:Ljava/lang/Thread;
    :cond_2
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/local/bootanimation.zip"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 459
    const v6, 0x7f0b00ed

    new-instance v7, Lcom/aokp/romcontrol/fragments/UserInterface$2;

    invoke-direct {v7, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$2;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0
.end method

.method private openTransparencyDialog()V
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    invoke-direct {v1}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 305
    return-void
.end method

.method private resetBootAnimation()Z
    .locals 3

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, bootAnimationExists:Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/bootanimation.zip"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const-string v1, "/data/local/bootanimation.zip"

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;

    .line 274
    const/4 v0, 0x1

    .line 281
    :goto_0
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->setBootanimationSummary()V

    .line 282
    return v0

    .line 275
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/media/bootanimation.zip"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    const-string v1, "/system/media/bootanimation.zip"

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private resetSwaggedOutBootAnimation()V
    .locals 3

    .prologue
    .line 292
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/bootanimation.user"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const-string v0, "mv /data/local/bootanimation.user /data/local/bootanimation.zip"

    .line 297
    .local v0, moveAnimCommand:Ljava/lang/String;
    invoke-static {v0}, Lcom/aokp/romcontrol/util/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    .line 299
    .end local v0           #moveAnimCommand:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/aokp/romcontrol/service/CodeReceiver;->setSwagInitiatedPref(Landroid/content/Context;Z)V

    .line 300
    return-void
.end method

.method private setBootanimationSummary()V
    .locals 2

    .prologue
    .line 286
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCustomBootAnimation:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCustomBootAnimation:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b004c

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 290
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_1
    const v0, 0x7f0b00c2

    goto :goto_1
.end method


# virtual methods
.method public copy(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 531
    .local v0, inChannel:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 535
    .local v5, outChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 543
    :cond_0
    if-eqz v5, :cond_1

    .line 544
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 547
    :cond_1
    return-void

    .line 540
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 541
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 543
    :cond_2
    if-eqz v5, :cond_3

    .line 544
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    throw v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 426
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 427
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    .line 428
    if-nez p3, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;

    .line 433
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->openBootAnimationDialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v6, 0x7f0b001b

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->setTitle(I)V

    .line 146
    const v6, 0x7f050011

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->addPreferencesFromResource(I)V

    .line 148
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sput-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    .line 149
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 150
    .local v4, prefs:Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v9, 0x7f06

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mInsults:[Ljava/lang/String;

    .line 153
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_180:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAllow180Rotation:Landroid/preference/CheckBoxPreference;

    .line 154
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_270:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAllow270Rotation:Landroid/preference/CheckBoxPreference;

    .line 155
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "accelerometer_rotation_angles"

    const/4 v10, -0x1

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUserRotationAngles:I

    .line 157
    iget v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUserRotationAngles:I

    if-gez v6, :cond_0

    .line 159
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x111001d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v7

    .line 161
    .local v3, mAllowAllRotations:Z
    :goto_0
    if-eqz v3, :cond_4

    const/16 v6, 0xf

    :goto_1
    iput v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUserRotationAngles:I

    .line 165
    .end local v3           #mAllowAllRotations:Z
    :cond_0
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAllow180Rotation:Landroid/preference/CheckBoxPreference;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUserRotationAngles:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAllow270Rotation:Landroid/preference/CheckBoxPreference;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUserRotationAngles:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_DISABLE_BOOTANIM:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    .line 170
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_CUSTOM_BOOTANIM:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCustomBootAnimation:Landroid/preference/Preference;

    .line 173
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_RECENT_KILL_ALL:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRecentKillAll:Landroid/preference/CheckBoxPreference;

    .line 174
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRecentKillAll:Landroid/preference/CheckBoxPreference;

    sget-object v9, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "recent_kill_all_button"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_RECENT_GOOGLE_ASSIST:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRecentGoog:Landroid/preference/CheckBoxPreference;

    .line 178
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRecentGoog:Landroid/preference/CheckBoxPreference;

    sget-object v9, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "recent_google_assist"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 181
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_RAM_USAGE_BAR:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRamBar:Landroid/preference/CheckBoxPreference;

    .line 182
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRamBar:Landroid/preference/CheckBoxPreference;

    sget-object v9, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "ram_usage_bar"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_HIDE_EXTRAS:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mHideExtras:Landroid/preference/CheckBoxPreference;

    .line 186
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mHideExtras:Landroid/preference/CheckBoxPreference;

    sget-object v9, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "hide_extras_system_bar"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_SHOW_OVERFLOW:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mShowActionOverflow:Landroid/preference/CheckBoxPreference;

    .line 190
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mShowActionOverflow:Landroid/preference/CheckBoxPreference;

    sget-object v9, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "ui_force_overflow_button"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_USER_MODE_UI:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUserModeUI:Landroid/preference/ListPreference;

    .line 194
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "current_ui_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 196
    .local v5, uiMode:I
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUserModeUI:Landroid/preference/ListPreference;

    sget-object v9, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "user_ui_mode"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 198
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUserModeUI:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_FORCE_DUAL_PANEL:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDualpane:Landroid/preference/CheckBoxPreference;

    .line 201
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDualpane:Landroid/preference/CheckBoxPreference;

    sget-object v9, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "force_dualpanel"

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110007

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "system_power_enable_crt_off"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 207
    .local v2, isCrtOffChecked:Z
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_POWER_CRT_SCREEN_OFF:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtOff:Landroid/preference/CheckBoxPreference;

    .line 208
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_POWER_CRT_MODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    .line 211
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "system_power_crt_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, crtMode:I
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 214
    if-nez v2, :cond_7

    .line 215
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    const v9, 0x7f0b0050

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 219
    :goto_4
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_WAKEUP_WHEN_PLUGGED_UNPLUGGED:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mWakeUpWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    .line 223
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mWakeUpWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    sget-object v9, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "wakeup_when_plugged_unplugged"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 226
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "ui_inverted_mode"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_8

    move v1, v7

    .line 228
    .local v1, darkUIenabled:Z
    :goto_5
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_DARK_UI:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDarkUI:Landroid/preference/CheckBoxPreference;

    .line 229
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDarkUI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 232
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x111001a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 234
    sget-object v6, Lcom/aokp/romcontrol/fragments/UserInterface;->PREF_DISPLAY:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/fragments/UserInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mWakeUpWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    :cond_1
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "current_ui_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUiMode:I

    .line 241
    iget v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUiMode:I

    if-eq v6, v7, :cond_2

    .line 242
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mHideExtras:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 243
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mHideExtras:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0b004e

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->resetBootAnimation()Z

    .line 247
    return-void

    .end local v0           #crtMode:I
    .end local v1           #darkUIenabled:Z
    .end local v2           #isCrtOffChecked:Z
    .end local v5           #uiMode:I
    :cond_3
    move v3, v8

    .line 159
    goto/16 :goto_0

    .line 161
    .restart local v3       #mAllowAllRotations:Z
    :cond_4
    const/16 v6, 0xb

    goto/16 :goto_1

    .end local v3           #mAllowAllRotations:Z
    :cond_5
    move v6, v8

    .line 165
    goto/16 :goto_2

    :cond_6
    move v6, v8

    .line 166
    goto/16 :goto_3

    .line 217
    .restart local v0       #crtMode:I
    .restart local v2       #isCrtOffChecked:Z
    .restart local v5       #uiMode:I
    :cond_7
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v0

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    move v1, v8

    .line 226
    goto :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 780
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUserModeUI:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    .line 781
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUiMode:I

    .line 782
    sget-object v4, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "user_ui_mode"

    iget v6, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUiMode:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 784
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mHideExtras:Landroid/preference/CheckBoxPreference;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUiMode:I

    if-ne v5, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 785
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mHideExtras:Landroid/preference/CheckBoxPreference;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mUiMode:I

    if-ne v2, v3, :cond_1

    const v2, 0x7f0b00ea

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 787
    invoke-static {}, Lcom/aokp/romcontrol/util/Helpers;->restartSystemUI()V

    .line 797
    :goto_1
    return v3

    .line 785
    :cond_1
    const v2, 0x7f0b004e

    goto :goto_0

    .line 789
    .restart local p2
    :cond_2
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_3

    move-object v2, p2

    .line 790
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 791
    .local v0, crtMode:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 792
    .local v1, index:I
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "system_power_crt_mode"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 794
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v0           #crtMode:I
    .end local v1           #index:I
    .restart local p2
    :cond_3
    move v3, v2

    .line 797
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 16
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAllow180Rotation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-eq v0, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAllow270Rotation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 312
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAllow180Rotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 313
    .local v3, checked180:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mAllow270Rotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 314
    .local v4, checked270:Z
    const/4 v12, 0x3

    .line 315
    .local v12, result:I
    if-eqz v3, :cond_1

    .line 316
    or-int/lit8 v12, v12, 0x4

    .line 318
    :cond_1
    if-eqz v4, :cond_2

    .line 319
    or-int/lit8 v12, v12, 0x8

    .line 321
    :cond_2
    sget-object v13, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "accelerometer_rotation_angles"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    const/4 v13, 0x1

    .line 420
    .end local v3           #checked180:Z
    .end local v4           #checked270:Z
    .end local v12           #result:I
    .end local p2
    :goto_0
    return v13

    .line 324
    .restart local p2
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_4

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->DisableBootAnimation()V

    .line 326
    const/4 v13, 0x1

    goto :goto_0

    .line 327
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mHideExtras:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_5

    .line 328
    sget-object v13, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "hide_extras_system_bar"

    check-cast p2, Landroid/preference/TwoStatePreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 331
    const/4 v13, 0x1

    goto :goto_0

    .line 332
    .restart local p2
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDualpane:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_6

    .line 333
    sget-object v13, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "force_dualpanel"

    check-cast p2, Landroid/preference/TwoStatePreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 336
    const/4 v13, 0x1

    goto :goto_0

    .line 337
    .restart local p2
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCustomBootAnimation:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_7

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->openBootAnimationDialog()V

    .line 339
    const/4 v13, 0x1

    goto :goto_0

    .line 340
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mShowActionOverflow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_9

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mShowActionOverflow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 342
    .local v6, enabled:Z
    sget-object v13, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "ui_force_overflow_button"

    invoke-static {v13, v14, v6}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 345
    if-eqz v6, :cond_8

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0b00f6

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 352
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    .line 349
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0b00f7

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 353
    .end local v6           #enabled:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRecentKillAll:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_a

    .line 354
    check-cast p2, Landroid/preference/TwoStatePreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 355
    .local v2, checked:Z
    sget-object v13, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "recent_kill_all_button"

    invoke-static {v13, v14, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 357
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 358
    .end local v2           #checked:Z
    .restart local p2
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRecentGoog:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_b

    .line 359
    check-cast p2, Landroid/preference/TwoStatePreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 360
    .restart local v2       #checked:Z
    sget-object v13, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "recent_google_assist"

    invoke-static {v13, v14, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 362
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 363
    .end local v2           #checked:Z
    .restart local p2
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRamBar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_c

    .line 364
    check-cast p2, Landroid/preference/TwoStatePreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 365
    .restart local v2       #checked:Z
    sget-object v13, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "ram_usage_bar"

    invoke-static {v13, v14, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 367
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 368
    .end local v2           #checked:Z
    .restart local p2
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mWakeUpWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_e

    .line 369
    sget-object v14, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v15, "wakeup_when_plugged_unplugged"

    move-object/from16 v13, p2

    check-cast v13, Landroid/preference/TwoStatePreference;

    invoke-virtual {v13}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v13

    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 420
    :cond_d
    :goto_2
    invoke-super/range {p0 .. p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v13

    goto/16 :goto_0

    .line 372
    :cond_e
    const-string v13, "transparency_dialog"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/UserInterface;->openTransparencyDialog()V

    .line 374
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 375
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtOff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_11

    move-object/from16 v13, p2

    .line 376
    check-cast v13, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 377
    .restart local v2       #checked:Z
    sget-object v13, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "system_power_enable_crt_off"

    invoke-static {v13, v14, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 379
    if-nez v2, :cond_10

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    const v14, 0x7f0b0050

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_2

    .line 382
    :cond_10
    sget-object v13, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "system_power_crt_mode"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 384
    .local v5, crtMode:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mCrtMode:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 386
    .end local v2           #checked:Z
    .end local v5           #crtMode:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDarkUI:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_d

    .line 387
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 388
    .restart local v2       #checked:Z
    sget-object v14, Lcom/aokp/romcontrol/fragments/UserInterface;->mContentResolver:Landroid/content/ContentResolver;

    const-string v15, "ui_inverted_mode"

    if-eqz v2, :cond_13

    const/4 v13, 0x2

    :goto_3
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    invoke-static {}, Lcom/aokp/romcontrol/util/Helpers;->restartSystemUI()V

    .line 394
    const/16 v13, 0xc

    new-array v10, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "com.android.contacts"

    aput-object v14, v10, v13

    const/4 v13, 0x1

    const-string v14, "com.android.calendar"

    aput-object v14, v10, v13

    const/4 v13, 0x2

    const-string v14, "com.android.email"

    aput-object v14, v10, v13

    const/4 v13, 0x3

    const-string v14, "com.android.vending"

    aput-object v14, v10, v13

    const/4 v13, 0x4

    const-string v14, "com.android.mms"

    aput-object v14, v10, v13

    const/4 v13, 0x5

    const-string v14, "com.google.android.talk"

    aput-object v14, v10, v13

    const/4 v13, 0x6

    const-string v14, "com.google.android.gm"

    aput-object v14, v10, v13

    const/4 v13, 0x7

    const-string v14, "com.google.android.googlequicksearchbox"

    aput-object v14, v10, v13

    const/16 v13, 0x8

    const-string v14, "com.google.android.youtube"

    aput-object v14, v10, v13

    const/16 v13, 0x9

    const-string v14, "com.google.android.apps.genie.geniewidget"

    aput-object v14, v10, v13

    const/16 v13, 0xa

    const-string v14, "com.google.android.apps.plus"

    aput-object v14, v10, v13

    const/16 v13, 0xb

    const-string v14, "com.google.android.apps.maps"

    aput-object v14, v10, v13

    .line 408
    .local v10, mTRDSApps:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 409
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    .line 410
    .local v11, pids:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_15

    .line 411
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 412
    .local v8, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_5
    array-length v13, v10

    if-ge v9, v13, :cond_14

    .line 413
    iget-object v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    aget-object v14, v10, v9

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 414
    aget-object v13, v10, v9

    invoke-virtual {v1, v13}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 412
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 388
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v7           #i:I
    .end local v8           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v9           #j:I
    .end local v10           #mTRDSApps:[Ljava/lang/String;
    .end local v11           #pids:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_13
    const/4 v13, 0x1

    goto :goto_3

    .line 410
    .restart local v1       #am:Landroid/app/ActivityManager;
    .restart local v7       #i:I
    .restart local v8       #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v9       #j:I
    .restart local v10       #mTRDSApps:[Ljava/lang/String;
    .restart local v11       #pids:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 418
    .end local v8           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v9           #j:I
    :cond_15
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 251
    invoke-super {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onResume()V

    .line 252
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 255
    .local v2, res:Landroid/content/res/Resources;
    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, insults:[Ljava/lang/String;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mRandomGenerator:Ljava/util/Random;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 257
    .local v1, randomInt:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    .end local v0           #insults:[Ljava/lang/String;
    .end local v1           #randomInt:I
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
