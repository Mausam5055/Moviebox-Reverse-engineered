.class public final Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;,
        Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a:Ljava/util/Map;

    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$1;)V

    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;

    invoke-virtual {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->a()Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget p1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->b:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    iget v1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->b:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->b:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker;->b:Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLockPool;->b(Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed the wrong lock, expected to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but actually removed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", key: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot release a lock that is not held, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", interestedThreads: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskCacheWriteLocker$WriteLock;->b:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
