.class Lcom/aokp/romcontrol/service/HeadphoneService$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadphoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/service/HeadphoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/service/HeadphoneService;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/service/HeadphoneService;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 37
    invoke-static {p1}, Lcom/aokp/romcontrol/service/HeadphoneService;->getUserHeadphoneAudioMode(Landroid/content/Context;)I

    move-result v3

    .line 39
    .local v3, userPreferenceAudioMode:I
    if-ne v3, v8, :cond_1

    .line 111
    .end local v3           #userPreferenceAudioMode:I
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v3       #userPreferenceAudioMode:I
    :cond_1
    const-string v4, "state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 45
    .local v2, state:I
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 48
    .local v1, am:Landroid/media/AudioManager;
    if-ne v2, v7, :cond_3

    .line 50
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 51
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iput-boolean v7, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mShouldSwitchBack:Z

    .line 52
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 53
    const-string v4, "plugged in"

    #calls: Lcom/aokp/romcontrol/service/HeadphoneService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/aokp/romcontrol/service/HeadphoneService;->access$000(Ljava/lang/String;)V

    .line 64
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iput-boolean v7, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mRunningOwnRingerModeChange:Z

    goto :goto_0

    .line 57
    :cond_3
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iget-boolean v4, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mShouldSwitchBack:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eq v4, v5, :cond_2

    .line 59
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iput-boolean v6, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mShouldSwitchBack:Z

    .line 60
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 61
    const-string v4, "unplugged"

    #calls: Lcom/aokp/romcontrol/service/HeadphoneService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/aokp/romcontrol/service/HeadphoneService;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    .end local v1           #am:Landroid/media/AudioManager;
    .end local v2           #state:I
    .end local v3           #userPreferenceAudioMode:I
    :cond_4
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 66
    const-string v4, "BT Action Called"

    #calls: Lcom/aokp/romcontrol/service/HeadphoneService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/aokp/romcontrol/service/HeadphoneService;->access$000(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lcom/aokp/romcontrol/service/HeadphoneService;->getUserBTAudioMode(Landroid/content/Context;)I

    move-result v3

    .line 73
    .restart local v3       #userPreferenceAudioMode:I
    if-eq v3, v8, :cond_0

    .line 77
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .restart local v2       #state:I
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 83
    .restart local v1       #am:Landroid/media/AudioManager;
    if-ne v2, v5, :cond_6

    .line 85
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 86
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iput-boolean v7, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mShouldSwitchBack:Z

    .line 87
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 88
    const-string v4, "bt connected"

    #calls: Lcom/aokp/romcontrol/service/HeadphoneService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/aokp/romcontrol/service/HeadphoneService;->access$000(Ljava/lang/String;)V

    .line 99
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iput-boolean v7, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mRunningOwnRingerModeChange:Z

    goto :goto_0

    .line 92
    :cond_6
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iget-boolean v4, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mShouldSwitchBack:Z

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eq v4, v5, :cond_5

    .line 94
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iput-boolean v6, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mShouldSwitchBack:Z

    .line 95
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 96
    const-string v4, "bt not connected"

    #calls: Lcom/aokp/romcontrol/service/HeadphoneService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/aokp/romcontrol/service/HeadphoneService;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 100
    .end local v1           #am:Landroid/media/AudioManager;
    .end local v2           #state:I
    .end local v3           #userPreferenceAudioMode:I
    :cond_7
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const-string v4, "ringer mode changed"

    #calls: Lcom/aokp/romcontrol/service/HeadphoneService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/aokp/romcontrol/service/HeadphoneService;->access$000(Ljava/lang/String;)V

    .line 103
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iget-boolean v4, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mRunningOwnRingerModeChange:Z

    if-eqz v4, :cond_8

    .line 104
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iput-boolean v6, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mRunningOwnRingerModeChange:Z

    goto/16 :goto_0

    .line 105
    :cond_8
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iget-boolean v4, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mShouldSwitchBack:Z

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/aokp/romcontrol/service/HeadphoneService$1;->this$0:Lcom/aokp/romcontrol/service/HeadphoneService;

    iput-boolean v6, v4, Lcom/aokp/romcontrol/service/HeadphoneService;->mShouldSwitchBack:Z

    .line 107
    const-string v4, "not switching back"

    #calls: Lcom/aokp/romcontrol/service/HeadphoneService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/aokp/romcontrol/service/HeadphoneService;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
