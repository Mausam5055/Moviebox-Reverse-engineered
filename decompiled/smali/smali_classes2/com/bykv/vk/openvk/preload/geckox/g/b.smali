.class public final Lcom/bykv/vk/openvk/preload/geckox/g/b;
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

.field private static b:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->d:Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/g/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p0}, Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/g/b;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    new-instance v1, Lcom/bykv/vk/openvk/preload/geckox/g/b;

    invoke-direct {v1, p0, v0}, Lcom/bykv/vk/openvk/preload/geckox/g/b;-><init>(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->d:Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;->a()V

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->d:Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/utils/FileLock;->b()V

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/g/b;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
