.class public final Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "sequenceNumber"
    .parameter "ins"

    .prologue
    .line 712
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;->this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 714
    iput-wide p3, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 715
    iput-object p5, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 716
    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 707
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;-><init>(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 742
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .local v0, arr$:[Ljava/io/InputStream;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 743
    .local v2, in:Ljava/io/InputStream;
    #calls: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v2}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->access$1700(Ljava/io/Closeable;)V

    .line 742
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    .end local v2           #in:Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;->this$0:Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;->sequenceNumber:J

    #calls: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->access$1500(Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;Ljava/lang/String;J)Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter "index"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    #calls: Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/koushikdutta/urlimageviewhelper/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
