.class Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;
.super Ljava/lang/Thread;
.source "ChildProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/util/ChildProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildReader"
.end annotation


# instance fields
.field mBuffer:Ljava/lang/StringBuffer;

.field mStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/aokp/romcontrol/util/ChildProcess;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/util/ChildProcess;Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter
    .parameter "is"
    .parameter "buf"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;->this$0:Lcom/aokp/romcontrol/util/ChildProcess;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;->mStream:Ljava/io/InputStream;

    .line 20
    iput-object p3, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;->mBuffer:Ljava/lang/StringBuffer;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 24
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 27
    .local v0, buf:[B
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 28
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 29
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    .end local v1           #len:I
    .end local v2           #s:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 35
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    :goto_1
    return-void

    .line 36
    :catch_1
    move-exception v3

    goto :goto_1
.end method
