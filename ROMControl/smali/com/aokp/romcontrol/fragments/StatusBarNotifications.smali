.class public Lcom/aokp/romcontrol/fragments/StatusBarNotifications;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "StatusBarNotifications.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREF_CUSTOM_CARRIER_LABEL:Ljava/lang/CharSequence; = null

.field private static final PREF_IME_SWITCHER:Ljava/lang/CharSequence; = null

.field private static final PREF_NOTIFICATION_WALLPAPER:Ljava/lang/CharSequence; = null

.field private static final PREF_NOTIFICATION_WALLPAPER_ALPHA:Ljava/lang/CharSequence; = null

.field private static final PREF_STATUSBAR_BRIGHTNESS:Ljava/lang/CharSequence; = null

.field private static final PREF_STATUSBAR_HIDDEN:Ljava/lang/CharSequence; = null

.field private static final PREF_STATUS_BAR_NOTIF_COUNT:Ljava/lang/CharSequence; = null

.field private static final PREF_VIBRATE_NOTIF_EXPAND:Ljava/lang/CharSequence; = null

.field private static final REQUEST_PICK_WALLPAPER:I = 0xc9

.field private static final WALLPAPER_NAME:Ljava/lang/String; = "notification_wallpaper.jpg"

.field private static mContentResolver:Landroid/content/ContentResolver;


# instance fields
.field mCustomLabel:Landroid/preference/Preference;

.field mCustomLabelText:Ljava/lang/String;

.field mNotificationWallpaper:Landroid/preference/Preference;

.field private mSeekbarProgress:I

.field mShowImeSwitcher:Landroid/preference/CheckBoxPreference;

.field mStatusBarHide:Landroid/preference/CheckBoxPreference;

.field mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

.field mStatusbarSliderPreference:Landroid/preference/CheckBoxPreference;

.field private mUiMode:I

.field mVibrateOnExpand:Landroid/preference/CheckBoxPreference;

.field mWallpaperAlpha:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "status_bar_notif_count"

    sput-object v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_STATUS_BAR_NOTIF_COUNT:Ljava/lang/CharSequence;

    .line 54
    const-string v0, "notification_wallpaper"

    sput-object v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_NOTIFICATION_WALLPAPER:Ljava/lang/CharSequence;

    .line 55
    const-string v0, "notification_wallpaper_alpha"

    sput-object v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_NOTIFICATION_WALLPAPER_ALPHA:Ljava/lang/CharSequence;

    .line 57
    const-string v0, "custom_carrier_label"

    sput-object v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_CUSTOM_CARRIER_LABEL:Ljava/lang/CharSequence;

    .line 58
    const-string v0, "vibrate_notif_expand"

    sput-object v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_VIBRATE_NOTIF_EXPAND:Ljava/lang/CharSequence;

    .line 59
    const-string v0, "ime_switcher"

    sput-object v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_IME_SWITCHER:Ljava/lang/CharSequence;

    .line 60
    const-string v0, "statusbar_brightness_slider"

    sput-object v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_STATUSBAR_BRIGHTNESS:Ljava/lang/CharSequence;

    .line 61
    const-string v0, "statusbar_hidden"

    sput-object v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_STATUSBAR_HIDDEN:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabelText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mSeekbarProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mSeekbarProgress:I

    return p1
.end method

.method static synthetic access$100()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->updateCustomLabelTextSummary()V

    return-void
.end method

