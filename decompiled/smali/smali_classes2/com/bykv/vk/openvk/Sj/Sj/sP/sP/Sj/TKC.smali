.class public abstract Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;
.super Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$a;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field private final b:Ljava/util/LinkedHashMap;

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private final d:Ljava/util/Set;

.field private volatile e:J

.field private volatile f:F

.field private final g:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$b;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/os/Handler;


# direct methods
.method static synthetic e(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->e:J

    return-wide v0
.end method

.method private f(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic h(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->k(J)V

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private j()V
    .locals 8

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$3;

    invoke-direct {v0, p0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$3;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;Ljava/util/HashMap;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->b:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->i()V

    return-void

    :goto_3
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private k(J)V
    .locals 12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    cmp-long v1, v2, p1

    if-gtz v1, :cond_1

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_1
    long-to-float p1, p1

    :try_start_1
    iget p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->f:F

    mul-float/2addr p1, p2

    float-to-long p1, p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->g:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$b;

    invoke-direct {p0, v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$b;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sub-long/2addr v2, v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    cmp-long v5, v2, p1

    if-gtz v5, :cond_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_4

    :catchall_1
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$a;

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$a;->a(Ljava/util/Set;)V

    goto :goto_5

    :cond_7
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$5;

    const-string p2, "trimSize"

    const/4 v1, 0x1

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$5;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;Ljava/lang/String;ILjava/util/HashSet;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/Dq/vS;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method static synthetic l(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->j()V

    return-void
.end method


# virtual methods
.method public abstract g()V
.end method
