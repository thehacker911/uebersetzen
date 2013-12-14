.class Lcom/aokp/romcontrol/fragments/Vibrations$7;
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
    .line 191
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$7;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$7;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/Vibrations;->showDia(I)V

    .line 195
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$7;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mTapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$7;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$7;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$7;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mNewButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$7;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 200
    return-void
.end method