.method static synthetic access$300(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->prepareAndSetWallpaper()V

    return-void
.end method

.method static synthetic access$500(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->resetWallpaper()V

    return-void
.end method

.method private buildWallpaperAlert()V
    .locals 11

    .prologue
    .line 333
    const/4 v4, 0x0

    .line 334
    .local v4, myWall:Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0b00c5

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 336
    const v8, 0x7f0b00c6

    new-instance v9, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$6;

    invoke-direct {v9, p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$6;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    const v8, 0x7f0b00c7

    new-instance v9, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$7;

    invoke-direct {v9, p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$7;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 351
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040008

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 352
    .local v3, layout:Landroid/view/View;
    const v8, 0x7f0a0031

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 353
    .local v6, wallView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 354
    .local v1, display:Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 355
    .local v5, size:Landroid/graphics/Point;
    invoke-virtual {v1, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 356
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v9, v9, 0x2

    iget v10, v5, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "notification_wallpaper.jpg"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    .local v7, wallpaper:Ljava/io/File;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #myWall:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 359
    .restart local v4       #myWall:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 362
    return-void
.end method

.method private getNotificationExternalUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 272
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 273
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "notification_wallpaper.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    .local v1, wallpaper:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private prepareAndSetWallpaper()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 289
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 290
    .local v0, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWallpaperDesiredMinimumWidth()I

    move-result v5

    .line 291
    .local v5, width:I
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWallpaperDesiredMinimumHeight()I

    move-result v1

    .line 292
    .local v1, height:I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float v3, v6, v7

    .line 293
    .local v3, spotlightX:F
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v1

    div-float v4, v6, v7

    .line 295
    .local v4, spotlightY:F
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_CONTENT"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 296
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v6, "crop"

    const-string v7, "true"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v6, "scale"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    const-string v6, "scaleUpIfNeeded"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    const-string v6, "aspectX"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string v6, "aspectY"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v6, "outputX"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v6, "outputY"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const-string v6, "spotlightX"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 305
    const-string v6, "spotlightY"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 306
    const-string v6, "output"

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getNotificationExternalUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    const-string v6, "outputFormat"

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/16 v6, 0xc9

    invoke-virtual {p0, v2, v6}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->startActivityForResult(Landroid/content/Intent;I)V

    .line 311
    return-void
.end method

.method private resetWallpaper()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContext:Landroid/content/Context;

    const-string v1, "notification_wallpaper.jpg"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 315
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findWallpaperStatus()V

    .line 316
    invoke-static {}, Lcom/aokp/romcontrol/util/Helpers;->restartSystemUI()V

    .line 317
    return-void
.end method

.method private updateCustomLabelTextSummary()V
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "custom_carrier_label"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabelText:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabelText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabelText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabel:Landroid/preference/Preference;

    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabel:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public findWallpaperStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 278
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "notification_wallpaper.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v0, wallpaper:Ljava/io/File;
    iget v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mUiMode:I

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mWallpaperAlpha:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 281
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mWallpaperAlpha:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mWallpaperAlpha:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 284
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mWallpaperAlpha:Landroid/preference/Preference;

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 367
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 368
    const/16 v4, 0xc9

    if-ne p1, v4, :cond_1

    .line 369
    const/4 v3, 0x0

    .line 371
    .local v3, wallpaperStream:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContext:Landroid/content/Context;

    const-string v5, "notification_wallpaper.jpg"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 373
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getNotificationExternalUri()Landroid/net/Uri;

    move-result-object v2

    .line 374
    .local v2, selectedImageUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    if-eqz v3, :cond_0

    .line 384
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 390
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findWallpaperStatus()V

    .line 391
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->buildWallpaperAlert()V

    .line 392
    invoke-static {}, Lcom/aokp/romcontrol/util/Helpers;->restartSystemUI()V

    .line 395
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #selectedImageUri:Landroid/net/Uri;
    .end local v3           #wallpaperStream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 379
    .restart local v3       #wallpaperStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 383
    .local v1, e:Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1

    .line 384
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 386
    :catch_1
    move-exception v4

    goto :goto_1

    .line 382
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    .line 383
    if-eqz v3, :cond_2

    .line 384
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 388
    :cond_2
    :goto_2
    throw v4

    .line 386
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #selectedImageUri:Landroid/net/Uri;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #selectedImageUri:Landroid/net/Uri;
    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0b004d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->setTitle(I)V

    .line 93
    const v1, 0x7f05000e

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->addPreferencesFromResource(I)V

    .line 94
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sput-object v1, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 98
    .local v0, prefs:Landroid/preference/PreferenceScreen;
    sget-object v1, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_STATUS_BAR_NOTIF_COUNT:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    .line 99
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "status_bar_notif_count"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 102
    sget-object v1, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_CUSTOM_CARRIER_LABEL:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabel:Landroid/preference/Preference;

    .line 103
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->updateCustomLabelTextSummary()V

    .line 105
    sget-object v1, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_IME_SWITCHER:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mShowImeSwitcher:Landroid/preference/CheckBoxPreference;

    .line 106
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mShowImeSwitcher:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "show_statusbar_ime_switcher"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    sget-object v1, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_STATUSBAR_BRIGHTNESS:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusbarSliderPreference:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusbarSliderPreference:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "statusbar_brightness_slider"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    sget-object v1, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_NOTIFICATION_WALLPAPER:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mNotificationWallpaper:Landroid/preference/Preference;

    .line 115
    sget-object v1, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_NOTIFICATION_WALLPAPER_ALPHA:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mWallpaperAlpha:Landroid/preference/Preference;

    .line 117
    sget-object v1, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_VIBRATE_NOTIF_EXPAND:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mVibrateOnExpand:Landroid/preference/CheckBoxPreference;

    .line 118
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mVibrateOnExpand:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "vibrate_notif_expand"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    iget-boolean v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->hasVibration:Z

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mVibrateOnExpand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    :cond_0
    sget-object v1, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->PREF_STATUSBAR_HIDDEN:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusBarHide:Landroid/preference/CheckBoxPreference;

    .line 125
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusBarHide:Landroid/preference/CheckBoxPreference;

    sget-object v2, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "statusbar_hidden"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 128
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_ui_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mUiMode:I

    .line 131
    iget v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mUiMode:I

    if-ne v1, v5, :cond_1

    .line 132
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusbarSliderPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 133
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusBarHide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mNotificationWallpaper:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusbarSliderPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 136
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusBarHide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 137
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mNotificationWallpaper:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->findWallpaperStatus()V

    .line 140
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 20
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 146
    sget-object v17, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v18, "status_bar_notif_count"

    check-cast p2, Landroid/preference/TwoStatePreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 149
    const/16 v17, 0x1

    .line 262
    :goto_0
    return v17

    .line 150
    .restart local p2
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mNotificationWallpaper:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 151
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    const-string v18, "notification_wallpaper.jpg"

    invoke-direct/range {v16 .. v18}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .local v16, wallpaper:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->buildWallpaperAlert()V

    .line 157
    :goto_1
    const/16 v17, 0x1

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->prepareAndSetWallpaper()V

    goto :goto_1

    .line 158
    .end local v16           #wallpaper:Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mWallpaperAlpha:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 160
    .local v11, res:Landroid/content/res/Resources;
    const v17, 0x7f0b0002

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, cancel:Ljava/lang/String;
    const v17, 0x7f0b0003

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, ok:Ljava/lang/String;
    const v17, 0x7f0b00ca

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 163
    .local v15, title:Ljava/lang/String;
    sget-object v17, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v18, "notif_wallpaper_alpha"

    const/high16 v19, 0x3f80

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v12

    .line 166
    .local v12, savedProgress:F
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 167
    .local v7, factory:Landroid/view/LayoutInflater;
    const v17, 0x7f04001f

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 168
    .local v4, alphaDialog:Landroid/view/View;
    const v17, 0x7f0a000d

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/SeekBar;

    .line 169
    .local v14, seekbar:Landroid/widget/SeekBar;
    new-instance v13, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$1;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V

    .line 184
    .local v13, seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    const/high16 v17, 0x42c8

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 185
    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 186
    invoke-virtual {v14, v13}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 187
    new-instance v17, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v18, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$3;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v18, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$2;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    .line 207
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 208
    .end local v4           #alphaDialog:Landroid/view/View;
    .end local v5           #cancel:Ljava/lang/String;
    .end local v7           #factory:Landroid/view/LayoutInflater;
    .end local v10           #ok:Ljava/lang/String;
    .end local v11           #res:Landroid/content/res/Resources;
    .end local v12           #savedProgress:F
    .end local v13           #seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .end local v14           #seekbar:Landroid/widget/SeekBar;
    .end local v15           #title:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mShowImeSwitcher:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 209
    sget-object v17, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v18, "show_statusbar_ime_switcher"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->isCheckBoxPrefernceChecked(Landroid/preference/Preference;)Z

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 212
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 213
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusbarSliderPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 214
    sget-object v17, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v18, "statusbar_brightness_slider"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->isCheckBoxPrefernceChecked(Landroid/preference/Preference;)Z

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 217
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 218
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabel:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 219
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v3, alert:Landroid/app/AlertDialog$Builder;
    const v17, 0x7f0b00cb

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 221
    const v17, 0x7f0b00cc

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 224
    new-instance v9, Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 225
    .local v9, input:Landroid/widget/EditText;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v8, v0, [Landroid/text/InputFilter;

    .line 226
    .local v8, filter:[Landroid/text/InputFilter;
    const/16 v17, 0x0

    new-instance v18, Landroid/text/InputFilter$LengthFilter;

    const/16 v19, 0x28

    invoke-direct/range {v18 .. v19}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v18, v8, v17

    .line 228
    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabelText:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mCustomLabelText:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b0003

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$4;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;Landroid/widget/EditText;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b0002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$5;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 262
    .end local v3           #alert:Landroid/app/AlertDialog$Builder;
    .end local v8           #filter:[Landroid/text/InputFilter;
    .end local v9           #input:Landroid/widget/EditText;
    :cond_6
    invoke-super/range {p0 .. p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v17

    goto/16 :goto_0

    .line 229
    .restart local v3       #alert:Landroid/app/AlertDialog$Builder;
    .restart local v8       #filter:[Landroid/text/InputFilter;
    .restart local v9       #input:Landroid/widget/EditText;
    :cond_7
    const-string v17, ""

    goto :goto_2

    .line 250
    .end local v3           #alert:Landroid/app/AlertDialog$Builder;
    .end local v8           #filter:[Landroid/text/InputFilter;
    .end local v9           #input:Landroid/widget/EditText;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mVibrateOnExpand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 251
    sget-object v17, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContentResolver:Landroid/content/ContentResolver;

    const-string v18, "vibrate_notif_expand"

    check-cast p2, Landroid/preference/TwoStatePreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 254
    invoke-static {}, Lcom/aokp/romcontrol/util/Helpers;->restartSystemUI()V

    .line 255
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 256
    .restart local p2
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mStatusBarHide:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 257
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 258
    .local v6, checked:Z
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "statusbar_hidden"

    if-eqz v6, :cond_a

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 260
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 258
    :cond_a
    const/16 v17, 0x0

    goto :goto_3
.end method
