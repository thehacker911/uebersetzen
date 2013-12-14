.class public Lcom/android/settings/service/AlarmService;
.super Landroid/app/Service;
.source "AlarmService.java"


# instance fields
.field private mAlarmVolumeSetting:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mManager:Landroid/app/NotificationManager;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlaying:Z

.field final stopSelf:Landroid/media/MediaPlayer$OnSeekCompleteListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/service/AlarmService;->mPlaying:Z

    .line 166
    new-instance v0, Lcom/android/settings/service/AlarmService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/service/AlarmService$2;-><init>(Lcom/android/settings/service/AlarmService;)V

    iput-object v0, p0, Lcom/android/settings/service/AlarmService;->stopSelf:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/service/AlarmService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/service/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/service/AlarmService;->mAudioManager:Landroid/media/AudioManager;

    .line 52
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/service/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/service/AlarmService;->mManager:Landroid/app/NotificationManager;

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/service/AlarmService;->stopAlarm()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/service/AlarmService;->mManager:Landroid/app/NotificationManager;

    const/16 v1, 0x11e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 60
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 61
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f020079

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/service/AlarmService;->startAlarmSound()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/service/AlarmService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0807e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/service/AlarmService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 77
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/service/AlarmService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0807e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 89
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 90
    const/high16 v3, 0x3400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    const-class v3, Lcom/android/settings/service/BypassAlarm;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
    const-string v3, "number"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v0, "norun"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const/high16 v0, 0x1000

    invoke-static {p0, v7, v2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    iget-object v0, p0, Lcom/android/settings/service/AlarmService;->mManager:Landroid/app/NotificationManager;

    const/16 v2, 0x11e

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 102
    return v6

    .line 67
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public startAlarmSound()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 113
    invoke-static {p0}, Lcom/android/settings/service/SmsCallHelper;->returnUserRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    .local v0, alertSound:Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/android/settings/service/AlarmService;->mPlaying:Z

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/service/AlarmService;->stopAlarm()V

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 123
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings/service/AlarmService$1;

    invoke-direct {v2, p0}, Lcom/android/settings/service/AlarmService$1;-><init>(Lcom/android/settings/service/AlarmService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/service/AlarmService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 140
    invoke-static {p0}, Lcom/android/settings/service/SmsCallHelper;->returnUserRingtoneLoop(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 146
    :goto_1
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 147
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 148
    iput-boolean v5, p0, Lcom/android/settings/service/AlarmService;->mPlaying:Z

    .line 149
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/service/AlarmService;->mAlarmVolumeSetting:I

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/settings/service/AlarmService;->stopSelf:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    goto :goto_1
.end method

.method public stopAlarm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/android/settings/service/AlarmService;->mPlaying:Z

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 158
    iget-object v0, p0, Lcom/android/settings/service/AlarmService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/settings/service/AlarmService;->mAlarmVolumeSetting:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 162
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/service/AlarmService;->mPlaying:Z

    .line 164
    :cond_1
    return-void
.end method
