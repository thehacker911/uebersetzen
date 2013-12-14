.class Lcom/aokp/romcontrol/fragments/LEDControl$7$1;
.super Ljava/lang/Object;
.source "LEDControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/LEDControl$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aokp/romcontrol/fragments/LEDControl$7;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl$7;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$7$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 277
    const-string v0, "persist.sys.led-brightness"

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$7$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$7;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/LEDControl$7;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->brightnessOutput:[I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1000(Lcom/aokp/romcontrol/fragments/LEDControl;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aokp/romcontrol/util/Helpers;->setSystemProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$7$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$7;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/LEDControl$7;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_brightness"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    return-void
.end method
