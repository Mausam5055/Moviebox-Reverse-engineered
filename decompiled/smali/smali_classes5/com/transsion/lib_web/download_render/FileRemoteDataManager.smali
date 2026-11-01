.class public final Lcom/transsion/lib_web/download_render/FileRemoteDataManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/lib_web/download_render/FileRemoteDataManager;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final c:Lnm/b;

.field private static final d:Lcom/transsion/lib_web/download_render/timer/SyncDataTimerTask;

.field private static final e:Lkotlinx/coroutines/n0;

.field private static final f:Lkotlin/Lazy;

.field private static final g:Lkotlin/Lazy;

.field private static final h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->a:Lcom/transsion/lib_web/download_render/FileRemoteDataManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lnm/b;

    invoke-direct {v0}, Lnm/b;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->c:Lnm/b;

    new-instance v0, Lcom/transsion/lib_web/download_render/timer/SyncDataTimerTask;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/timer/SyncDataTimerTask;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->d:Lcom/transsion/lib_web/download_render/timer/SyncDataTimerTask;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/m1;->c(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/k1;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    sput-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->e:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/lib_web/download_render/e;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->f:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/lib_web/download_render/f;

    invoke-direct {v0}, Lcom/transsion/lib_web/download_render/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->g:Lkotlin/Lazy;

    const-string v0, "requestTime"

    sput-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->h:Ljava/lang/String;

    const-string v0, "wefeed-mobile-bff"

    sput-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->j()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/lib_web/download_render/g;
    .locals 1

    invoke-static {}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->f()Lcom/transsion/lib_web/download_render/g;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/lib_web/download_render/FileRemoteDataManager;)Lcom/transsion/lib_web/download_render/g;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->g()Lcom/transsion/lib_web/download_render/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/lib_web/download_render/FileRemoteDataManager;)Lcom/tencent/mmkv/MMKV;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    return-object p0
.end method

.method private static final f()Lcom/transsion/lib_web/download_render/g;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/lib_web/download_render/g;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/lib_web/download_render/g;

    return-object v0
.end method

.method private final g()Lcom/transsion/lib_web/download_render/g;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/lib_web/download_render/g;

    return-object v0
.end method

.method private final h()Lcom/tencent/mmkv/MMKV;
    .locals 2

    sget-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method private static final j()Lcom/tencent/mmkv/MMKV;
    .locals 1

    const-string v0, "web_file_download_with_render_request"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final k()V
    .locals 9

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->h()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sget-object v1, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->h:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x36ee80

    :try_start_1
    sget-object v4, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v4}, Lsm/f$a;->a()Lsm/f;

    move-result-object v4

    const-string v5, "dr_config"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lsm/f;->d(Lsm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v8, v4

    :cond_0
    if-nez v8, :cond_2

    :cond_1
    const-string v8, "{}"

    :cond_2
    const-class v4, Lcom/transsion/lib_web/download_render/data/config/ConfigData;

    invoke-static {v8, v4}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/lib_web/download_render/data/config/ConfigData;

    invoke-virtual {v4}, Lcom/transsion/lib_web/download_render/data/config/ConfigData;->getRequestMinInterval()J

    move-result-wide v0

    sget-object v4, Lgm/i;->a:Lgm/i;

    const-string v5, "DR_Config"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", intervalTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_3
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->i:Ljava/lang/String;

    return-void
.end method

.method public final m()V
    .locals 6

    sget-object v0, Lcom/transsion/lib_web/download_render/FileRemoteDataManager;->e:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsion/lib_web/download_render/FileRemoteDataManager$syncData$1;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/transsion/lib_web/download_render/FileRemoteDataManager$syncData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
