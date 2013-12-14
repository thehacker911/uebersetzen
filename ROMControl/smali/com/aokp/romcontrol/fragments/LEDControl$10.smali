.class Lcom/aokp/romcontrol/fragments/LEDControl$10;
.super Landroid/content/BroadcastReceiver;
.source "LEDControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/LEDControl;
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
    .line 584
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$10;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 588
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, action:Ljava/lang/String;
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 592
    .local v2, nm:Landroid/app/NotificationManager;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 593
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 594
    .local v1, nb:Landroid/app/Notification$Builder;
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 595
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$10;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$100(Lcom/aokp/romcontrol/fragments/LEDControl;)I

    move-result v4

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/LEDControl$10;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->onBlink:I
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1500(Lcom/aokp/romcontrol/fragments/LEDControl;)I

    move-result v5

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/LEDControl$10;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->offBlink:I
    invoke-static {v6}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1600(Lcom/aokp/romcontrol/fragments/LEDControl;)I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 596
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 597
    .local v3, test:Landroid/app/Notification;
    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 601
    .end local v1           #nb:Landroid/app/Notification$Builder;
    .end local v3           #test:Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
