.class public final Lcom/tn/lib/thread/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/thread/c$a;,
        Lcom/tn/lib/thread/c$b;
    }
.end annotation


# static fields
.field public static final f:Lcom/tn/lib/thread/c$a;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/lang/String;

.field private c:Ldh/b;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tn/lib/thread/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tn/lib/thread/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tn/lib/thread/c;->f:Lcom/tn/lib/thread/c$a;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ldh/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    const-string v0, "threadName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/tn/lib/thread/c;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/tn/lib/thread/c;->c:Ldh/b;

    iput-object p6, p0, Lcom/tn/lib/thread/c;->d:Ljava/util/concurrent/Executor;

    if-nez p7, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/tn/lib/thread/c;->a(III)Ljava/util/concurrent/ExecutorService;

    move-result-object p7

    :cond_0
    iput-object p7, p0, Lcom/tn/lib/thread/c;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/tn/lib/thread/c;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/tn/lib/thread/c;->c:Ldh/b;

    iput-object p6, p0, Lcom/tn/lib/thread/c;->d:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/thread/c;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private final a(III)Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    const-string v0, "newSingleThreadExecutor(...)"

    if-eq p1, p2, :cond_0

    new-instance p1, Lcom/tn/lib/thread/c$b;

    invoke-direct {p1, p3}, Lcom/tn/lib/thread/c$b;-><init>(I)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tn/lib/thread/c$b;

    invoke-direct {p1, p3}, Lcom/tn/lib/thread/c$b;-><init>(I)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/tn/lib/thread/c$b;

    invoke-direct {p1, p3}, Lcom/tn/lib/thread/c$b;-><init>(I)V

    invoke-static {p2, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string p2, "newScheduledThreadPool(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/tn/lib/thread/c$b;

    invoke-direct {p1, p3}, Lcom/tn/lib/thread/c$b;-><init>(I)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "newCachedThreadPool(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/tn/lib/thread/c$b;

    invoke-direct {p1, p3}, Lcom/tn/lib/thread/c$b;-><init>(I)V

    invoke-static {p2, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "newFixedThreadPool(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final b()Leh/d;
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/thread/c;->e:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Leh/d;

    invoke-direct {v0}, Leh/d;-><init>()V

    iget-object v1, p0, Lcom/tn/lib/thread/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Leh/d;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tn/lib/thread/c;->c:Ldh/b;

    invoke-virtual {v0, v1}, Leh/d;->g(Ldh/b;)V

    iget-object v1, p0, Lcom/tn/lib/thread/c;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Leh/d;->f(Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/tn/lib/thread/c;->e:Ljava/lang/ThreadLocal;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/thread/c;->e:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tn/lib/thread/c;->b()Leh/d;

    move-result-object v0

    new-instance v1, Lcom/tn/lib/thread/wrapper/RunnableWrapper;

    invoke-direct {v1, v0}, Lcom/tn/lib/thread/wrapper/RunnableWrapper;-><init>(Leh/d;)V

    invoke-virtual {v1, p1}, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->setRunnable(Ljava/lang/Runnable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;

    move-result-object p1

    sget-object v1, Lfh/c;->b:Lfh/c$a;

    invoke-virtual {v1}, Lfh/c$a;->a()Lfh/c;

    move-result-object v1

    invoke-virtual {v0}, Leh/d;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/tn/lib/thread/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3, v0, p1}, Lfh/c;->e(JLjava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/tn/lib/thread/c;->c()V

    return-void
.end method
