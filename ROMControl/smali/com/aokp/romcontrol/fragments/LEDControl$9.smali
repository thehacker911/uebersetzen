.class Lcom/aokp/romcontrol/fragments/LEDControl$9;
.super Ljava/lang/Thread;
.source "LEDControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/LEDControl;->startLed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/LEDControl;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$9;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$9;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->stopLed:Z
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1300(Lcom/aokp/romcontrol/fragments/LEDControl;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$9;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1400(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$9;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->blinkOn:Z
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1100(Lcom/aokp/romcontrol/fragments/LEDControl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$9;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->onBlink:I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1500(Lcom/aokp/romcontrol/fragments/LEDControl;)I

    move-result v0

    .line 339
    .local v0, delay:I
    :goto_1
    int-to-long v3, v0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_2
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl$9;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$9;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->blinkOn:Z
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1100(Lcom/aokp/romcontrol/fragments/LEDControl;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_3
    #setter for: Lcom/aokp/romcontrol/fragments/LEDControl;->blinkOn:Z
    invoke-static {v3, v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1102(Lcom/aokp/romcontrol/fragments/LEDControl;Z)Z

    goto :goto_0

    .line 337
    .end local v0           #delay:I
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$9;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->offBlink:I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1600(Lcom/aokp/romcontrol/fragments/LEDControl;)I

    move-result v0

    goto :goto_1

    .restart local v0       #delay:I
    :cond_1
    move v1, v2

    .line 343
    goto :goto_3

    .line 340
    :catch_0
    move-exception v1

    goto :goto_2

    .line 346
    .end local v0           #delay:I
    :cond_2
    return-void
.end method
