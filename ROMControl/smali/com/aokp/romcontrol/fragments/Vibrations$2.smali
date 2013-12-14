.class Lcom/aokp/romcontrol/fragments/Vibrations$2;
.super Ljava/lang/Object;
.source "Vibrations.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 124
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$2;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$2;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mTapButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$2;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->processTime(J)V

    .line 131
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$2;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->startVibration()V

    .line 137
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$2;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->processTime(J)V

    .line 134
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$2;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->stopVibration()V

    goto :goto_0
.end method
