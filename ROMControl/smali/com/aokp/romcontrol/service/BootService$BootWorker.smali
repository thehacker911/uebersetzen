.class Lcom/aokp/romcontrol/service/BootService$BootWorker;
.super Landroid/os/AsyncTask;
.source "BootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/service/BootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BootWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field final synthetic this$0:Lcom/aokp/romcontrol/service/BootService;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/service/BootService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->this$0:Lcom/aokp/romcontrol/service/BootService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->c:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/aokp/romcontrol/service/BootService$BootWorker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, -0x1

    .line 38
    iget-object v0, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/aokp/romcontrol/service/HeadphoneService;->getUserHeadphoneAudioMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/aokp/romcontrol/service/HeadphoneService;->getUserBTAudioMode(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->c:Landroid/content/Context;

    const-class v3, Lcom/aokp/romcontrol/service/HeadphoneService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->getUserFlipAudioMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->getUserCallSilent(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->c:Landroid/content/Context;

    const-class v3, Lcom/aokp/romcontrol/service/FlipService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/aokp/romcontrol/service/BootService$BootWorker;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/aokp/romcontrol/service/BootService;->servicesStarted:Z

    .line 55
    iget-object v0, p0, Lcom/aokp/romcontrol/service/BootService$BootWorker;->this$0:Lcom/aokp/romcontrol/service/BootService;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/service/BootService;->stopSelf()V

    .line 56
    return-void
.end method
