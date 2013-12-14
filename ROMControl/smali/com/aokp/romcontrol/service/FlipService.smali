.class public Lcom/aokp/romcontrol/service/FlipService;
.super Landroid/app/Service;
.source "FlipService.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final DEFAULT_FLIP:Ljava/lang/String; = "-1"

.field public static final DOWN_MS_DEFAULT:Ljava/lang/String; = "1500"

.field private static final FACE_DOWN_LOWER_LIMIT:I = -0x87

.field private static final FACE_DOWN_UPPER_LIMIT:I = 0x87

.field private static final FACE_UP_LOWER_LIMIT:I = -0x2d

.field private static final FACE_UP_UPPER_LIMIT:I = 0x2d

.field public static final INSTANT_OFF:I = 0x0

.field public static final KEY_FLIP_MODE:Ljava/lang/String; = "flip_mode"

.field public static final KEY_PHONE_RING_SILENCE:Ljava/lang/String; = "phone_ring_silence"

.field public static final KEY_USER_DOWN_MS:Ljava/lang/String; = "user_down_ms"

.field public static final KEY_USER_TIMEOUT:Ljava/lang/String; = "user_timeout"

.field public static final MODE_SILENT:I = 0x0

.field public static final MODE_VIBRATE:I = 0x1

.field public static final PHONE_SILENCE_OFF:Ljava/lang/String; = "0"

.field private static final SENSOR_SAMPLES:I = 0x3

.field static final TAG:Ljava/lang/String; = "FlipService"

.field private static final TILT_LOWER_LIMIT:I = -0x2d

.field private static final TILT_UPPER_LIMIT:I = 0x2d

.field public static final TIMEOUT_MS_DEFAULT:Ljava/lang/String; = "15000"

.field static mSecondReg:Z


# instance fields
.field private am:Landroid/media/AudioManager;

.field private callIncoming:Z

.field private cancelRunDown:Z

.field private faceDownIsRunning:Z

.field private faceDownTimer:Ljava/lang/Runnable;

.field private fastQuick:I

.field handler:Landroid/os/Handler;

.field private mSampleIndex:I

