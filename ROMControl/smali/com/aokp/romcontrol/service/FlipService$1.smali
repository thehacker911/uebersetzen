.class Lcom/aokp/romcontrol/service/FlipService$1;
.super Ljava/lang/Object;
.source "FlipService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    .line 72
    iput-object p1, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 76
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    .line 80
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x1

    aget v7, v9, v10

    .line 81
    .local v7, y:F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v8, v9, v10

    .line 83
    .local v8, z:F
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$000(Lcom/aokp/romcontrol/service/FlipService;)Lcom/aokp/romcontrol/service/FlipService;

    move-result-object v9

    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->getUserFlipAudioMode(Landroid/content/Context;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$000(Lcom/aokp/romcontrol/service/FlipService;)Lcom/aokp/romcontrol/service/FlipService;

    move-result-object v9

    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->getUserCallSilent(Landroid/content/Context;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 84
    :cond_0
    const-string v9, "start looking!"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 85
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceUp:Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$200(Lcom/aokp/romcontrol/service/FlipService;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 87
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->mSamples:[Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$300(Lcom/aokp/romcontrol/service/FlipService;)[Z

    move-result-object v10

    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->mSampleIndex:I
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$400(Lcom/aokp/romcontrol/service/FlipService;)I

    move-result v11

    const/high16 v9, -0x3dcc

    cmpl-float v9, v7, v9

    if-lez v9, :cond_1

    const/high16 v9, 0x4234

    cmpg-float v9, v7, v9

    if-gez v9, :cond_1

    const/high16 v9, -0x3dcc

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1

    const/high16 v9, 0x4234

    cmpg-float v9, v8, v9

    if-gez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    aput-boolean v9, v10, v11

    .line 92
    const/4 v2, 0x1

    .line 93
    .local v2, faceUp:Z
    const-string v9, "device is face up!"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 94
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->mSamples:[Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$300(Lcom/aokp/romcontrol/service/FlipService;)[Z

    move-result-object v0

    .local v0, arr$:[Z
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-boolean v6, v0, v4

    .line 95
    .local v6, sample:Z
    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    .line 94
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 87
    .end local v0           #arr$:[Z
    .end local v2           #faceUp:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #sample:Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 95
    .restart local v0       #arr$:[Z
    .restart local v2       #faceUp:Z
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #sample:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 98
    .end local v6           #sample:Z
    :cond_3
    if-eqz v2, :cond_6

    .line 99
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    const/4 v9, 0x3

    if-ge v3, v9, :cond_4

    .line 100
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->mSamples:[Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$300(Lcom/aokp/romcontrol/service/FlipService;)[Z

    move-result-object v9

    const/4 v10, 0x0

    aput-boolean v10, v9, v3

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 102
    :cond_4
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceDown:Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$500(Lcom/aokp/romcontrol/service/FlipService;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 103
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v10, 0x0

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceDown:Z
    invoke-static {v9, v10}, Lcom/aokp/romcontrol/service/FlipService;->access$502(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 104
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iget-boolean v9, v9, Lcom/aokp/romcontrol/service/FlipService;->switchSoundBack:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$600(Lcom/aokp/romcontrol/service/FlipService;)Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    .line 106
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/aokp/romcontrol/service/FlipService;->switchSoundBack:Z

    .line 107
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$600(Lcom/aokp/romcontrol/service/FlipService;)Landroid/media/AudioManager;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 108
    const-string v9, "Flipped back face up! Ringer Normal!"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 111
    :cond_5
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v10, 0x1

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceUp:Z
    invoke-static {v9, v10}, Lcom/aokp/romcontrol/service/FlipService;->access$202(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 161
    .end local v0           #arr$:[Z
    .end local v2           #faceUp:Z
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iget-object v10, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->mSampleIndex:I
    invoke-static {v10}, Lcom/aokp/romcontrol/service/FlipService;->access$400(Lcom/aokp/romcontrol/service/FlipService;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    rem-int/lit8 v10, v10, 0x3

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->mSampleIndex:I
    invoke-static {v9, v10}, Lcom/aokp/romcontrol/service/FlipService;->access$402(Lcom/aokp/romcontrol/service/FlipService;I)I

    .line 163
    :cond_7
    return-void

    .line 113
    :cond_8
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceUp:Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$200(Lcom/aokp/romcontrol/service/FlipService;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 117
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->mSamples:[Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$300(Lcom/aokp/romcontrol/service/FlipService;)[Z

    move-result-object v10

    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->mSampleIndex:I
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$400(Lcom/aokp/romcontrol/service/FlipService;)I

    move-result v11

    const/high16 v9, 0x4307

    cmpl-float v9, v7, v9

    if-gtz v9, :cond_9

    const/high16 v9, -0x3cf9

    cmpg-float v9, v7, v9

    if-gez v9, :cond_a

    :cond_9
    const/high16 v9, -0x3dcc

    cmpl-float v9, v8, v9

    if-lez v9, :cond_a

    const/high16 v9, 0x4234

    cmpg-float v9, v8, v9

    if-gez v9, :cond_a

    const/4 v9, 0x1

    :goto_5
    aput-boolean v9, v10, v11

    .line 121
    const/4 v1, 0x1

    .line 122
    .local v1, faceDown:Z
    const-string v9, "device is face down!"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 123
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->mSamples:[Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$300(Lcom/aokp/romcontrol/service/FlipService;)[Z

    move-result-object v0

    .restart local v0       #arr$:[Z
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_6
    if-ge v4, v5, :cond_c

    aget-boolean v6, v0, v4

    .line 124
    .restart local v6       #sample:Z
    if-eqz v1, :cond_b

    if-eqz v6, :cond_b

    const/4 v1, 0x1

    .line 125
    :goto_7
    const-string v9, "device is face down, from the limits!"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 117
    .end local v0           #arr$:[Z
    .end local v1           #faceDown:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #sample:Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 124
    .restart local v0       #arr$:[Z
    .restart local v1       #faceDown:Z
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #sample:Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    .line 131
    .end local v6           #sample:Z
    :cond_c
    if-eqz v1, :cond_f

    .line 132
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_8
    const/4 v9, 0x3

    if-ge v3, v9, :cond_d

    .line 133
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->mSamples:[Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$300(Lcom/aokp/romcontrol/service/FlipService;)[Z

    move-result-object v9

    const/4 v10, 0x0

    aput-boolean v10, v9, v3

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 135
    :cond_d
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v10, 0x1

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->cancelRunDown:Z
    invoke-static {v9, v10}, Lcom/aokp/romcontrol/service/FlipService;->access$702(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 136
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$000(Lcom/aokp/romcontrol/service/FlipService;)Lcom/aokp/romcontrol/service/FlipService;

    move-result-object v9

    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->getUserFlipAudioMode(Landroid/content/Context;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_e

    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->callIncoming:Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$800(Lcom/aokp/romcontrol/service/FlipService;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 137
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iget-object v9, v9, Lcom/aokp/romcontrol/service/FlipService;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->faceDownTimer:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/aokp/romcontrol/service/FlipService;->access$900(Lcom/aokp/romcontrol/service/FlipService;)Ljava/lang/Runnable;

    move-result-object v10

    iget-object v11, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;
    invoke-static {v11}, Lcom/aokp/romcontrol/service/FlipService;->access$000(Lcom/aokp/romcontrol/service/FlipService;)Lcom/aokp/romcontrol/service/FlipService;

    move-result-object v11

    invoke-static {v11}, Lcom/aokp/romcontrol/service/FlipService;->getUserDownMS(Landroid/content/Context;)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :cond_e
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$000(Lcom/aokp/romcontrol/service/FlipService;)Lcom/aokp/romcontrol/service/FlipService;

    move-result-object v9

    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->getUserCallSilent(Landroid/content/Context;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 141
    const-string v9, "silent mode turned down"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 142
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$600(Lcom/aokp/romcontrol/service/FlipService;)Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->callIncoming:Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$800(Lcom/aokp/romcontrol/service/FlipService;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 144
    const-string v9, "silent mode on for incoming call!"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 145
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$600(Lcom/aokp/romcontrol/service/FlipService;)Landroid/media/AudioManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 146
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/aokp/romcontrol/service/FlipService;->wentSilentFromRing:Z

    .line 147
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v10, 0x0

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->callIncoming:Z
    invoke-static {v9, v10}, Lcom/aokp/romcontrol/service/FlipService;->access$802(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 148
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v10, 0x0

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceUp:Z
    invoke-static {v9, v10}, Lcom/aokp/romcontrol/service/FlipService;->access$202(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    goto/16 :goto_4

    .line 153
    .end local v3           #i:I
    :cond_f
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->faceDownIsRunning:Z
    invoke-static {v9}, Lcom/aokp/romcontrol/service/FlipService;->access$1000(Lcom/aokp/romcontrol/service/FlipService;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 154
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v10, 0x0

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->cancelRunDown:Z
    invoke-static {v9, v10}, Lcom/aokp/romcontrol/service/FlipService;->access$702(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 155
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v10, 0x0

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->wasFaceUp:Z
    invoke-static {v9, v10}, Lcom/aokp/romcontrol/service/FlipService;->access$202(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    .line 156
    iget-object v9, p0, Lcom/aokp/romcontrol/service/FlipService$1;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v10, 0x0

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->faceDownIsRunning:Z
    invoke-static {v9, v10}, Lcom/aokp/romcontrol/service/FlipService;->access$1002(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    goto/16 :goto_4
.end method
