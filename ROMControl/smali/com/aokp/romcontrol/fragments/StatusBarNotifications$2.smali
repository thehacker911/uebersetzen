.class Lcom/aokp/romcontrol/fragments/StatusBarNotifications$2;
.super Ljava/lang/Object;
.source "StatusBarNotifications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$2;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$2;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    #getter for: Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mSeekbarProgress:I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->access$000(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float v0, v1, v2

    .line 200
    .local v0, val:F
    invoke-static {}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->access$100()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notif_wallpaper_alpha"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 202
    invoke-static {}, Lcom/aokp/romcontrol/util/Helpers;->restartSystemUI()V

    .line 203
    return-void
.end method
