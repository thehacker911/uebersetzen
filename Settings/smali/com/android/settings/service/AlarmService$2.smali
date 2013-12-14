.class Lcom/android/settings/service/AlarmService$2;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/service/AlarmService;
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
    .line 166
    iput-object p1, p0, Lcom/android/settings/service/AlarmService$2;->this$0:Lcom/android/settings/service/AlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/service/AlarmService$2;->this$0:Lcom/android/settings/service/AlarmService;

    invoke-virtual {v0}, Lcom/android/settings/service/AlarmService;->stopAlarm()V

    .line 169
    return-void
.end method
