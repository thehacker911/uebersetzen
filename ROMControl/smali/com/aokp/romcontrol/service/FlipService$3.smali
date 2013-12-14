.class Lcom/aokp/romcontrol/service/FlipService$3;
.super Ljava/lang/Object;
.source "FlipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/service/FlipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/service/FlipService;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/service/FlipService;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 230
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->faceDownIsRunning:Z
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/service/FlipService;->access$1002(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 231
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->cancelRunDown:Z
    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->access$700(Lcom/aokp/romcontrol/service/FlipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;
    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->access$000(Lcom/aokp/romcontrol/service/FlipService;)Lcom/aokp/romcontrol/service/FlipService;

    move-result-object v0

    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->getUserFlipAudioMode(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 234
    :pswitch_0
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->access$600(Lcom/aokp/romcontrol/service/FlipService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 235
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->access$600(Lcom/aokp/romcontrol/service/FlipService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 236
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iput-boolean v1, v0, Lcom/aokp/romcontrol/service/FlipService;->switchSoundBack:Z

    .line 237
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceUp:Z
    invoke-static {v0, v2}, Lcom/aokp/romcontrol/service/FlipService;->access$202(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 238
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceDown:Z
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/service/FlipService;->access$502(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 239
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iget-object v0, v0, Lcom/aokp/romcontrol/service/FlipService;->vib:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->pattern:[J
    invoke-static {v1}, Lcom/aokp/romcontrol/service/FlipService;->access$1400(Lcom/aokp/romcontrol/service/FlipService;)[J

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 240
    const-string v0, "face over, lets go silent!"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->access$600(Lcom/aokp/romcontrol/service/FlipService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 245
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->access$600(Lcom/aokp/romcontrol/service/FlipService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 246
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iput-boolean v1, v0, Lcom/aokp/romcontrol/service/FlipService;->switchSoundBack:Z

    .line 247
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceUp:Z
    invoke-static {v0, v2}, Lcom/aokp/romcontrol/service/FlipService;->access$202(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 248
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceDown:Z
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/service/FlipService;->access$502(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 249
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iget-object v0, v0, Lcom/aokp/romcontrol/service/FlipService;->vib:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/aokp/romcontrol/service/FlipService$3;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->pattern:[J
    invoke-static {v1}, Lcom/aokp/romcontrol/service/FlipService;->access$1400(Lcom/aokp/romcontrol/service/FlipService;)[J

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 250
    const-string v0, "face over, lets go vibrate!"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
