.class Lcom/aokp/romcontrol/service/FlipService$2;
.super Landroid/content/BroadcastReceiver;
.source "FlipService.java"


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
    .line 166
    iput-object p1, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    sget-boolean v2, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;
    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->access$000(Lcom/aokp/romcontrol/service/FlipService;)Lcom/aokp/romcontrol/service/FlipService;

    move-result-object v2

    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->getUserFlipAudioMode(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 174
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #calls: Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->access$1200(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->sl:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/aokp/romcontrol/service/FlipService;->access$1100(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #calls: Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/aokp/romcontrol/service/FlipService;->access$1200(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 177
    sput-boolean v5, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    sget-boolean v2, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iget-object v2, v2, Lcom/aokp/romcontrol/service/FlipService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->screenOffTimer:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/aokp/romcontrol/service/FlipService;->access$1300(Lcom/aokp/romcontrol/service/FlipService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {p1}, Lcom/aokp/romcontrol/service/FlipService;->getUserScreenTimeout(Landroid/content/Context;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 184
    :cond_2
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, state:Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    sget-boolean v2, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iget-object v2, v2, Lcom/aokp/romcontrol/service/FlipService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->screenOffTimer:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/aokp/romcontrol/service/FlipService;->access$1300(Lcom/aokp/romcontrol/service/FlipService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 191
    :cond_3
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 192
    const-string v2, "the phone is ringing"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 193
    invoke-static {p1}, Lcom/aokp/romcontrol/service/FlipService;->getUserCallSilent(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_4

    .line 194
    const-string v2, "phone doesnt need sensor when ringing"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 195
    sget-boolean v2, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iget-object v2, v2, Lcom/aokp/romcontrol/service/FlipService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->screenOffTimer:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/aokp/romcontrol/service/FlipService;->access$1300(Lcom/aokp/romcontrol/service/FlipService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 199
    :cond_4
    const-string v2, "phone needs the sensor when ringing"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 200
    sget-boolean v2, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    if-nez v2, :cond_5

    .line 201
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #calls: Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->access$1200(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->sl:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/aokp/romcontrol/service/FlipService;->access$1100(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #calls: Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/aokp/romcontrol/service/FlipService;->access$1200(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 204
    sput-boolean v5, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    .line 206
    :cond_5
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #setter for: Lcom/aokp/romcontrol/service/FlipService;->callIncoming:Z
    invoke-static {v2, v5}, Lcom/aokp/romcontrol/service/FlipService;->access$802(Lcom/aokp/romcontrol/service/FlipService;Z)Z

    goto/16 :goto_0

    .line 209
    :cond_6
    const-string v2, "phone idle"

    #calls: Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->access$100(Ljava/lang/String;)V

    .line 210
    sget-boolean v2, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    if-nez v2, :cond_7

    .line 211
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;
    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->access$000(Lcom/aokp/romcontrol/service/FlipService;)Lcom/aokp/romcontrol/service/FlipService;

    move-result-object v2

    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->getUserFlipAudioMode(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 212
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #calls: Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->access$1200(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->sl:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Lcom/aokp/romcontrol/service/FlipService;->access$1100(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #calls: Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/aokp/romcontrol/service/FlipService;->access$1200(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 215
    sput-boolean v5, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    .line 218
    :cond_7
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    iget-boolean v2, v2, Lcom/aokp/romcontrol/service/FlipService;->wentSilentFromRing:Z

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/aokp/romcontrol/service/FlipService;->access$600(Lcom/aokp/romcontrol/service/FlipService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 220
    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService$2;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/aokp/romcontrol/service/FlipService;->wentSilentFromRing:Z

    goto/16 :goto_0
.end method
