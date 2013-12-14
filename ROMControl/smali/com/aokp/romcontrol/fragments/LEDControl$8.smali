.class Lcom/aokp/romcontrol/fragments/LEDControl$8;
.super Landroid/os/Handler;
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
    .line 315
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$8;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 318
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$8;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->blinkOn:Z
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1100(Lcom/aokp/romcontrol/fragments/LEDControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$8;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mLEDButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1200(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$8;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$100(Lcom/aokp/romcontrol/fragments/LEDControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$8;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mLEDButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1200(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
