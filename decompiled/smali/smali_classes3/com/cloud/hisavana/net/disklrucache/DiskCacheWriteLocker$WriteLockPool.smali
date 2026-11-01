.class Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteLockPool"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$1;)V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method b(Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
