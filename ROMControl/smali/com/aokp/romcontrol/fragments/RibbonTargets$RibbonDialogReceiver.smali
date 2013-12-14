.class public Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RibbonTargets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RibbonDialogReceiver"
.end annotation


# static fields
.field public static final ACTION_RIBBON_DIALOG_DISMISS:Ljava/lang/String; = "com.aokp.romcontrol.ACTION_RIBBON_DIALOG_DISMISS"


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 2028
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2034
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2035
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.aokp.romcontrol.ACTION_RIBBON_DIALOG_DISMISS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2036
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->setupButtons()V

    .line 2037
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->refreshButtons()V

    .line 2039
    :cond_0
    return-void
.end method
