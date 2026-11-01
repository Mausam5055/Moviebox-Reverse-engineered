.class public final Lcom/tn/lib/thread/ThreadPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/thread/ThreadPool$BackgroundThread;,
        Lcom/tn/lib/thread/ThreadPool$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/tn/lib/thread/ThreadPool$b;

.field private static final b:Lkotlin/Lazy;

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:Ljava/util/concurrent/BlockingQueue;

.field private static final g:Ljava/util/concurrent/ThreadFactory;

.field private static h:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tn/lib/thread/ThreadPool$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tn/lib/thread/ThreadPool$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tn/lib/thread/ThreadPool;->a:Lcom/tn/lib/thread/ThreadPool$b;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/tn/lib/thread/d;

    invoke-direct {v1}, Lcom/tn/lib/thread/d;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/thread/ThreadPool;->b:Lkotlin/Lazy;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/tn/lib/thread/ThreadPool;->c:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v1

    sput v1, Lcom/tn/lib/thread/ThreadPool;->d:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v0

    sput v0, Lcom/tn/lib/thread/ThreadPool;->e:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/tn/lib/thread/ThreadPool;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/tn/lib/thread/ThreadPool$a;

    invoke-direct {v0}, Lcom/tn/lib/thread/ThreadPool$a;-><init>()V

    sput-object v0, Lcom/tn/lib/thread/ThreadPool;->g:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/tn/lib/thread/ThreadPool;->d:I

    sget v2, Lcom/tn/lib/thread/ThreadPool;->e:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/tn/lib/thread/ThreadPool;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/tn/lib/thread/ThreadPool;->g:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const-wide/16 v3, 0x1e

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v9, Lcom/tn/lib/thread/ThreadPool;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static synthetic a()Lcom/tn/lib/thread/ThreadPool;
    .locals 1

    invoke-static {}, Lcom/tn/lib/thread/ThreadPool;->b()Lcom/tn/lib/thread/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lcom/tn/lib/thread/ThreadPool;
    .locals 1

    new-instance v0, Lcom/tn/lib/thread/ThreadPool;

    invoke-direct {v0}, Lcom/tn/lib/thread/ThreadPool;-><init>()V

    return-object v0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/tn/lib/thread/ThreadPool;->b:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final e()Lcom/tn/lib/thread/ThreadPool;
    .locals 1

    sget-object v0, Lcom/tn/lib/thread/ThreadPool;->a:Lcom/tn/lib/thread/ThreadPool$b;

    invoke-virtual {v0}, Lcom/tn/lib/thread/ThreadPool$b;->a()Lcom/tn/lib/thread/ThreadPool;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/tn/lib/thread/ThreadPool;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
