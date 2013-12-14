.class public Lcom/aokp/romcontrol/vibrations/VibrationRecorder;
.super Ljava/lang/Object;
.source "VibrationRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/vibrations/VibrationRecorder$1;,
        Lcom/aokp/romcontrol/vibrations/VibrationRecorder$VibratorThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VibrationRecorder"


# instance fields
.field mCapturedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mContinueVibrating:Z

.field mCurrentPattern:Landroid/media/VibrationPattern;

.field mLoadedPattern:Z

.field mRecordInProgress:Z

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mVibrator:Landroid/os/Vibrator;

    .line 25
    iput-object p1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public delPattern(Landroid/media/VibrationPattern;)V
    .locals 3
    .parameter "pattern"

    .prologue
    const/4 v2, 0x0

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/VibrationPattern;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void
.end method

.method public getCurrentPattern()Landroid/media/VibrationPattern;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    return-object v0
.end method

.method public getLoadedPatternName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    invoke-virtual {v0}, Landroid/media/VibrationPattern;->getName()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public loadPattern(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 118
    new-instance v0, Landroid/media/VibrationPattern;

    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Landroid/media/VibrationPattern;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mLoadedPattern:Z

    .line 120
    return-void
.end method

.method public playCapturedPattern()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    invoke-virtual {v1}, Landroid/media/VibrationPattern;->getPattern()[J

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 84
    :cond_0
    return-void
.end method

.method public processTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mRecordInProgress:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCapturedTimes:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public resetCapture()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCapturedTimes:Ljava/util/ArrayList;

    .line 76
    iput-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mLoadedPattern:Z

    .line 78
    return-void
.end method

.method public saveCapturedPattern(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    if-eqz v1, :cond_0

    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    invoke-virtual {v1, p1}, Landroid/media/VibrationPattern;->setName(Ljava/lang/String;)V

    .line 99
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "pattern"

    iget-object v2, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    invoke-virtual {v2}, Landroid/media/VibrationPattern;->getPatternString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-boolean v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mLoadedPattern:Z

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    invoke-virtual {v2}, Landroid/media/VibrationPattern;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v0       #values:Landroid/content/ContentValues;
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    iget-object v2, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/VibrationPattern;->setUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public startRecording()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mRecordInProgress:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCapturedTimes:Ljava/util/ArrayList;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->processTime(J)V

    .line 49
    return-void
.end method

.method public startVibration()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mVibratorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mContinueVibrating:Z

    .line 31
    new-instance v0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder$VibratorThread;-><init>(Lcom/aokp/romcontrol/vibrations/VibrationRecorder;Lcom/aokp/romcontrol/vibrations/VibrationRecorder$1;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mVibratorThread:Ljava/lang/Thread;

    .line 32
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mVibratorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 5

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->stopVibration()V

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mRecordInProgress:Z

    .line 54
    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCapturedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 55
    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    invoke-virtual {v1}, Landroid/media/VibrationPattern;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 57
    .local v0, tempUri:Landroid/net/Uri;
    new-instance v1, Landroid/media/VibrationPattern;

    iget-object v2, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    invoke-virtual {v2}, Landroid/media/VibrationPattern;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCapturedTimes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Landroid/media/VibrationPattern;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    .line 59
    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    invoke-virtual {v1, v0}, Landroid/media/VibrationPattern;->setUri(Landroid/net/Uri;)V

    .line 66
    .end local v0           #tempUri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Landroid/media/VibrationPattern;

    const-string v2, "<New>"

    iget-object v3, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCapturedTimes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Landroid/media/VibrationPattern;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mCurrentPattern:Landroid/media/VibrationPattern;

    goto :goto_0
.end method

.method public stopVibration()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mVibratorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mContinueVibrating:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mVibratorThread:Ljava/lang/Thread;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 43
    return-void
.end method
