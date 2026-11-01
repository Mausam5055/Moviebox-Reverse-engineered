.class public Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache$Provider;


# instance fields
.field private volatile a:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

.field private volatile b:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

.field private volatile c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;-><init>(JI)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->a()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->c:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    return-object p1
.end method

.method private c(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->a:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->a:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;-><init>(JI)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->a()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->a:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->a:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    return-object p1
.end method

.method private d(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;-><init>(JI)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskLruCacheFactory;->a()Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->b:Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    return-object p1
.end method


# virtual methods
.method public b(JI)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;
    .locals 1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->c(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->a(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/impl/DiskCacheProvider;->d(J)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object p1

    return-object p1
.end method
