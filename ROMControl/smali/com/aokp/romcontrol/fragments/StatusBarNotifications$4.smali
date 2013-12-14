.class Lcom/aokp/romcontrol/fragments/StatusBarNotifications$4;
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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$4;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$4;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 236
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, value:Ljava/lang/String;
    invoke-static {}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->access$100()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "custom_carrier_label"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$4;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->updateCustomLabelTextSummary()V
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->access$200(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.aokp.romcontrol.LABEL_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$4;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    #getter for: Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->access$300(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method
