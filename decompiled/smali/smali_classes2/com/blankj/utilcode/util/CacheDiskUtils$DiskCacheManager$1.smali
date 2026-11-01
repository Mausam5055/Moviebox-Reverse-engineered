.class Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/e;

.field final synthetic val$cacheDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/e;Ljava/io/File;)V
    .locals 0

    iput-object p2, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->val$cacheDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;->val$cacheDir:Ljava/io/File;

    new-instance v1, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$a;

    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1$a;-><init>(Lcom/blankj/utilcode/util/CacheDiskUtils$DiskCacheManager$1;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v2, v1, :cond_0

    aget-object v6, v0, v2

    int-to-long v7, v3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    long-to-int v3, v7

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/blankj/utilcode/util/e;->a(Lcom/blankj/utilcode/util/e;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/blankj/utilcode/util/e;->b(Lcom/blankj/utilcode/util/e;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    invoke-static {v5}, Lcom/blankj/utilcode/util/e;->c(Lcom/blankj/utilcode/util/e;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    :cond_1
    return-void
.end method
