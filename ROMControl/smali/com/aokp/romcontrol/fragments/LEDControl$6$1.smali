.class Lcom/aokp/romcontrol/fragments/LEDControl$6$1;
.super Ljava/lang/Object;
.source "LEDControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/LEDControl$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aokp/romcontrol/fragments/LEDControl$6;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl$6;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$6;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mRegister:Z
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$500(Lcom/aokp/romcontrol/fragments/LEDControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$6;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$6;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->testLedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$600(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$6;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    const/4 v1, 0x0

    #setter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mRegister:Z
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$502(Lcom/aokp/romcontrol/fragments/LEDControl;Z)Z

    .line 249
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 250
    return-void
.end method
