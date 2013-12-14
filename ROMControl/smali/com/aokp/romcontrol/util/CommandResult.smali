.class public Lcom/aokp/romcontrol/util/CommandResult;
.super Ljava/lang/Object;
.source "CommandResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mEndTime:J

.field private final mExitValue:I

.field private final mStartTime:J

.field private final mStderr:Ljava/lang/String;

.field private final mStdout:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "startTime"
    .parameter "exitValue"
    .parameter "stdout"
    .parameter "stderr"
    .parameter "endTime"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->TAG:Ljava/lang/String;

    .line 26
    iput-wide p1, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStartTime:J

    .line 27
    iput p3, p0, Lcom/aokp/romcontrol/util/CommandResult;->mExitValue:I

    .line 28
    iput-object p4, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStdout:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    .line 30
    iput-wide p6, p0, Lcom/aokp/romcontrol/util/CommandResult;->mEndTime:J

    .line 32
    iget-object v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time to execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/aokp/romcontrol/util/CommandResult;->mEndTime:J

    iget-wide v4, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ns (nanoseconds)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0}, Lcom/aokp/romcontrol/util/CommandResult;->checkForErrors()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .parameter "inParcel"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/aokp/romcontrol/util/CommandResult;-><init>(JILjava/lang/String;Ljava/lang/String;J)V

    .line 46
    return-void
.end method

.method private checkForErrors()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 74
    iget v6, p0, Lcom/aokp/romcontrol/util/CommandResult;->mExitValue:I

    if-nez v6, :cond_0

    const-string v6, ""

    iget-object v7, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 78
    :cond_0
    iget-object v6, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    const-string v7, "chmod: /sys/devices/system/cpu/cpu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    const-string v7, ": can\'t create /sys/devices/system/cpu/cpu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 83
    .local v5, skipOfflineCpu:Z
    :cond_1
    :goto_0
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, lineEnding:Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    .local v2, errorWriter:Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/aokp/error.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, errorLogFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 92
    :cond_2
    new-instance v3, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v3, v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 94
    .end local v2           #errorWriter:Ljava/io/FileWriter;
    .local v3, errorWriter:Ljava/io/FileWriter;
    if-eqz v5, :cond_5

    .line 95
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 96
    const-string v6, "Attempted to write to an offline cpu core (ignore me)."

    invoke-virtual {v3, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 103
    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    if-eqz v3, :cond_3

    .line 109
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    .end local v1           #errorLogFile:Ljava/io/File;
    .end local v3           #errorWriter:Ljava/io/FileWriter;
    .end local v4           #lineEnding:Ljava/lang/String;
    .end local v5           #skipOfflineCpu:Z
    :cond_3
    :goto_2
    return-void

    .line 78
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 98
    .restart local v1       #errorLogFile:Ljava/io/File;
    .restart local v3       #errorWriter:Ljava/io/FileWriter;
    .restart local v4       #lineEnding:Ljava/lang/String;
    .restart local v5       #skipOfflineCpu:Z
    :cond_5
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/aokp/romcontrol/util/CommandResult;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " shell error detected!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CommandResult {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/aokp/romcontrol/util/CommandResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 105
    .end local v1           #errorLogFile:Ljava/io/File;
    .end local v3           #errorWriter:Ljava/io/FileWriter;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #errorWriter:Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    iget-object v6, p0, Lcom/aokp/romcontrol/util/CommandResult;->TAG:Ljava/lang/String;

    const-string v7, "Failed to write command result to error file"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    if-eqz v2, :cond_3

    .line 109
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 110
    :catch_1
    move-exception v6

    goto :goto_2

    .line 107
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_6

    .line 109
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 112
    :cond_6
    :goto_5
    throw v6

    .line 110
    .end local v2           #errorWriter:Ljava/io/FileWriter;
    .restart local v1       #errorLogFile:Ljava/io/File;
    .restart local v3       #errorWriter:Ljava/io/FileWriter;
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v1           #errorLogFile:Ljava/io/File;
    .end local v3           #errorWriter:Ljava/io/FileWriter;
    .restart local v2       #errorWriter:Ljava/io/FileWriter;
    :catch_3
    move-exception v7

    goto :goto_5

    .line 107
    .end local v2           #errorWriter:Ljava/io/FileWriter;
    .restart local v1       #errorLogFile:Ljava/io/File;
    .restart local v3       #errorWriter:Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #errorWriter:Ljava/io/FileWriter;
    .restart local v2       #errorWriter:Ljava/io/FileWriter;
    goto :goto_4

    .line 104
    .end local v1           #errorLogFile:Ljava/io/File;
    :catch_4
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    if-ne p0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    instance-of v3, p1, Lcom/aokp/romcontrol/util/CommandResult;

    if-nez v3, :cond_2

    move v1, v2

    .line 150
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 153
    check-cast v0, Lcom/aokp/romcontrol/util/CommandResult;

    .line 155
    .local v0, that:Lcom/aokp/romcontrol/util/CommandResult;
    iget-wide v3, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStartTime:J

    iget-wide v5, v0, Lcom/aokp/romcontrol/util/CommandResult;->mStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/aokp/romcontrol/util/CommandResult;->mExitValue:I

    iget v4, v0, Lcom/aokp/romcontrol/util/CommandResult;->mExitValue:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStdout:Ljava/lang/String;

    iget-object v4, v0, Lcom/aokp/romcontrol/util/CommandResult;->mStdout:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    iget-object v4, v0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/aokp/romcontrol/util/CommandResult;->mEndTime:J

    iget-wide v5, v0, Lcom/aokp/romcontrol/util/CommandResult;->mEndTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->mEndTime:J

    return-wide v0
.end method

.method public getExitValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->mExitValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStartTime:J

    return-wide v0
.end method

.method public getStderr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getStdout()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStdout:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, result:I
    iget-wide v3, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStartTime:J

    iget-wide v5, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStartTime:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/lit8 v0, v1, 0x0

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/aokp/romcontrol/util/CommandResult;->mExitValue:I

    add-int v0, v1, v3

    .line 167
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStdout:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStdout:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 168
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 169
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/aokp/romcontrol/util/CommandResult;->mEndTime:J

    iget-wide v4, p0, Lcom/aokp/romcontrol/util/CommandResult;->mEndTime:J

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 170
    return v0

    :cond_1
    move v1, v2

    .line 167
    goto :goto_0
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->mExitValue:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommandResult{, mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExitValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aokp/romcontrol/util/CommandResult;->mExitValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stdout=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStdout:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stderr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/aokp/romcontrol/util/CommandResult;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->mExitValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStdout:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->mStderr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-wide v0, p0, Lcom/aokp/romcontrol/util/CommandResult;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    return-void
.end method
