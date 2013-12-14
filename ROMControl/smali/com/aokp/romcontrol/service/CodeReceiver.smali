.class public Lcom/aokp/romcontrol/service/CodeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CodeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getSwagInitiatedPref(Landroid/content/Context;)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string v0, "bootanimation"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "alt-animation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setSwagInitiatedPref(Landroid/content/Context;Z)V
    .locals 2
    .parameter "c"
    .parameter "value"

    .prologue
    .line 57
    const-string v0, "bootanimation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alt-animation"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/local/bootanimation.user"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/aokp/romcontrol/service/CodeReceiver;->getSwagInitiatedPref(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 16
    .local v0, swaggerInitiated:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 17
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/bootanimation.user"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/aokp/romcontrol/service/ExternalCommandService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "cmd"

    const-string v4, "mv /data/local/bootanimation.user /data/local/bootanimation.zip"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    :goto_1
    invoke-static {p1, v1}, Lcom/aokp/romcontrol/service/CodeReceiver;->setSwagInitiatedPref(Landroid/content/Context;Z)V

    .line 29
    const-string v2, ":("

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 45
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aokp/romcontrol/service/ExternalCommandService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cmd"

    const-string v3, "chmod 644 /data/local/bootanimation.zip"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    return-void

    .end local v0           #swaggerInitiated:Z
    :cond_1
    move v0, v1

    .line 14
    goto :goto_0

    .line 23
    .restart local v0       #swaggerInitiated:Z
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/aokp/romcontrol/service/ExternalCommandService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "cmd"

    const-string v4, "rm /data/local/bootanimation.zip"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 31
    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/local/bootanimation.zip"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 32
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/aokp/romcontrol/service/ExternalCommandService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "cmd"

    const-string v5, "mv /data/local/bootanimation.zip /data/local/bootanimation.user"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/aokp/romcontrol/service/ExternalCommandService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "cmd"

    const-string v5, "cp /system/media/bootanimation-alt.zip /data/local/bootanimation.zip"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    invoke-static {p1, v2}, Lcom/aokp/romcontrol/service/CodeReceiver;->setSwagInitiatedPref(Landroid/content/Context;Z)V

    .line 43
    const-string v2, ":)"

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
