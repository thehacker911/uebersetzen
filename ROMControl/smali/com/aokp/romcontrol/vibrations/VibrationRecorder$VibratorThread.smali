.class Lcom/aokp/romcontrol/vibrations/VibrationRecorder$VibratorThread;
.super Ljava/lang/Thread;
.source "VibrationRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/vibrations/VibrationRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;


# direct methods
.method private constructor <init>(Lcom/aokp/romcontrol/vibrations/VibrationRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder$VibratorThread;->this$0:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aokp/romcontrol/vibrations/VibrationRecorder;Lcom/aokp/romcontrol/vibrations/VibrationRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder$VibratorThread;-><init>(Lcom/aokp/romcontrol/vibrations/VibrationRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x2710

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder$VibratorThread;->this$0:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    iget-boolean v0, v0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mContinueVibrating:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder$VibratorThread;->this$0:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    iget-object v0, v0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 90
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method
