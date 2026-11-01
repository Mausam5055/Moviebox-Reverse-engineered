.class public final Lcom/cloud/h5update/download/DownloadManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/h5update/download/DownloadManager$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/cloud/h5update/download/DownloadManager$a;

.field private static final h:Lkotlin/Lazy;


# instance fields
.field private a:I

.field private b:Ljava/util/concurrent/LinkedBlockingDeque;

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Ljava/util/Map;

.field private e:Lokhttp3/OkHttpClient;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/h5update/download/DownloadManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/h5update/download/DownloadManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/h5update/download/DownloadManager;->g:Lcom/cloud/h5update/download/DownloadManager$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/cloud/h5update/download/DownloadManager$Companion$instance$2;->INSTANCE:Lcom/cloud/h5update/download/DownloadManager$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/h5update/download/DownloadManager;->h:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/h5update/download/DownloadManager;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/h5update/download/DownloadManager;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/download/DownloadManager;->h:Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic c(Lcom/cloud/h5update/download/DownloadManager;Lcom/cloud/h5update/download/DownloadTask;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/h5update/download/DownloadManager;->b(Lcom/cloud/h5update/download/DownloadTask;Z)V

    return-void
.end method

.method private final e()I
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final g()Lokhttp3/OkHttpClient;
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "Builder().connectTimeout\u2026TimeUnit.SECONDS).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final j(Landroid/content/Context;ILokhttp3/OkHttpClient;)V
    .locals 7

    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadManager;->f:Landroid/content/Context;

    const/4 p1, 0x1

    if-ge p2, p1, :cond_1

    :cond_0
    move p2, p1

    goto :goto_0

    :cond_1
    const/16 p1, 0xf

    if-gt p2, p1, :cond_0

    :goto_0
    iput p2, p0, Lcom/cloud/h5update/download/DownloadManager;->a:I

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/cloud/h5update/download/DownloadManager;->a:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-wide/16 v3, 0x14

    move-object v0, p1

    move v1, v2

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/util/concurrent/LinkedBlockingDeque;

    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadManager;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadManager;->d:Ljava/util/Map;

    iput-object p3, p0, Lcom/cloud/h5update/download/DownloadManager;->e:Lokhttp3/OkHttpClient;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.util.concurrent.LinkedBlockingDeque<java.lang.Runnable>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic k(Lcom/cloud/h5update/download/DownloadManager;Landroid/content/Context;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/cloud/h5update/download/DownloadManager;->e()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/h5update/download/DownloadManager;->i(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/cloud/h5update/download/DownloadTask;Z)V
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/cloud/h5update/download/DownloadManager;->d:Ljava/util/Map;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/cloud/h5update/download/DownloadTask;->getDownloadEntity()Lcom/cloud/h5update/bean/DownloadEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/h5update/download/DownloadTask;->getDownloadEntity()Lcom/cloud/h5update/bean/DownloadEntity;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadManager;->e:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, v0}, Lcom/cloud/h5update/download/DownloadTask;->setClient(Lokhttp3/OkHttpClient;)V

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadManager;->d:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/cloud/h5update/bean/DownloadEntity;->getTaskId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/cloud/h5update/download/DownloadManager;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/cloud/h5update/download/DownloadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadManager;->d:Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/h5update/download/DownloadTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public final f()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadManager;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/cloud/h5update/download/DownloadTask;
    .locals 2

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadManager;->d:Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/h5update/download/DownloadTask;

    if-nez v0, :cond_2

    sget-object v1, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    invoke-virtual {v1, p1}, Lcom/cloud/h5update/utils/l;->h(Ljava/lang/String;)Lcom/cloud/h5update/bean/DownloadEntity;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/cloud/h5update/download/DownloadTask;

    invoke-direct {v0, p1}, Lcom/cloud/h5update/download/DownloadTask;-><init>(Lcom/cloud/h5update/bean/DownloadEntity;)V

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/h5update/download/DownloadManager;->g()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/h5update/download/DownloadManager;->j(Landroid/content/Context;ILokhttp3/OkHttpClient;)V

    return-void
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    invoke-virtual {v0, p1}, Lcom/cloud/h5update/utils/l;->h(Ljava/lang/String;)Lcom/cloud/h5update/bean/DownloadEntity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/cloud/h5update/bean/DownloadEntity;->getTotalSize()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final m(Lcom/cloud/h5update/download/DownloadTask;)V
    .locals 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/cloud/h5update/download/DownloadManager;->c(Lcom/cloud/h5update/download/DownloadManager;Lcom/cloud/h5update/download/DownloadTask;ZILjava/lang/Object;)V

    return-void
.end method
