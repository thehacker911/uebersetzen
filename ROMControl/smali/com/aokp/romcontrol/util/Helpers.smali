.class public Lcom/aokp/romcontrol/util/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static checkBusybox()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/busybox"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/busybox"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    sget-object v2, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v3, "Busybox not in xbin or bin!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_0
    return v1

    .line 96
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    :try_start_0
    const-string v2, "busybox mount"

    invoke-static {v2}, Lcom/aokp/romcontrol/util/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aokp/romcontrol/util/CommandResult;->success()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    sget-object v2, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v3, "Busybox is there but it is borked! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .restart local v0       #e:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v3, "NullpointerException thrown while testing busybox"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkSu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    sget-object v2, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v3, "su binary does not exist!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_0
    return v1

    .line 49
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    :try_start_0
    const-string v2, "ls /data/app-private"

    invoke-static {v2}, Lcom/aokp/romcontrol/util/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aokp/romcontrol/util/CommandResult;->success()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    sget-object v2, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v3, " SU exists and we have permission"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    sget-object v2, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v3, " SU exists but we don\'t have permission"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .restart local v0       #e:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v3, "NullPointer throw while looking for su binary"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAvailableIOSchedulers()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, schedulers:[Ljava/lang/String;
    const-string v3, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v3}, Lcom/aokp/romcontrol/util/Helpers;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, aux:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 204
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 205
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 206
    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    aget-object v3, v0, v1

    const/4 v4, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v2, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_0
    aget-object v3, v0, v1

    goto :goto_1

    .line 211
    .end local v1           #i:I
    :cond_1
    return-object v2
.end method

