.class Lcom/aokp/romcontrol/fragments/StatusBarToggles$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarToggles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/StatusBarToggles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 970
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$SettingsObserver;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    .line 971
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 972
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 975
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$SettingsObserver;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    #getter for: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$1000(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 976
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "quick_toggles"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 979
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$SettingsObserver;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->updateSettings()V
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$1100(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V

    .line 980
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 984
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$SettingsObserver;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->updateSettings()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$1100(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V

    .line 985
    return-void
.end method
