.class Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;
.super Ljava/lang/Thread;
.source "ChildProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/util/ChildProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildWriter"
.end annotation


# instance fields
.field mBuffer:Ljava/lang/String;

.field mStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/aokp/romcontrol/util/ChildProcess;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/util/ChildProcess;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "os"
    .parameter "buf"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;->this$0:Lcom/aokp/romcontrol/util/ChildProcess;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;->mStream:Ljava/io/OutputStream;

    .line 48
    iput-object p3, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;->mBuffer:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, off:I
    iget-object v3, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 55
    .local v0, buf:[B
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 56
    const/16 v3, 0x400

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 57
    .local v1, len:I
    iget-object v3, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v3, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    add-int/2addr v2, v1

    .line 59
    goto :goto_0

    .line 60
    .end local v1           #len:I
    :catch_0
    move-exception v3

    .line 64
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/aokp/romcontrol/util/ChildProcess$ChildWriter;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_1
    return-void

    .line 65
    :catch_1
    move-exception v3

    goto :goto_1
.end method
