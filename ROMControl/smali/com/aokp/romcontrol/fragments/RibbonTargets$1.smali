.class Lcom/aokp/romcontrol/fragments/RibbonTargets$1;
.super Landroid/content/BroadcastReceiver;
.source "RibbonTargets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$1;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 269
    const-string v0, "toggle_bundle"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$1;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    const-string v1, "toggle_bundle"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    #calls: Lcom/aokp/romcontrol/fragments/RibbonTargets;->onTogglesUpdate(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$100(Lcom/aokp/romcontrol/fragments/RibbonTargets;Landroid/os/Bundle;)V

    .line 272
    :cond_0
    return-void
.end method
