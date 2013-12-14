.class public Lcom/aokp/romcontrol/util/ChildProcess;
.super Ljava/lang/Object;
.source "ChildProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;,
        Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;
    }
.end annotation


# static fields
.field private static final PIPE_SIZE:I = 0x400


# instance fields
.field private TAG:Ljava/lang/String;

.field private mChildProc:Ljava/lang/Process;

.field private mChildStderr:Ljava/lang/StringBuffer;

.field private mChildStderrReader:Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

.field private mChildStdinWriter:Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;

.field private mChildStdout:Ljava/lang/StringBuffer;

.field private mChildStdoutReader:Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

.field private mEndTime:J

.field private mExitValue:I

.field private mStartTime:J


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cmdarray"
    .parameter "childStdin"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->TAG:Ljava/lang/String;

    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mStartTime:J

    .line 84
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildProc:Ljava/lang/Process;

    .line 85
    if-eqz p2, :cond_0

    .line 86
    new-instance v0, Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;

    iget-object v1, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;-><init>(Lcom/aokp/romcontrol/util/ChildProcess;Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdinWriter:Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;

    .line 87
    iget-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdinWriter:Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;->start()V

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdout:Ljava/lang/StringBuffer;

    .line 90
    new-instance v0, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

    iget-object v1, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdout:Ljava/lang/StringBuffer;

    invoke-direct {v0, p0, v1, v2}, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;-><init>(Lcom/aokp/romcontrol/util/ChildProcess;Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdoutReader:Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

    .line 91
    iget-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdoutReader:Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;->start()V

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStderr:Ljava/lang/StringBuffer;

    .line 93
    new-instance v0, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

    iget-object v1, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStderr:Ljava/lang/StringBuffer;

    invoke-direct {v0, p0, v1, v2}, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;-><init>(Lcom/aokp/romcontrol/util/ChildProcess;Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStderrReader:Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

    .line 94
    iget-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStderrReader:Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getResult()Lcom/aokp/romcontrol/util/CommandResult;
    .locals 8

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/aokp/romcontrol/util/ChildProcess;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Child process running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    new-instance v0, Lcom/aokp/romcontrol/util/CommandResult;

    iget-wide v1, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mStartTime:J

    iget v3, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mExitValue:I

    iget-object v4, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdout:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStderr:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mEndTime:J

    invoke-direct/range {v0 .. v7}, Lcom/aokp/romcontrol/util/CommandResult;-><init>(JILjava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public isFinished()Z
    .locals 3

    .prologue
    .line 101
    const/4 v1, 0x1

    .line 102
    .local v1, finished:Z
    iget-object v2, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildProc:Ljava/lang/Process;

    if-eqz v2, :cond_0

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public waitFinished()I
    .locals 2

    .prologue
    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildProc:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildProc:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    iput v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mExitValue:I

    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mEndTime:J

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildProc:Ljava/lang/Process;

    .line 118
    iget-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStderrReader:Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;->join()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStderrReader:Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

    .line 120
    iget-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdoutReader:Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;->join()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdoutReader:Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;

    .line 122
    iget-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdinWriter:Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdinWriter:Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;->join()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mChildStdinWriter:Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0

    .line 130
    :cond_1
    iget v0, p0, Lcom/aokp/romcontrol/util/ChildProcess;->mExitValue:I

    return v0
.end method
