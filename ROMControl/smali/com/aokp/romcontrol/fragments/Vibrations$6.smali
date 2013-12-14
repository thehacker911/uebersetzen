.class Lcom/aokp/romcontrol/fragments/Vibrations$6;
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
    .line 179
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$6;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$6;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->resetCapture()V

    .line 183
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$6;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$6;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$6;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$6;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPatternBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$6;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mCurLoadedText:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method
