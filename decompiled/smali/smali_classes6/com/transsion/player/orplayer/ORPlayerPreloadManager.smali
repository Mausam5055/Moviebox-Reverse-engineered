.class public final Lcom/transsion/player/orplayer/ORPlayerPreloadManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

.field private static final j:Lkotlin/Lazy;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    new-instance v0, Lcom/transsion/player/orplayer/d0;

    invoke-direct {v0}, Lcom/transsion/player/orplayer/d0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ORPlayerPreload"

    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->b:J

    iput-wide v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->c:J

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aliyun/loader/MediaLoader;->setOnLoadStatusListener(Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "video_cache"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->enableLocalCache(ZILjava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static synthetic a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;
    .locals 1

    invoke-static {}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final d()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;
    .locals 1

    new-instance v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    invoke-direct {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;-><init>()V

    return-object v0
.end method

.method private final l(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->h:J

    sget-object v2, Loo/e;->a:Loo/e;

    iget-object v3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPreload, url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    move-result-object v0

    iget-wide v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->c:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/aliyun/loader/MediaLoader;->load(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 7

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "cancelAll"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$cancelAll$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$cancelAll$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(Ljava/lang/String;)V
    .locals 13

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Loo/e;->a:Loo/e;

    iget-object v2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause, but not contains, PausedContains =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", url = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v7, Loo/e;->a:Loo/e;

    iget-object v8, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause, url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/loader/MediaLoader;->pause(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "first(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 7

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseAll, paused size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", urlsCache size = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", curUrl = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aliyun/loader/MediaLoader;->pause(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->b:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    return-void
.end method

.method public final j(Ljava/lang/String;J)V
    .locals 6

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    iput-wide p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->c:J

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start preload, contains return~ url = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start preload, pause contains resume~ url = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/aliyun/loader/MediaLoader;->resume(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "is preloaded, return, url = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->h:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x1388

    cmp-long p2, p2, v0

    if-lez p2, :cond_6

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "last is more than 5 sec, preload new url"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->i(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "first(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iput-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start preload, add to cache, url = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iput-object p1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final k()V
    .locals 7

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeAll, paused size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", urlsCache size = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", curUrl = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->getInstance()Lcom/aliyun/loader/MediaLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aliyun/loader/MediaLoader;->resume(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public onCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCompleted(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preload complete, url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->i(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "first(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    sget-object v0, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->a:Ljava/lang/String;

    const/16 v6, -0x12c

    if-ne p2, v6, :cond_0

    const-string v2, "is preloaded code"

    goto :goto_0

    :cond_0
    const-string v2, "errorCode"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preload error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMsg= "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", url = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loo/e;->b(Loo/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "first(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->l(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->d:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p3, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    if-ne p2, v6, :cond_2

    iget-object p2, p0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
