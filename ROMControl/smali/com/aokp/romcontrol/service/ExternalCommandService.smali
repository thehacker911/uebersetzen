.class public Lcom/aokp/romcontrol/service/ExternalCommandService;
.super Landroid/app/IntentService;
.source "ExternalCommandService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/aokp/romcontrol/service/ExternalCommandService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 21
    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aokp/romcontrol/util/CMDProcessor;->startSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;

    .line 25
    :cond_0
    return-void
.end method