.field private mSamples:[Z

.field private pattern:[J

.field private pause:I

.field private quick:I

.field private screenOffTimer:Ljava/lang/Runnable;

.field private screenReceiver:Landroid/content/BroadcastReceiver;

.field private service:Lcom/aokp/romcontrol/service/FlipService;

.field private sl:Landroid/hardware/SensorEventListener;

.field switchSoundBack:Z

.field vib:Landroid/os/Vibrator;

.field private wasFaceDown:Z

.field private wasFaceUp:Z

.field wentSilentFromRing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/16 v2, 0x96

    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->mSamples:[Z

    .line 50
    iput-boolean v1, p0, Lcom/aokp/romcontrol/service/FlipService;->wasFaceDown:Z

    .line 51
    iput-boolean v1, p0, Lcom/aokp/romcontrol/service/FlipService;->switchSoundBack:Z

    .line 52
    iput-boolean v1, p0, Lcom/aokp/romcontrol/service/FlipService;->wentSilentFromRing:Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->handler:Landroid/os/Handler;

    .line 55
    iput-boolean v1, p0, Lcom/aokp/romcontrol/service/FlipService;->faceDownIsRunning:Z

    .line 56
    iput-boolean v1, p0, Lcom/aokp/romcontrol/service/FlipService;->cancelRunDown:Z

    .line 57
    iput-boolean v1, p0, Lcom/aokp/romcontrol/service/FlipService;->callIncoming:Z

    .line 60
    iput-object p0, p0, Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;

    .line 65
    iput v2, p0, Lcom/aokp/romcontrol/service/FlipService;->quick:I

    .line 66
    const/16 v0, 0x32

    iput v0, p0, Lcom/aokp/romcontrol/service/FlipService;->fastQuick:I

    .line 67
    iput v2, p0, Lcom/aokp/romcontrol/service/FlipService;->pause:I

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [J

    aput-wide v5, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/aokp/romcontrol/service/FlipService;->quick:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/aokp/romcontrol/service/FlipService;->pause:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    iget v1, p0, Lcom/aokp/romcontrol/service/FlipService;->fastQuick:I

    int-to-long v1, v1

    aput-wide v1, v0, v4

    const/4 v1, 0x4

    aput-wide v5, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/aokp/romcontrol/service/FlipService;->quick:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->pattern:[J

    .line 72
    new-instance v0, Lcom/aokp/romcontrol/service/FlipService$1;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/service/FlipService$1;-><init>(Lcom/aokp/romcontrol/service/FlipService;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->sl:Landroid/hardware/SensorEventListener;

    .line 166
    new-instance v0, Lcom/aokp/romcontrol/service/FlipService$2;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/service/FlipService$2;-><init>(Lcom/aokp/romcontrol/service/FlipService;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->screenReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    new-instance v0, Lcom/aokp/romcontrol/service/FlipService$3;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/service/FlipService$3;-><init>(Lcom/aokp/romcontrol/service/FlipService;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->faceDownTimer:Ljava/lang/Runnable;

    .line 258
    new-instance v0, Lcom/aokp/romcontrol/service/FlipService$4;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/service/FlipService$4;-><init>(Lcom/aokp/romcontrol/service/FlipService;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->screenOffTimer:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/service/FlipService;)Lcom/aokp/romcontrol/service/FlipService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p0}, Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/aokp/romcontrol/service/FlipService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/aokp/romcontrol/service/FlipService;->faceDownIsRunning:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/aokp/romcontrol/service/FlipService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/aokp/romcontrol/service/FlipService;->faceDownIsRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->sl:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/aokp/romcontrol/service/FlipService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->screenOffTimer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/aokp/romcontrol/service/FlipService;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->pattern:[J

    return-object v0
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/service/FlipService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/aokp/romcontrol/service/FlipService;->wasFaceUp:Z

    return v0
.end method

.method static synthetic access$202(Lcom/aokp/romcontrol/service/FlipService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/aokp/romcontrol/service/FlipService;->wasFaceUp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/aokp/romcontrol/service/FlipService;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->mSamples:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/aokp/romcontrol/service/FlipService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/aokp/romcontrol/service/FlipService;->mSampleIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/aokp/romcontrol/service/FlipService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/aokp/romcontrol/service/FlipService;->mSampleIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/aokp/romcontrol/service/FlipService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/aokp/romcontrol/service/FlipService;->wasFaceDown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/aokp/romcontrol/service/FlipService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/aokp/romcontrol/service/FlipService;->wasFaceDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/aokp/romcontrol/service/FlipService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aokp/romcontrol/service/FlipService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/aokp/romcontrol/service/FlipService;->cancelRunDown:Z

    return v0
.end method

.method static synthetic access$702(Lcom/aokp/romcontrol/service/FlipService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/aokp/romcontrol/service/FlipService;->cancelRunDown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/aokp/romcontrol/service/FlipService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/aokp/romcontrol/service/FlipService;->callIncoming:Z

    return v0
.end method

.method static synthetic access$802(Lcom/aokp/romcontrol/service/FlipService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/aokp/romcontrol/service/FlipService;->callIncoming:Z

    return p1
.end method

.method static synthetic access$900(Lcom/aokp/romcontrol/service/FlipService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->faceDownTimer:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getSensorManager()Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 267
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/service/FlipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public static getUserCallSilent(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 320
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 322
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "phone_ring_silence"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getUserDownMS(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 314
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "user_down_ms"

    const-string v2, "1500"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getUserFlipAudioMode(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 302
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 304
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "flip_mode"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getUserScreenTimeout(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 308
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 310
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "user_timeout"

    const-string v2, "15000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 339
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/aokp/romcontrol/service/FlipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/aokp/romcontrol/service/FlipService;->am:Landroid/media/AudioManager;

    .line 275
    iget-object v1, p0, Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/aokp/romcontrol/service/FlipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/aokp/romcontrol/service/FlipService;->vib:Landroid/os/Vibrator;

    .line 278
    iget-object v1, p0, Lcom/aokp/romcontrol/service/FlipService;->service:Lcom/aokp/romcontrol/service/FlipService;

    invoke-static {v1}, Lcom/aokp/romcontrol/service/FlipService;->getUserFlipAudioMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/service/FlipService;->sl:Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 284
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/aokp/romcontrol/service/FlipService;->screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/aokp/romcontrol/service/FlipService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    const-string v1, "register sensor manager"

    invoke-static {v1}, Lcom/aokp/romcontrol/service/FlipService;->log(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 294
    sget-boolean v0, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aokp/romcontrol/service/FlipService;->sl:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService;->screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/service/FlipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 299
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method
