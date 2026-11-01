.class public final Lcom/cloud/hisavana/sdk/t3$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/t3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/t3$a;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/k$a;
    .locals 6

    invoke-static {}, Lcom/cloud/hisavana/sdk/t3;->m()Lcom/google/android/exoplayer2/upstream/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/t3;->n()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/t3;->m()Lcom/google/android/exoplayer2/upstream/k$a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :try_start_1
    invoke-static {p1, v1}, Lcom/cloud/hisavana/net/utils/StorageUtils;->d(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    const-string v2, "getExoCacheDirectory(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/q;

    const-wide/32 v4, 0x6400000

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/q;-><init>(J)V

    new-instance v4, Lf9/b;

    invoke-direct {v4, p1}, Lf9/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/b;Lf9/a;)V

    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/a$c;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/cache/a$c;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/a$c;->h(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/a$c;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/upstream/r$a;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/upstream/r$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/a$c;->i(Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/upstream/cache/a$c;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/t3;->h(Lcom/google/android/exoplayer2/upstream/k$a;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    const-string v3, "ExoPlayerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disk cache init failed, fallback to no-cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/exoplayer2/upstream/r$a;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/r$a;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/t3;->h(Lcom/google/android/exoplayer2/upstream/k$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public static final synthetic b(Lcom/cloud/hisavana/sdk/t3$a;Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/k$a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t3$a;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/k$a;

    move-result-object p0

    return-object p0
.end method
