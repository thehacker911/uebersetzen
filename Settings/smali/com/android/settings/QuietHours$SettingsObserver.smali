.class Lcom/android/settings/QuietHours$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "QuietHours.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/QuietHours;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/QuietHours;


# direct methods
.method constructor <init>(Lcom/android/settings/QuietHours;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/settings/QuietHours$SettingsObserver;->this$0:Lcom/android/settings/QuietHours;

    .line 400
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/QuietHours$SettingsObserver;->observe()V

    .line 402
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/settings/QuietHours$SettingsObserver;->this$0:Lcom/android/settings/QuietHours;

    #getter for: Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/QuietHours;->access$000(Lcom/android/settings/QuietHours;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 406
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "quiet_hours_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 409
    iget-object v1, p0, Lcom/android/settings/QuietHours$SettingsObserver;->this$0:Lcom/android/settings/QuietHours;

    invoke-virtual {v1}, Lcom/android/settings/QuietHours;->updateSettings()V

    .line 410
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings/QuietHours$SettingsObserver;->this$0:Lcom/android/settings/QuietHours;

    invoke-virtual {v0}, Lcom/android/settings/QuietHours;->updateSettings()V

    .line 415
    return-void
.end method
