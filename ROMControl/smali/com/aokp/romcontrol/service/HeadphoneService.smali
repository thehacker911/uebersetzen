.class public Lcom/aokp/romcontrol/service/HeadphoneService;
.super Landroid/app/Service;
.source "HeadphoneService.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final KEY_BT_AUDIO_MODE:Ljava/lang/String; = "bt_audio_mode"

.field public static final KEY_HEADPHONE_AUDIO_MODE:Ljava/lang/String; = "headphone_audio_mode"

.field public static final MODE_SILENT:I = 0x0

.field public static final MODE_UNTOUCHED:I = -0x1

.field public static final MODE_VIBRATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "AudioReciver"

.field static mRegistered:Z


# instance fields
.field private headsetReceiver:Landroid/content/BroadcastReceiver;

.field mRunningOwnRingerModeChange:Z

.field mShouldSwitchBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aokp/romcontrol/service/HeadphoneService;->mRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/aokp/romcontrol/service/HeadphoneService;->mShouldSwitchBack:Z

    .line 28
    iput-boolean v0, p0, Lcom/aokp/romcontrol/service/HeadphoneService;->mRunningOwnRingerModeChange:Z

    .line 30
    new-instance v0, Lcom/aokp/romcontrol/service/HeadphoneService$1;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/service/HeadphoneService$1;-><init>(Lcom/aokp/romcontrol/service/HeadphoneService;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/service/HeadphoneService;->headsetReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/aokp/romcontrol/service/HeadphoneService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static getUserBTAudioMode(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 130
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "bt_audio_mode"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getUserHeadphoneAudioMode(Landroid/content/Context;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 122
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "headphone_audio_mode"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

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
    .line 159
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/aokp/romcontrol/service/HeadphoneService;->headsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/service/HeadphoneService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aokp/romcontrol/service/HeadphoneService;->mRegistered:Z

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 119
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    .line 138
    sget-boolean v1, Lcom/aokp/romcontrol/service/HeadphoneService;->mRegistered:Z

    if-nez v1, :cond_0

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, inf:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/aokp/romcontrol/service/HeadphoneService;->headsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/aokp/romcontrol/service/HeadphoneService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    sput-boolean v2, Lcom/aokp/romcontrol/service/HeadphoneService;->mRegistered:Z

    .line 147
    .end local v0           #inf:Landroid/content/IntentFilter;
    :cond_0
    return v2
.end method
