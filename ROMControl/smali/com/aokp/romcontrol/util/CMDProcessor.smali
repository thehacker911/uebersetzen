.class public final Lcom/aokp/romcontrol/util/CMDProcessor;
.super Ljava/lang/Object;
.source "CMDProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMDProcessor"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static canSU()Z
    .locals 5

    .prologue
    .line 55
    const-string v2, "id"

    invoke-static {v2}, Lcom/aokp/romcontrol/util/CMDProcessor;->runShellCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v1

    .line 56
    .local v1, r:Lcom/aokp/romcontrol/util/CommandResult;
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .local v0, out:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/CommandResult;->getStdout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, " ; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/CommandResult;->getStderr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "CMDProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canSU() su["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/CommandResult;->getExitValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/CommandResult;->success()Z

    move-result v2

    return v2
.end method

.method public static runShellCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;
    .locals 2
    .parameter "cmd"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/aokp/romcontrol/util/CMDProcessor;->startShellCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;

    move-result-object v0

    .line 36
    .local v0, proc:Lcom/aokp/romcontrol/util/ChildProcess;
    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess;->waitFinished()I

    .line 37
    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess;->getResult()Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v1

    return-object v1
.end method

.method public static runSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;
    .locals 2
    .parameter "cmd"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/aokp/romcontrol/util/CMDProcessor;->startSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;

    move-result-object v0

    .line 50
    .local v0, proc:Lcom/aokp/romcontrol/util/ChildProcess;
    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess;->waitFinished()I

    .line 51
    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess;->getResult()Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v1

    return-object v1
.end method

.method public static runSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;
    .locals 2
    .parameter "cmdarray"
    .parameter "childStdin"

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/aokp/romcontrol/util/CMDProcessor;->startSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;

    move-result-object v0

    .line 22
    .local v0, proc:Lcom/aokp/romcontrol/util/ChildProcess;
    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess;->waitFinished()I

    .line 23
    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess;->getResult()Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v1

    return-object v1
.end method

.method public static startShellCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;
    .locals 3
    .parameter "cmd"

    .prologue
    .line 27
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 28
    .local v0, cmdarray:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "sh"

    aput-object v2, v0, v1

    .line 29
    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    .line 30
    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 31
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aokp/romcontrol/util/CMDProcessor;->startSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;

    move-result-object v1

    return-object v1
.end method

.method public static startSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;
    .locals 3
    .parameter "cmd"

    .prologue
    .line 41
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 42
    .local v0, cmdarray:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "su"

    aput-object v2, v0, v1

    .line 43
    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    .line 44
    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 45
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aokp/romcontrol/util/CMDProcessor;->startSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;

    move-result-object v1

    return-object v1
.end method

.method public static startSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;
    .locals 1
    .parameter "cmdarray"
    .parameter "childStdin"

    .prologue
    .line 17
    new-instance v0, Lcom/aokp/romcontrol/util/ChildProcess;

    invoke-direct {v0, p0, p1}, Lcom/aokp/romcontrol/util/ChildProcess;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
