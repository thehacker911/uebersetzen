.class Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "out"

    .prologue
    .line 835
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;

    .line 836
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 837
    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 834
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->access$2102(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->access$2102(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"

    .prologue
    .line 841
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->access$2102(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->access$2102(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
