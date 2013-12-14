.class Lcom/android/settings/service/AlarmService$1;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/service/AlarmService;->startAlarmSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/service/AlarmService;


# direct methods
.method constructor <init>(Lcom/android/settings/service/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/service/AlarmService$1;->this$0:Lcom/android/settings/service/AlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 127
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/service/AlarmService$1;->this$0:Lcom/android/settings/service/AlarmService;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/service/AlarmService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/settings/service/AlarmService;->access$002(Lcom/android/settings/service/AlarmService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 129
    const/4 v0, 0x1

    return v0
.end method
