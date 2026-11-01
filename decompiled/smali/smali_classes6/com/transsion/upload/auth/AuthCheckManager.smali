.class public final Lcom/transsion/upload/auth/AuthCheckManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/upload/auth/AuthCheckManager;

.field private static b:Lcom/transsion/upload/bean/TstTokenEntity;

.field private static final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/upload/auth/AuthCheckManager;

    invoke-direct {v0}, Lcom/transsion/upload/auth/AuthCheckManager;-><init>()V

    sput-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->a:Lcom/transsion/upload/auth/AuthCheckManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/upload/auth/AuthCheckManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/upload/auth/AuthCheckManager;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lcom/transsion/upload/bean/TstTokenEntity;
    .locals 1

    sget-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/upload/auth/AuthCheckManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/upload/auth/AuthCheckManager;->i()V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/upload/bean/TstTokenEntity;)V
    .locals 0

    sput-object p0, Lcom/transsion/upload/auth/AuthCheckManager;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    return-void
.end method

.method private final e()Z
    .locals 6

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/upload/bean/TstTokenEntity;->getExpireTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x3c

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final g()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/upload/auth/AuthCheckManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaClass.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final h(Lcom/transsion/upload/auth/a;)Z
    .locals 3

    sget-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lew/a;->a:Lew/a;

    invoke-direct {p0}, Lcom/transsion/upload/auth/AuthCheckManager;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> \u6b63\u5728\u8bf7\u6c42\u4e2d..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lew/a;->b(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method private final i()V
    .locals 3

    sget-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/upload/auth/a;

    sget-object v2, Lcom/transsion/upload/auth/AuthCheckManager;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    if-nez v2, :cond_0

    const-string v2, "tstToken is empty"

    invoke-interface {v1, v2}, Lcom/transsion/upload/auth/a;->onFail(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Lcom/transsion/upload/auth/a;->a(Lcom/transsion/upload/bean/TstTokenEntity;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object v0, Lew/a;->a:Lew/a;

    invoke-direct {p0}, Lcom/transsion/upload/auth/AuthCheckManager;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> notifyCallback() --> clear()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lew/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final j(Lcom/transsion/upload/auth/a;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/transsion/upload/auth/AuthCheckManager;->h(Lcom/transsion/upload/auth/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/upload/auth/AuthCheckManager$requestAuth$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/upload/auth/AuthCheckManager$requestAuth$1;-><init>(Lcom/transsion/upload/auth/a;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final f(Lcom/transsion/upload/auth/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/upload/auth/AuthCheckManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->b:Lcom/transsion/upload/bean/TstTokenEntity;

    invoke-interface {p1, v0}, Lcom/transsion/upload/auth/a;->a(Lcom/transsion/upload/bean/TstTokenEntity;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/upload/auth/AuthCheckManager;->j(Lcom/transsion/upload/auth/a;)V

    :cond_1
    :goto_0
    return-void
.end method
