.class Lcom/aokp/romcontrol/fragments/Vibrations$4;
.super Ljava/lang/Object;
.source "Vibrations.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/Vibrations;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 155
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 158
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mTapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mLoadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mDelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mNewButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->stopRecording()V

    .line 166
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mCurLoadedText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->getLoadedPatternName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$4;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->getCurrentPattern()Landroid/media/VibrationPattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/Vibrations;->updatePatternBar(Landroid/media/VibrationPattern;)V

    .line 168
    return-void
.end method
