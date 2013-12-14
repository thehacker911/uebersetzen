.class Lcom/aokp/romcontrol/fragments/LEDControl$2$1;
.super Ljava/lang/Object;
.source "LEDControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/LEDControl$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aokp/romcontrol/fragments/LEDControl$2;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl$2;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$2$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$2$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$2;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/LEDControl$2;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_on"

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$2$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$2;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/LEDControl$2;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->timeOutput:[I
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$300(Lcom/aokp/romcontrol/fragments/LEDControl;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$2$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$2;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/LEDControl$2;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #calls: Lcom/aokp/romcontrol/fragments/LEDControl;->refreshSettings()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$400(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    .line 153
    return-void
.end method