.method public static getIOScheduler()Ljava/lang/String;
    .locals 8

    .prologue
    .line 223
    const/4 v4, 0x0

    .line 224
    .local v4, scheduler:Ljava/lang/String;
    const-string v6, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v6}, Lcom/aokp/romcontrol/util/Helpers;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, schedulers:[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 226
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 227
    .local v3, s:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_1

    .line 228
    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 233
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 226
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #s:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getMount(Ljava/lang/String;)Z
    .locals 10
    .parameter "mount"

    .prologue
    const/16 v9, 0x20

    const/4 v6, 0x1

    .line 134
    const-string v7, "/system"

    invoke-static {v7}, Lcom/aokp/romcontrol/util/Helpers;->getMounts(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, mounts:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v7, v2

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    .line 136
    const/4 v7, 0x0

    aget-object v0, v2, v7

    .line 137
    .local v0, device:Ljava/lang/String;
    aget-object v3, v2, v6

    .line 138
    .local v3, path:Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v4, v2, v7

    .line 139
    .local v4, point:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mount -o "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",remount -t "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 141
    .local v5, preferredMountCmd:Ljava/lang/String;
    invoke-static {v5}, Lcom/aokp/romcontrol/util/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aokp/romcontrol/util/CommandResult;->success()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    .end local v0           #device:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #point:Ljava/lang/String;
    .end local v5           #preferredMountCmd:Ljava/lang/String;
    :goto_0
    return v6

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "busybox mount -o remount,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " /system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, fallbackMountCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/aokp/romcontrol/util/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aokp/romcontrol/util/CommandResult;->success()Z

    move-result v6

    goto :goto_0
.end method

.method public static getMounts(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/mounts"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x100

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 112
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v4

    .line 122
    if-eqz v1, :cond_1

    .line 124
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    move-object v0, v1

    .line 130
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    :goto_1
    return-object v4

    .line 122
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_5

    .line 124
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .line 130
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 125
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 127
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 117
    .end local v3           #line:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 118
    .local v2, ignored:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    sget-object v4, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v5, "/proc/mounts does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    if-eqz v0, :cond_3

    .line 124
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 125
    :catch_2
    move-exception v4

    goto :goto_2

    .line 119
    .end local v2           #ignored:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 120
    .local v2, ignored:Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v4, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v5, "Error reading /proc/mounts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    if-eqz v0, :cond_3

    .line 124
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 125
    :catch_4
    move-exception v4

    goto :goto_2

    .line 122
    .end local v2           #ignored:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v0, :cond_4

    .line 124
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 127
    :cond_4
    :goto_6
    throw v4

    .line 125
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catch_5
    move-exception v5

    goto :goto_0

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v5

    goto :goto_6

    .line 122
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 119
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 117
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_5
    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getSystemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "prop"
    .parameter "def"

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 313
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 317
    :goto_0
    if-nez v1, :cond_0

    .end local p1
    :goto_1
    return-object p1

    .line 314
    .restart local p1
    :catch_0
    move-exception v0

    .line 315
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get prop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #iae:Ljava/lang/IllegalArgumentException;
    :cond_0
    move-object p1, v1

    .line 317
    goto :goto_1
.end method

.method public static getTimestamp(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 279
    const-string v3, "unknown"

    .line 280
    .local v3, timestamp:Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 281
    .local v1, now:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 282
    .local v0, dateFormat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 283
    .local v2, timeFormat:Ljava/text/DateFormat;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    :cond_0
    return-object v3
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, state:Z
    if-eqz p0, :cond_0

    .line 70
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 72
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 73
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    sget-object v3, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v4, "The device currently has data connectivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v2, 0x1

    .line 81
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 77
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #netInfo:Landroid/net/NetworkInfo;
    :cond_1
    sget-object v3, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v4, "The device does not currently have data connectivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 5
    .parameter "packageName"
    .parameter "pm"

    .prologue
    const/4 v2, 0x0

    .line 291
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .local v0, mVersion:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 299
    .end local v0           #mVersion:Ljava/lang/String;
    :goto_0
    return v2

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, notFound:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v4, "Package could not be found!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 299
    .end local v1           #notFound:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #mVersion:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static msgLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 243
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    :cond_0
    return-void
.end method

.method public static msgShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 255
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    :cond_0
    return-void
.end method

.method public static readFileViaShell(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "filePath"
    .parameter "useSu"

    .prologue
    .line 174
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, command:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/aokp/romcontrol/util/CMDProcessor;->runSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/CommandResult;->getStdout()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/aokp/romcontrol/util/CMDProcessor;->runShellCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/CommandResult;->getStdout()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "fname"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 153
    .local v4, line:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x400

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 154
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v4

    .line 162
    if-eqz v1, :cond_0

    .line 164
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v4

    .line 170
    :cond_1
    :goto_1
    return-object v5

    .line 155
    :catch_0
    move-exception v3

    .line 156
    .local v3, ignored:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v6, "File was not found! trying via shell..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/aokp/romcontrol/util/Helpers;->readFileViaShell(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 162
    if-eqz v0, :cond_1

    .line 164
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 165
    :catch_1
    move-exception v6

    goto :goto_1

    .line 158
    .end local v3           #ignored:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 159
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    sget-object v5, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    const-string v6, "IOException while reading system file"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/aokp/romcontrol/util/Helpers;->readFileViaShell(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 162
    if-eqz v0, :cond_1

    .line 164
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 165
    :catch_3
    move-exception v6

    goto :goto_1

    .line 162
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_2

    .line 164
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 167
    :cond_2
    :goto_5
    throw v5

    .line 165
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    goto :goto_0

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v6

    goto :goto_5

    .line 162
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 158
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 155
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static readStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "fname"

    .prologue
    .line 215
    invoke-static {p0}, Lcom/aokp/romcontrol/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 217
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 219
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restartSystemUI()V
    .locals 1

    .prologue
    .line 303
    const-string v0, "pkill -TERM -f com.android.systemui"

    invoke-static {v0}, Lcom/aokp/romcontrol/util/CMDProcessor;->startSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;

    .line 304
    return-void
.end method

.method public static sendMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 267
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 268
    invoke-static {p0, p1}, Lcom/aokp/romcontrol/util/Helpers;->msgLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method

.method public static setSystemProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prop"
    .parameter "val"

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setprop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aokp/romcontrol/util/CMDProcessor;->startSuCommand(Ljava/lang/String;)Lcom/aokp/romcontrol/util/ChildProcess;

    .line 308
    return-void
.end method

.method public static writeOneLine(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 182
    .local v2, fileWriter:Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .local v3, fileWriter:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 189
    if-eqz v3, :cond_0

    .line 191
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    :cond_0
    :goto_0
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return v4

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " } to file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, Error:Ljava/lang/String;
    sget-object v4, Lcom/aokp/romcontrol/util/Helpers;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    const/4 v4, 0x0

    .line 189
    if-eqz v2, :cond_1

    .line 191
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 192
    :catch_1
    move-exception v5

    goto :goto_1

    .line 189
    .end local v0           #Error:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    .line 191
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 194
    :cond_2
    :goto_4
    throw v4

    .line 192
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 189
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    goto :goto_3

    .line 184
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileWriter:Ljava/io/FileWriter;
    goto :goto_2
.end method
