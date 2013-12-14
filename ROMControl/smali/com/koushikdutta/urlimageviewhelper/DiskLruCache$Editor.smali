.class public final Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;)V
    .locals 0
    .parameter
    .parameter "entry"

    .prologue
    .line 755
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->entry:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;

    .line 757
    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;-><init>(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;)Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->entry:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 751
    iput-boolean p1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->completeEdit(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->access$2000(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)V

    .line 832
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->completeEdit(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->access$2000(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)V

    .line 820
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->entry:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;

    #getter for: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;->access$1100(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 824
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;

    const/4 v1, 0x1

    #calls: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->completeEdit(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->access$2000(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 781
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    #calls: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;

    monitor-enter v1

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->entry:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;

    #getter for: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;->currentEditor:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;->access$700(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;)Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 768
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->entry:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;

    #getter for: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;->access$600(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    const/4 v0, 0x0

    monitor-exit v1

    .line 771
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->entry:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;

    monitor-enter v1

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->entry:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;

    #getter for: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;->currentEditor:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;->access$700(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;)Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 796
    :cond_0
    :try_start_1
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->entry:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 804
    const/4 v0, 0x0

    .line 806
    .local v0, writer:Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->access$1900()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    .end local v0           #writer:Ljava/io/Writer;
    .local v1, writer:Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 809
    #calls: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->access$1700(Ljava/io/Closeable;)V

    .line 811
    return-void

    .line 809
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :goto_0
    #calls: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v0}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->access$1700(Ljava/io/Closeable;)V

    throw v2

    .end local v0           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    goto :goto_0
.end method
