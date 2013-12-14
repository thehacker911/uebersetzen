.class Lcom/aokp/romcontrol/fragments/Vibrations$1;
.super Landroid/os/Handler;
.source "Vibrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/Vibrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Vibrations;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$1;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/VibrationPattern;

    .line 65
    .local v0, mPattern:Landroid/media/VibrationPattern;
    if-nez v0, :cond_0

    .line 66
    const/16 v1, 0xb

    iput v1, p1, Landroid/os/Message;->what:I

    .line 68
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 87
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    return-void

    .line 70
    :pswitch_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$1;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {v0}, Landroid/media/VibrationPattern;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->loadPattern(Landroid/net/Uri;)V

    .line 71
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$1;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mCurLoadedText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/media/VibrationPattern;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$1;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    invoke-virtual {v1, v0}, Lcom/aokp/romcontrol/fragments/Vibrations;->updatePatternBar(Landroid/media/VibrationPattern;)V

    .line 73
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$1;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mTapButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$1;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 75
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$1;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$1;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mNewButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$1;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$1;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {v1, v0}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->delPattern(Landroid/media/VibrationPattern;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
