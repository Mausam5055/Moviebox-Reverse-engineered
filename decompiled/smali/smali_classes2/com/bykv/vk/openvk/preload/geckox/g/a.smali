.class public final Lcom/bykv/vk/openvk/preload/geckox/g/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/g/a;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/g/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/g/a;->b:Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/g/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/g/a;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;->c(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v0

    return-object v3

    :cond_2
    new-instance v1, Lcom/bykv/vk/openvk/preload/geckox/g/a;

    invoke-direct {v1, p0, v2}, Lcom/bykv/vk/openvk/preload/geckox/g/a;-><init>(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;)V

    monitor-exit v0

    return-object v1

    :catch_0
    move-exception p0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/geckox/utils/a;->a(Ljava/lang/Throwable;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/g/a;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/g/a;->b:Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;->a()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/g/a;->b:Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/g/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    sget-object v2, Lcom/bykv/vk/openvk/preload/geckox/g/a;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/g/a;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw v1
.end method
