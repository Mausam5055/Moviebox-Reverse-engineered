.class public Lkotlinx/coroutines/channels/BufferedChannel;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/channels/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/BufferedChannel$a;
    }
.end annotation


# static fields
.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closeCause$volatile:Ljava/lang/Object;

.field private final a:I

.field public final b:Lkotlin/jvm/functions/Function1;

.field private volatile synthetic bufferEnd$volatile:J

.field private volatile synthetic bufferEndSegment$volatile:Ljava/lang/Object;

.field private final c:Lkotlin/jvm/functions/Function3;

.field private volatile synthetic closeHandler$volatile:Ljava/lang/Object;

.field private volatile synthetic completedExpandBuffersAndPauseFlag$volatile:J

.field private volatile synthetic receiveSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic receivers$volatile:J

.field private volatile synthetic sendSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic sendersAndCloseStatus$volatile:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sendersAndCloseStatus$volatile"

    const-class v1, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "receivers$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "bufferEnd$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "completedExpandBuffersAndPauseFlag$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "sendSegment$volatile"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "receiveSegment$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "bufferEndSegment$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_closeCause$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "closeHandler$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->a:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    if-ltz p1, :cond_2

    invoke-static {p1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->t(I)J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$volatile:J

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->Z()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$volatile:J

    new-instance p1, Lkotlinx/coroutines/channels/j;

    const/4 v5, 0x0

    const/4 v7, 0x3

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/j;-><init>(JLkotlinx/coroutines/channels/j;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$volatile:Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$volatile:Ljava/lang/Object;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->n()Lkotlinx/coroutines/channels/j;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$volatile:Ljava/lang/Object;

    if-eqz p2, :cond_1

    new-instance p1, Lkotlinx/coroutines/channels/a;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/a;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->c:Lkotlin/jvm/functions/Function3;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->l()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$volatile:Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid channel capacity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", should be >=0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic A(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->H0(Lkotlinx/coroutines/n;)V

    return-void
.end method

.method private final A0()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide v0, 0xfffffffffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x3

    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/channels/BufferedChannelKt;->b(JI)J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static final synthetic B(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/n;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->J0(Ljava/lang/Object;Lkotlinx/coroutines/n;)V

    return-void
.end method

.method private final B0()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v0, 0x3c

    shr-long v0, v2, v0

    long-to-int v0, v0

    const-wide v4, 0xfffffffffffffffL

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    and-long v0, v2, v4

    const/4 v4, 0x3

    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/channels/BufferedChannelKt;->b(JI)J

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_2
    and-long v0, v2, v4

    const/4 v4, 0x2

    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/channels/BufferedChannelKt;->b(JI)J

    move-result-wide v0

    goto :goto_0

    :goto_1
    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static final synthetic C(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->O0(Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    return-void
.end method

.method private final C0(JLkotlinx/coroutines/channels/j;)V
    .locals 4

    :goto_0
    iget-wide v0, p3, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/b;->f()Lkotlinx/coroutines/internal/b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/j;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/w;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/b;->f()Lkotlinx/coroutines/internal/b;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/j;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->a0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/internal/w;

    iget-wide v0, p2, Lkotlinx/coroutines/internal/w;->c:J

    iget-wide v2, p3, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/w;->u()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1, p0, p2, p3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/w;->p()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/b;->n()V

    :cond_7
    :goto_4
    return-void

    :cond_8
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/w;->p()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/b;->n()V

    goto :goto_3
.end method

.method public static final synthetic D(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->P0(Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    return-void
.end method

.method private final D0(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlinx/coroutines/channels/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/internal/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic E(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->S0(Lkotlinx/coroutines/channels/j;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final E0(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/internal/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic F(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->g1(Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic G(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 0

    invoke-direct/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->i1(Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    return p0
.end method

.method private final G0(Lkotlinx/coroutines/n;)V
    .locals 2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/h;->b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/h;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private final H(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/channels/b;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/channels/b;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final H0(Lkotlinx/coroutines/n;)V
    .locals 1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->e0()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private final I(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;
    .locals 0

    new-instance p1, Lkotlinx/coroutines/channels/BufferedChannel$bindCancellationFun$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel$bindCancellationFun$2;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final I0(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Lkotlinx/coroutines/internal/s;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->i0()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->i0()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static final J(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p4}, Lkotlinx/coroutines/internal/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final J0(Ljava/lang/Object;Lkotlinx/coroutines/n;)V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->i0()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private final K(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;
    .locals 0

    new-instance p1, Lkotlinx/coroutines/channels/BufferedChannel$bindCancellationFunResult$1;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel$bindCancellationFunResult$1;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final L(J)Z
    .locals 4

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->Z()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static final M0(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;
    .locals 0

    new-instance p2, Lkotlinx/coroutines/channels/c;

    invoke-direct {p2, p3, p0, p1}, Lkotlinx/coroutines/channels/c;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/f;)V

    return-object p2
.end method

.method private final N(Lkotlinx/coroutines/channels/j;J)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/h;->b(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v2, -0x1

    if-eqz p1, :cond_6

    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    sub-int/2addr v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    iget-wide v4, p1, Lkotlinx/coroutines/internal/w;->c:J

    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-ltz v4, :cond_6

    :cond_0
    invoke-virtual {p1, v3}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->k()Lkotlinx/coroutines/internal/z;

    move-result-object v5

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    instance-of v5, v4, Lkotlinx/coroutines/channels/s;

    if-eqz v5, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    check-cast v4, Lkotlinx/coroutines/channels/s;

    iget-object v4, v4, Lkotlinx/coroutines/channels/s;->a:Lkotlinx/coroutines/s2;

    invoke-static {v0, v4}, Lkotlinx/coroutines/internal/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v3, v1}, Lkotlinx/coroutines/channels/j;->C(IZ)V

    goto :goto_3

    :cond_2
    instance-of v5, v4, Lkotlinx/coroutines/s2;

    if-eqz v5, :cond_4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0, v4}, Lkotlinx/coroutines/internal/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v3, v1}, Lkotlinx/coroutines/channels/j;->C(IZ)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/w;->t()V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->h()Lkotlinx/coroutines/internal/b;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/j;

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_8

    instance-of p1, v0, Ljava/util/ArrayList;

    if-nez p1, :cond_7

    check-cast v0, Lkotlinx/coroutines/s2;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->V0(Lkotlinx/coroutines/s2;)V

    goto :goto_5

    :cond_7
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_4
    if-ge v2, p1, :cond_8

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/s2;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->V0(Lkotlinx/coroutines/s2;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private static final N0(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/f;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;
    .locals 0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object p3

    if-eq p0, p3, :cond_0

    iget-object p1, p1, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lkotlinx/coroutines/internal/s;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final O()Lkotlinx/coroutines/channels/j;
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->a0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->j0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/j;

    iget-wide v2, v1, Lkotlinx/coroutines/internal/w;->c:J

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/j;

    iget-wide v4, v4, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v0, v1

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->f0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/j;

    iget-wide v2, v1, Lkotlinx/coroutines/internal/w;->c:J

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/j;

    iget-wide v4, v4, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Lkotlinx/coroutines/internal/b;

    invoke-static {v0}, Lkotlinx/coroutines/internal/a;->b(Lkotlinx/coroutines/internal/b;)Lkotlinx/coroutines/internal/b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/j;

    return-object v0
.end method

.method private final O0(Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->L0()V

    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/s2;->invokeOnCancellation(Lkotlinx/coroutines/internal/w;I)V

    return-void
.end method

.method private final P0(Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V
    .locals 1

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    add-int/2addr p3, v0

    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/s2;->invokeOnCancellation(Lkotlinx/coroutines/internal/w;I)V

    return-void
.end method

.method private final Q(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->R(J)Lkotlinx/coroutines/channels/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->U0(Lkotlinx/coroutines/channels/j;)V

    return-void
.end method

.method static synthetic Q0(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->s()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/j;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->t0()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->t()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v2, v1

    div-long v2, v8, v2

    int-to-long v4, v1

    rem-long v4, v8, v4

    long-to-int v1, v4

    iget-wide v4, v0, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    invoke-static {p0, v2, v3, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->n(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move v4, v1

    move-wide v5, v8

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->F(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Lkotlinx/coroutines/internal/z;

    move-result-object v3

    if-eq v2, v3, :cond_5

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->s()Lkotlinx/coroutines/internal/z;

    move-result-object v3

    if-ne v2, v3, :cond_4

    move-object v2, p0

    move-object v3, v0

    move v4, v1

    move-wide v5, v8

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->T0(Lkotlinx/coroutines/channels/j;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->c()V

    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->e0()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/internal/y;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private final R(J)Lkotlinx/coroutines/channels/j;
    .locals 5

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->O()Lkotlinx/coroutines/channels/j;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->w0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->y0(Lkotlinx/coroutines/channels/j;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->T(J)V

    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->N(Lkotlinx/coroutines/channels/j;J)V

    return-object v0
.end method

.method static synthetic R0(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;

    iget v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p1, v6, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlinx/coroutines/channels/h;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/h;->k()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->s()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/j;

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->t0()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->t()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v7, v1

    div-long v7, v4, v7

    int-to-long v9, v1

    rem-long v9, v4, v9

    long-to-int v3, v9

    iget-wide v9, p1, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v1, v9, v7

    if-eqz v1, :cond_6

    invoke-static {p0, v7, v8, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->n(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v1

    :cond_6
    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    move v9, v3

    move-wide v10, v4

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/channels/BufferedChannel;->F(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    if-eq v1, v7, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    if-ne v1, v7, :cond_7

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v7

    cmp-long v1, v4, v7

    if-gez v1, :cond_3

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_2

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->s()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    if-ne v1, v7, :cond_8

    iput v2, v6, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->S0(Lkotlinx/coroutines/channels/j;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    return-object v0

    :cond_8
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->c()V

    sget-object p0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_9
    :goto_3
    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final S()V
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->q()Z

    return-void
.end method

.method private final S0(Lkotlinx/coroutines/channels/j;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p5, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;

    iget v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;

    invoke-direct {v0, p0, p5}, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/j;

    iget-object p1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->I$0:I

    iput-wide p3, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->J$0:J

    iput v3, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p5

    invoke-static {p5}, Lkotlinx/coroutines/q;->b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object p5

    :try_start_0
    new-instance v8, Lkotlinx/coroutines/channels/p;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$38>>"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, p5}, Lkotlinx/coroutines/channels/p;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->F(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Lkotlinx/coroutines/internal/z;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-static {p0, v8, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->C(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object p2

    const/4 v9, 0x0

    if-ne v2, p2, :cond_d

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v2

    cmp-long p2, p3, v2

    if-gez p2, :cond_4

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->c()V

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->s()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/j;

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->t0()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p0, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->z(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/n;)V

    goto/16 :goto_3

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->t()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide p2

    sget p4, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v2, p4

    div-long v2, p2, v2

    int-to-long v4, p4

    rem-long v4, p2, v4

    long-to-int p4, v4

    iget-wide v4, p1, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_8

    invoke-static {p0, v2, v3, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->n(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move-object p1, v2

    :cond_8
    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-wide v5, p2

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->F(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Lkotlinx/coroutines/internal/z;

    move-result-object v3

    if-ne v2, v3, :cond_9

    invoke-static {p0, v8, p1, p4}, Lkotlinx/coroutines/channels/BufferedChannel;->C(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    goto :goto_3

    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object p4

    if-ne v2, p4, :cond_a

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v2

    cmp-long p2, p2, v2

    if-gez p2, :cond_5

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_1

    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->s()Lkotlinx/coroutines/internal/z;

    move-result-object p2

    if-eq v2, p2, :cond_c

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->c()V

    sget-object p1, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/channels/h;->b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/h;

    move-result-object p1

    iget-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_b

    invoke-static {p0, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->m(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    move-result-object v9

    :cond_b
    check-cast v9, Lkotlin/jvm/functions/Function3;

    :goto_2
    invoke-virtual {p5, p1, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->c()V

    sget-object p1, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/channels/h;->b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/h;

    move-result-object p1

    iget-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_e

    invoke-static {p0, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->m(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    move-result-object v9

    :cond_e
    check-cast v9, Lkotlin/jvm/functions/Function3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_3
    invoke-virtual {p5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p5, p1, :cond_f

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_f
    if-ne p5, v1, :cond_10

    return-object v1

    :cond_10
    :goto_4
    check-cast p5, Lkotlinx/coroutines/channels/h;

    invoke-virtual {p5}, Lkotlinx/coroutines/channels/h;->k()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_5
    invoke-virtual {p5}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    throw p1
.end method

.method private final T0(Lkotlinx/coroutines/channels/j;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    invoke-static {p5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/q;->b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, v0

    :try_start_0
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->F(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->C(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object p2

    const/4 v7, 0x0

    if-ne v1, p2, :cond_b

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v1

    cmp-long p2, p3, v1

    if-gez p2, :cond_1

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->c()V

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->s()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/j;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->t0()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->A(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/n;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->t()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide p2

    sget p4, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v1, p4

    div-long v1, p2, v1

    int-to-long v3, p4

    rem-long v3, p2, v3

    long-to-int p4, v3

    iget-wide v3, p1, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_5

    invoke-static {p0, v1, v2, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->n(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v1

    :cond_5
    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->F(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    if-ne v1, v2, :cond_7

    instance-of p2, v0, Lkotlinx/coroutines/s2;

    if-eqz p2, :cond_6

    move-object v7, v0

    :cond_6
    if-eqz v7, :cond_d

    invoke-static {p0, v7, p1, p4}, Lkotlinx/coroutines/channels/BufferedChannel;->C(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    goto :goto_2

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object p4

    if-ne v1, p4, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v1

    cmp-long p2, p2, v1

    if-gez p2, :cond_2

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_0

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->s()Lkotlinx/coroutines/internal/z;

    move-result-object p2

    if-eq v1, p2, :cond_a

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->c()V

    iget-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_9

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->l(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    move-result-object v7

    :cond_9
    check-cast v7, Lkotlin/jvm/functions/Function3;

    :goto_1
    invoke-virtual {v0, v1, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->c()V

    iget-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_c

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->l(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    move-result-object v7

    :cond_c
    check-cast v7, Lkotlin/jvm/functions/Function3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_d
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_e

    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_e
    return-object p1

    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    throw p1
.end method

.method private final U()V
    .locals 14

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->a0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/j;

    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->Y()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v7

    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v1, v9

    div-long v2, v7, v1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v4

    cmp-long v1, v4, v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    if-gtz v1, :cond_2

    iget-wide v4, v0, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->f()Lkotlinx/coroutines/internal/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2, v3, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->C0(JLkotlinx/coroutines/channels/j;)V

    :cond_1
    invoke-static {p0, v12, v13, v11, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->p0(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    return-void

    :cond_2
    iget-wide v4, v0, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    move-object v1, p0

    move-object v4, v0

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->V(JLkotlinx/coroutines/channels/j;J)Lkotlinx/coroutines/channels/j;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v1

    :cond_4
    int-to-long v1, v9

    rem-long v1, v7, v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1, v7, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->e1(Lkotlinx/coroutines/channels/j;IJ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0, v12, v13, v11, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->p0(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    return-void

    :cond_5
    invoke-static {p0, v12, v13, v11, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->p0(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    goto :goto_0
.end method

.method private final U0(Lkotlinx/coroutines/channels/j;)V
    .locals 11

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/internal/h;->b(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    sget v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    sub-int/2addr v4, v2

    :goto_0
    const/4 v5, -0x1

    if-ge v5, v4, :cond_b

    iget-wide v6, p1, Lkotlinx/coroutines/internal/w;->c:J

    sget v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    int-to-long v8, v4

    add-long/2addr v6, v8

    :cond_1
    invoke-virtual {p1, v4}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->f()Lkotlinx/coroutines/internal/z;

    move-result-object v9

    if-eq v8, v9, :cond_c

    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    if-ne v8, v9, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-ltz v9, :cond_c

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object v9

    invoke-virtual {p1, v4, v8, v9}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Lkotlinx/coroutines/channels/j;->A(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5, v1}, Lkotlinx/coroutines/internal/s;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v4}, Lkotlinx/coroutines/channels/j;->w(I)V

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/w;->t()V

    goto/16 :goto_4

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->k()Lkotlinx/coroutines/internal/z;

    move-result-object v9

    if-eq v8, v9, :cond_a

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    instance-of v9, v8, Lkotlinx/coroutines/s2;

    if-nez v9, :cond_7

    instance-of v9, v8, Lkotlinx/coroutines/channels/s;

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->p()Lkotlinx/coroutines/internal/z;

    move-result-object v9

    if-eq v8, v9, :cond_c

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->q()Lkotlinx/coroutines/internal/z;

    move-result-object v9

    if-ne v8, v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->p()Lkotlinx/coroutines/internal/z;

    move-result-object v9

    if-eq v8, v9, :cond_1

    goto :goto_4

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-ltz v9, :cond_c

    instance-of v9, v8, Lkotlinx/coroutines/channels/s;

    if-eqz v9, :cond_8

    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/channels/s;

    iget-object v9, v9, Lkotlinx/coroutines/channels/s;->a:Lkotlinx/coroutines/s2;

    goto :goto_2

    :cond_8
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/s2;

    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object v10

    invoke-virtual {p1, v4, v8, v10}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_9

    invoke-virtual {p1, v4}, Lkotlinx/coroutines/channels/j;->A(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5, v1}, Lkotlinx/coroutines/internal/s;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v1

    :cond_9
    invoke-static {v3, v9}, Lkotlinx/coroutines/internal/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v4}, Lkotlinx/coroutines/channels/j;->w(I)V

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/w;->t()V

    goto :goto_4

    :cond_a
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object v9

    invoke-virtual {p1, v4, v8, v9}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/w;->t()V

    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->h()Lkotlinx/coroutines/internal/b;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/j;

    if-nez p1, :cond_0

    :cond_c
    :goto_5
    if-eqz v3, :cond_e

    instance-of p1, v3, Ljava/util/ArrayList;

    if-nez p1, :cond_d

    check-cast v3, Lkotlinx/coroutines/s2;

    invoke-direct {p0, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->W0(Lkotlinx/coroutines/s2;)V

    goto :goto_7

    :cond_d
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_6
    if-ge v5, p1, :cond_e

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/s2;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->W0(Lkotlinx/coroutines/s2;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_e
    :goto_7
    if-nez v1, :cond_f

    return-void

    :cond_f
    throw v1
.end method

.method private final V(JLkotlinx/coroutines/channels/j;J)Lkotlinx/coroutines/channels/j;
    .locals 15

    move-object v6, p0

    move-wide/from16 v0, p1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->a0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->y()Lkotlin/reflect/KFunction;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object/from16 v4, p3

    :goto_0
    invoke-static {v4, v0, v1, v3}, Lkotlinx/coroutines/internal/a;->c(Lkotlinx/coroutines/internal/w;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/internal/x;->c(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5}, Lkotlinx/coroutines/internal/x;->b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/w;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/internal/w;

    iget-wide v9, v8, Lkotlinx/coroutines/internal/w;->c:J

    iget-wide v11, v7, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Lkotlinx/coroutines/internal/w;->u()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2, p0, v8, v7}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/w;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/b;->n()V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Lkotlinx/coroutines/internal/w;->p()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lkotlinx/coroutines/internal/b;->n()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v5}, Lkotlinx/coroutines/internal/x;->c(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->S()V

    invoke-direct/range {p0 .. p3}, Lkotlinx/coroutines/channels/BufferedChannel;->C0(JLkotlinx/coroutines/channels/j;)V

    invoke-static {p0, v8, v9, v7, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->p0(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {v5}, Lkotlinx/coroutines/internal/x;->b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/w;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lkotlinx/coroutines/channels/j;

    iget-wide v2, v11, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->Y()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    const-wide/16 v1, 0x1

    add-long v2, p4, v1

    iget-wide v4, v11, Lkotlinx/coroutines/internal/w;->c:J

    sget v12, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v13, v12

    mul-long/2addr v4, v13

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, v11, Lkotlinx/coroutines/internal/w;->c:J

    int-to-long v2, v12

    mul-long/2addr v0, v2

    sub-long v0, v0, p4

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->o0(J)V

    goto :goto_3

    :cond_6
    invoke-static {p0, v8, v9, v7, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->p0(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    move-object v10, v11

    :goto_3
    return-object v10
.end method

.method private final V0(Lkotlinx/coroutines/s2;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->X0(Lkotlinx/coroutines/s2;Z)V

    return-void
.end method

.method private final W(JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;
    .locals 9

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->f0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->y()Lkotlin/reflect/KFunction;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    :goto_0
    invoke-static {p3, p1, p2, v1}, Lkotlinx/coroutines/internal/a;->c(Lkotlinx/coroutines/internal/w;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/internal/x;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlinx/coroutines/internal/x;->b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/w;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/internal/w;

    iget-wide v5, v4, Lkotlinx/coroutines/internal/w;->c:J

    iget-wide v7, v3, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/w;->u()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, p0, v4, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/w;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/b;->n()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/w;->p()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/b;->n()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v2}, Lkotlinx/coroutines/internal/x;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->S()V

    iget-wide p1, p3, Lkotlinx/coroutines/internal/w;->c:J

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v2, v0

    mul-long/2addr p1, v2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_a

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_5

    :cond_5
    invoke-static {v2}, Lkotlinx/coroutines/internal/x;->b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/w;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/channels/j;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->x0()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->Z()J

    move-result-wide v2

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v4, v0

    div-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gtz v0, :cond_8

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->a0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/w;

    iget-wide v3, v2, Lkotlinx/coroutines/internal/w;->c:J

    iget-wide v5, p3, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/w;->u()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v0, p0, v2, p3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/w;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/b;->n()V

    goto :goto_4

    :cond_7
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/w;->p()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/b;->n()V

    goto :goto_3

    :cond_8
    :goto_4
    iget-wide v2, p3, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long p1, v2, p1

    if-lez p1, :cond_9

    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->k1(J)V

    iget-wide v2, p3, Lkotlinx/coroutines/internal/w;->c:J

    int-to-long p1, p1

    mul-long/2addr v2, p1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_a

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_5

    :cond_9
    move-object v1, p3

    :cond_a
    :goto_5
    return-object v1
.end method

.method private final W0(Lkotlinx/coroutines/s2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->X0(Lkotlinx/coroutines/s2;Z)V

    return-void
.end method

.method private final X(JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;
    .locals 9

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->j0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->y()Lkotlin/reflect/KFunction;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    :goto_0
    invoke-static {p3, p1, p2, v1}, Lkotlinx/coroutines/internal/a;->c(Lkotlinx/coroutines/internal/w;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/internal/x;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlinx/coroutines/internal/x;->b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/w;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/internal/w;

    iget-wide v5, v4, Lkotlinx/coroutines/internal/w;->c:J

    iget-wide v7, v3, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/w;->u()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, p0, v4, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/w;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/b;->n()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/w;->p()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/b;->n()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v2}, Lkotlinx/coroutines/internal/x;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->S()V

    iget-wide p1, p3, Lkotlinx/coroutines/internal/w;->c:J

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v2, v0

    mul-long/2addr p1, v2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_7

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lkotlinx/coroutines/internal/x;->b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/w;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/channels/j;

    iget-wide v2, p3, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long p1, v2, p1

    if-lez p1, :cond_6

    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->l1(J)V

    iget-wide v2, p3, Lkotlinx/coroutines/internal/w;->c:J

    int-to-long p1, p1

    mul-long/2addr v2, p1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_7

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_3

    :cond_6
    move-object v1, p3

    :cond_7
    :goto_3
    return-object v1
.end method

.method private final X0(Lkotlinx/coroutines/s2;Z)V
    .locals 2

    instance-of v0, p1, Lkotlinx/coroutines/n;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->e0()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->i0()Ljava/lang/Throwable;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lkotlinx/coroutines/channels/p;

    if-eqz p2, :cond_2

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p1, p1, Lkotlinx/coroutines/channels/p;->a:Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p2, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/channels/h;->b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/h;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lkotlinx/coroutines/channels/BufferedChannel$a;

    if-eqz p2, :cond_3

    check-cast p1, Lkotlinx/coroutines/channels/BufferedChannel$a;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/BufferedChannel$a;->i()V

    :goto_1
    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected waiter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static final synthetic Y()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method static synthetic Y0(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->u()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/j;

    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->v()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v3, v1

    invoke-static {p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->w(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v1

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v5, v2

    div-long v5, v3, v5

    int-to-long v7, v2

    rem-long v7, v3, v7

    long-to-int v2, v7

    iget-wide v7, v0, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_2

    invoke-static {p0, v5, v6, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->o(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->I0(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    return-object p0

    :cond_1
    move-object v0, v5

    :cond_2
    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, v0

    move v7, v2

    move-object v8, p1

    move-wide v9, v3

    move v12, v1

    invoke-static/range {v5 .. v12}, Lkotlinx/coroutines/channels/BufferedChannel;->G(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    const/4 v1, 0x3

    if-eq v5, v1, :cond_6

    const/4 v1, 0x4

    if-eq v5, v1, :cond_4

    const/4 v1, 0x5

    if-eq v5, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gez v1, :cond_5

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->c()V

    :cond_5
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->I0(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    return-object p0

    :cond_6
    move-object v5, p0

    move-object v6, v0

    move v7, v2

    move-object v8, p1

    move-wide v9, v3

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Lkotlinx/coroutines/channels/BufferedChannel;->Z0(Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    return-object p0

    :cond_7
    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/w;->t()V

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->I0(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    return-object p0

    :cond_8
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->c()V

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final Z()J
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->Y()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final Z0(Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v0, p3

    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/q;->b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v10

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v7, v10

    :try_start_0
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->G(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_10

    const/4 v11, 0x1

    if-eq v1, v11, :cond_f

    const/4 v12, 0x2

    if-eq v1, v12, :cond_e

    const/4 v13, 0x4

    if-eq v1, v13, :cond_d

    const-string v14, "unexpected"

    const/4 v15, 0x5

    if-ne v1, v15, :cond_c

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/b;->c()V

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->u()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/j;

    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->v()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide v4, 0xfffffffffffffffL

    and-long v16, v2, v4

    invoke-static {v9, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->w(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v18

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v3, v2

    div-long v3, v16, v3

    int-to-long v5, v2

    rem-long v5, v16, v5

    long-to-int v8, v5

    iget-wide v5, v1, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    invoke-static {v9, v3, v4, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->o(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v18, :cond_0

    :cond_1
    :goto_1
    invoke-static {v9, v0, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->B(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/n;)V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    move-object v7, v2

    goto :goto_2

    :cond_3
    move-object v7, v1

    :goto_2
    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    move-wide/from16 v5, v16

    move-object/from16 p1, v7

    move-object v7, v10

    move/from16 v19, v8

    move/from16 v8, v18

    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->G(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v11, :cond_a

    if-eq v1, v12, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    if-eq v1, v13, :cond_5

    if-eq v1, v15, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/b;->c()V

    :goto_3
    move-object/from16 v1, p1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v1

    cmp-long v1, v16, v1

    if-gez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v18, :cond_8

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/w;->t()V

    goto :goto_1

    :cond_8
    instance-of v0, v10, Lkotlinx/coroutines/s2;

    if-eqz v0, :cond_9

    move-object v0, v10

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_11

    move-object/from16 v2, p1

    move/from16 v1, v19

    invoke-static {v9, v0, v2, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->D(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    goto :goto_6

    :cond_a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-interface {v10, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    move-object/from16 v2, p1

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/b;->c()V

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-gez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/b;->c()V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v9, v10, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->D(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    goto :goto_6

    :cond_f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_10
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/internal/b;->c()V

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_11
    :goto_6
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_12
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_13

    return-object v0

    :cond_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_7
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    throw v0
.end method

.method private static final synthetic a0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final a1(J)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->v0(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide v0, 0xfffffffffffffffL

    and-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->L(J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic b(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/f;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->N0(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/f;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final b1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/coroutines/channels/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p1, p1, Lkotlinx/coroutines/channels/p;->a:Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {v0, p2}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/channels/h;->b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/h;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->K(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    move-result-object v1

    :cond_0
    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, p2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->u(Lkotlinx/coroutines/n;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Z

    move-result p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$a;

    if-eqz v0, :cond_2

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/channels/BufferedChannel$a;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel$a;->h(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/n;

    if-eqz v0, :cond_4

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/n;

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->I(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    move-result-object v1

    :cond_3
    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, p2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->u(Lkotlinx/coroutines/n;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Z

    move-result p1

    :goto_0
    return p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected receiver type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static final synthetic c0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final c1(Ljava/lang/Object;Lkotlinx/coroutines/channels/j;I)Z
    .locals 1

    instance-of p2, p1, Lkotlinx/coroutines/n;

    if-eqz p2, :cond_0

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/n;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3, v0}, Lkotlinx/coroutines/channels/BufferedChannelKt;->C(Lkotlinx/coroutines/n;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected waiter: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static final synthetic d0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final e0()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private final e1(Lkotlinx/coroutines/channels/j;IJ)Z
    .locals 3

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/s2;

    if-eqz v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-ltz v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->p()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->c1(Ljava/lang/Object;Lkotlinx/coroutines/channels/j;I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->F(ILjava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Lkotlinx/coroutines/internal/z;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->F(ILjava/lang/Object;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->C(IZ)V

    move p1, p3

    :goto_0
    return p1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/channels/BufferedChannel;->f1(Lkotlinx/coroutines/channels/j;IJ)Z

    move-result p1

    return p1
.end method

.method private static final synthetic f0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final f1(Lkotlinx/coroutines/channels/j;IJ)Z
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/s2;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v1, p3, v4

    if-gez v1, :cond_1

    new-instance v1, Lkotlinx/coroutines/channels/s;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/s2;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/channels/s;-><init>(Lkotlinx/coroutines/s2;)V

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->p()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->c1(Ljava/lang/Object;Lkotlinx/coroutines/channels/j;I)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->F(ILjava/lang/Object;)V

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Lkotlinx/coroutines/internal/z;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->F(ILjava/lang/Object;)V

    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/j;->C(IZ)V

    :goto_1
    return v2

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return v2

    :cond_4
    if-nez v0, :cond_5

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->k()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_5
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_6

    return v3

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->o()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->f()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->i()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-ne v0, v1, :cond_8

    return v3

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->q()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-ne v0, v1, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected cell state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    return v3
.end method

.method private static final synthetic g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final g1(Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v1, v3

    cmp-long v1, p3, v1

    if-ltz v1, :cond_2

    if-nez p5, :cond_0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->s()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p2, v0, p5}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->U()V

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->f()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->U()V

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->D(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->h1(Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic h(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->M0(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;

    move-result-object p0

    return-object p0
.end method

.method private final h1(Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->k()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->f()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->U()V

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->D(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->o()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->U()V

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->p()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->q()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of p3, v0, Lkotlinx/coroutines/channels/s;

    if-eqz p3, :cond_6

    check-cast v0, Lkotlinx/coroutines/channels/s;

    iget-object v0, v0, Lkotlinx/coroutines/channels/s;->a:Lkotlinx/coroutines/s2;

    :cond_6
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->c1(Ljava/lang/Object;Lkotlinx/coroutines/channels/j;I)Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->f()Lkotlinx/coroutines/internal/z;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->F(ILjava/lang/Object;)V

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->U()V

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->D(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Lkotlinx/coroutines/internal/z;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lkotlinx/coroutines/channels/j;->F(ILjava/lang/Object;)V

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lkotlinx/coroutines/channels/j;->C(IZ)V

    if-eqz p3, :cond_8

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->U()V

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_9
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v1, v3

    cmp-long v1, p3, v1

    if-gez v1, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->o()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->U()V

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    return-object p1

    :cond_a
    if-nez p5, :cond_b

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->s()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p1, p2, v0, p5}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->U()V

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic i(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/channels/BufferedChannel;->J(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final i1(Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 3

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->G(ILjava/lang/Object;)V

    if-eqz p7, :cond_0

    invoke-direct/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->j1(Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-direct {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->L(J)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    invoke-virtual {p1, p2, v2, v0}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_1
    if-nez p6, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    invoke-virtual {p1, p2, v2, p6}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x2

    return p1

    :cond_3
    instance-of v2, v0, Lkotlinx/coroutines/s2;

    if-eqz v2, :cond_6

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->w(I)V

    invoke-direct {p0, v0, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->b1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->f()Lkotlinx/coroutines/internal/z;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->F(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->K0()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->i()Lkotlinx/coroutines/internal/z;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->x(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->i()Lkotlinx/coroutines/internal/z;

    move-result-object p4

    if-eq p3, p4, :cond_5

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/j;->C(IZ)V

    :cond_5
    const/4 p1, 0x5

    :goto_0
    return p1

    :cond_6
    invoke-direct/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->j1(Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p1

    return p1
.end method

.method private static final synthetic j0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final j1(Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5

    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    invoke-direct {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->L(J)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-nez p7, :cond_1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    invoke-virtual {p1, p2, v4, v0}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_1
    if-eqz p7, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Lkotlinx/coroutines/internal/z;

    move-result-object v0

    invoke-virtual {p1, p2, v4, v0}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/j;->C(IZ)V

    return v1

    :cond_2
    if-nez p6, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    invoke-virtual {p1, p2, v4, p6}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->k()Lkotlinx/coroutines/internal/z;

    move-result-object v4

    if-ne v0, v4, :cond_5

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->i()Lkotlinx/coroutines/internal/z;

    move-result-object p4

    const/4 p5, 0x5

    if-ne v0, p4, :cond_6

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->w(I)V

    return p5

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->o()Lkotlinx/coroutines/internal/z;

    move-result-object p4

    if-ne v0, p4, :cond_7

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->w(I)V

    return p5

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object p4

    if-ne v0, p4, :cond_8

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->w(I)V

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->S()V

    return v1

    :cond_8
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->w(I)V

    instance-of p4, v0, Lkotlinx/coroutines/channels/s;

    if-eqz p4, :cond_9

    check-cast v0, Lkotlinx/coroutines/channels/s;

    iget-object v0, v0, Lkotlinx/coroutines/channels/s;->a:Lkotlinx/coroutines/s2;

    :cond_9
    invoke-direct {p0, v0, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->b1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->f()Lkotlinx/coroutines/internal/z;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->F(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->K0()V

    goto :goto_0

    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->i()Lkotlinx/coroutines/internal/z;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/j;->x(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->i()Lkotlinx/coroutines/internal/z;

    move-result-object p4

    if-eq p3, p4, :cond_b

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/j;->C(IZ)V

    :cond_b
    move v2, p5

    :goto_0
    return v2
.end method

.method public static final synthetic k(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->H(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final k1(J)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-ltz v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    move-object v2, p0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public static final synthetic l(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->I(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    move-result-object p0

    return-object p0
.end method

.method private final l1(J)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide v1, 0xfffffffffffffffL

    and-long/2addr v1, v3

    cmp-long v5, v1, p1

    if-ltz v5, :cond_1

    return-void

    :cond_1
    const/16 v5, 0x3c

    shr-long v5, v3, v5

    long-to-int v5, v5

    invoke-static {v1, v2, v5}, Lkotlinx/coroutines/channels/BufferedChannelKt;->b(JI)J

    move-result-wide v5

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public static final synthetic m(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->K(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic m0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic n(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->W(JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->X(JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object p0

    return-object p0
.end method

.method private final o0(J)V
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->d0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long/2addr p1, v0

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->d0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide p1

    and-long/2addr p1, v0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic p0(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->o0(J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final q0()V
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->c0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->d()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->e()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    :goto_0
    invoke-static {v0, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic r(Lkotlinx/coroutines/channels/BufferedChannel;)Ljava/lang/Throwable;
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->e0()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private final r0(Lkotlinx/coroutines/channels/j;IJ)Z
    .locals 4

    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->k()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    const/4 p2, 0x1

    if-ne v0, p1, :cond_2

    return p2

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    if-ne v0, p1, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    if-ne v0, p1, :cond_4

    return v1

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->f()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    if-ne v0, p1, :cond_5

    return v1

    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->o()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    if-ne v0, p1, :cond_6

    return v1

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->p()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    if-ne v0, p1, :cond_7

    return p2

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->q()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    if-ne v0, p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v2

    cmp-long p1, p3, v2

    if-nez p1, :cond_9

    move v1, p2

    :cond_9
    return v1

    :cond_a
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->o()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->U()V

    return v1
.end method

.method public static final synthetic s()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->f0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private final s0(JZ)Z
    .locals 6

    const/16 v0, 0x3c

    shr-long v0, p1, v0

    long-to-int v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    const-wide v4, 0xfffffffffffffffL

    if-eq v0, v3, :cond_2

    const/4 p3, 0x3

    if-ne v0, p3, :cond_1

    and-long/2addr p1, v4

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->Q(J)V

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unexpected close status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    and-long/2addr p1, v4

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->R(J)Lkotlinx/coroutines/channels/j;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->n0()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public static final synthetic t()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic u()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->j0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private final u0(J)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->s0(JZ)Z

    move-result p1

    return p1
.end method

.method public static final synthetic v()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private final v0(J)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->s0(JZ)Z

    move-result p1

    return p1
.end method

.method public static final synthetic w(Lkotlinx/coroutines/channels/BufferedChannel;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->v0(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic x(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->D0(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method private final x0()Z
    .locals 4

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->Z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final synthetic y(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->E0(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method private final y0(Lkotlinx/coroutines/channels/j;)J
    .locals 7

    :cond_0
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    if-ge v3, v0, :cond_5

    iget-wide v3, p1, Lkotlinx/coroutines/internal/w;->c:J

    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->k()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    if-ne v1, v2, :cond_4

    return-wide v3

    :cond_3
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lkotlinx/coroutines/channels/j;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/w;->t()V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->h()Lkotlinx/coroutines/internal/b;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/j;

    if-nez p1, :cond_0

    return-wide v1
.end method

.method public static final synthetic z(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->G0(Lkotlinx/coroutines/n;)V

    return-void
.end method

.method private final z0()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v0, 0x3c

    shr-long v0, v2, v0

    long-to-int v0, v0

    if-nez v0, :cond_1

    const-wide v0, 0xfffffffffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/channels/BufferedChannelKt;->b(JI)J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected F0()V
    .locals 0

    return-void
.end method

.method protected K0()V
    .locals 0

    return-void
.end method

.method protected L0()V
    .locals 0

    return-void
.end method

.method public M(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Channel was cancelled"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->P(Ljava/lang/Throwable;Z)Z

    move-result p1

    return p1
.end method

.method protected P(Ljava/lang/Throwable;Z)Z
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->z0()V

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->m0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->l()Lkotlinx/coroutines/internal/z;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->A0()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->B0()V

    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->S()V

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->F0()V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->q0()V

    :cond_2
    return p1
.end method

.method protected final T(J)V
    .locals 10

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->f0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/j;

    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    iget v1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->a:I

    int-to-long v1, v1

    add-long/2addr v1, v8

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->Z()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    const-wide/16 v3, 0x1

    add-long v6, v8, v3

    move-object v3, p0

    move-wide v4, v8

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v2, v1

    div-long v2, v8, v2

    int-to-long v4, v1

    rem-long v4, v8, v4

    long-to-int v4, v4

    iget-wide v5, v0, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_3

    invoke-direct {p0, v2, v3, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->W(JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v5, v8

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->g1(Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->c()V

    iget-object v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lkotlinx/coroutines/internal/s;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    throw v1
.end method

.method public a(Lkotlin/jvm/functions/Function1;)V
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->c0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->c0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->d()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->c0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->d()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->e()Lkotlinx/coroutines/internal/z;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->e()Lkotlinx/coroutines/internal/z;

    move-result-object p1

    if-ne v1, p1, :cond_3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another handler is already registered: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final b0()Ljava/lang/Throwable;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->m0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->a1(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/h$b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Lkotlinx/coroutines/internal/z;

    move-result-object v8

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->u()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/j;

    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->v()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v9, v1, v3

    invoke-static {p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->w(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v11

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v2, v1

    div-long v2, v9, v2

    int-to-long v4, v1

    rem-long v4, v9, v4

    long-to-int v12, v4

    iget-wide v4, v0, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    invoke-static {p0, v2, v3, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->o(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v11, :cond_1

    :cond_2
    :goto_1
    sget-object p1, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->i0()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_6

    :cond_3
    move-object v13, v1

    goto :goto_2

    :cond_4
    move-object v13, v0

    :goto_2
    move-object v0, p0

    move-object v1, v13

    move v2, v12

    move-object v3, p1

    move-wide v4, v9

    move-object v6, v8

    move v7, v11

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->G(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/b;->c()V

    :goto_3
    move-object v0, v13

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-gez p1, :cond_2

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-eqz v11, :cond_9

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/w;->t()V

    goto :goto_1

    :cond_9
    instance-of p1, v8, Lkotlinx/coroutines/s2;

    if-eqz p1, :cond_a

    check-cast v8, Lkotlinx/coroutines/s2;

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_b

    invoke-static {p0, v8, v13, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->D(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    :cond_b
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/w;->t()V

    sget-object p1, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/h$b;->b()Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_c
    :goto_5
    sget-object p1, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_d
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/b;->c()V

    goto :goto_5

    :goto_6
    return-object p1
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->M(Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected final d1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v8, p0

    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Lkotlinx/coroutines/internal/z;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->u()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/j;

    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->v()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v10, v1, v3

    invoke-static {v8, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->w(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v12

    sget v13, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v1, v13

    div-long v1, v10, v1

    int-to-long v3, v13

    rem-long v3, v10, v3

    long-to-int v14, v3

    iget-wide v3, v0, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    invoke-static {v8, v1, v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->o(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v12, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->i0()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v15, v1

    goto :goto_1

    :cond_2
    move-object v15, v0

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v14

    move-object/from16 v3, p1

    move-wide v4, v10

    move-object v6, v9

    move v7, v12

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->G(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Lkotlinx/coroutines/internal/b;->c()V

    :goto_2
    move-object v0, v15

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    invoke-virtual {v15}, Lkotlinx/coroutines/internal/b;->c()V

    :cond_5
    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->i0()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v15}, Lkotlinx/coroutines/internal/w;->t()V

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->i0()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    instance-of v0, v9, Lkotlinx/coroutines/s2;

    if-eqz v0, :cond_9

    check-cast v9, Lkotlinx/coroutines/s2;

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_a

    invoke-static {v8, v9, v15, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->D(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    :cond_a
    iget-wide v0, v15, Lkotlinx/coroutines/internal/w;->c:J

    int-to-long v2, v13

    mul-long/2addr v0, v2

    int-to-long v2, v14

    add-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->T(J)V

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-virtual {v15}, Lkotlinx/coroutines/internal/b;->c()V

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->u0(J)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/h$b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->i()Lkotlinx/coroutines/internal/z;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->s()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/j;

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->t0()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->t()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v7

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v3, v2

    div-long v3, v7, v3

    int-to-long v5, v2

    rem-long v5, v7, v5

    long-to-int v9, v5

    iget-wide v5, v1, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_4

    invoke-static {p0, v3, v4, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->n(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v10, v2

    goto :goto_1

    :cond_4
    move-object v10, v1

    :goto_1
    move-object v1, p0

    move-object v2, v10

    move v3, v9

    move-wide v4, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->F(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/j;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->r()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    if-ne v1, v2, :cond_7

    instance-of v1, v0, Lkotlinx/coroutines/s2;

    if-eqz v1, :cond_5

    check-cast v0, Lkotlinx/coroutines/s2;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    invoke-static {p0, v0, v10, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->C(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/s2;Lkotlinx/coroutines/channels/j;I)V

    :cond_6
    invoke-virtual {p0, v7, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->m1(J)V

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/w;->t()V

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/h$b;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->h()Lkotlinx/coroutines/internal/z;

    move-result-object v2

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v1

    cmp-long v1, v7, v1

    if-gez v1, :cond_8

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/b;->c()V

    :cond_8
    move-object v1, v10

    goto :goto_0

    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->s()Lkotlinx/coroutines/internal/z;

    move-result-object v0

    if-eq v1, v0, :cond_a

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/b;->c()V

    sget-object v0, Lkotlinx/coroutines/channels/h;->b:Lkotlinx/coroutines/channels/h$b;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->R0(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->Q0(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h0()J
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final i0()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->b0()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public iterator()Lkotlinx/coroutines/channels/f;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$a;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/BufferedChannel$a;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    return-object v0
.end method

.method public j(Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->P(Ljava/lang/Throwable;Z)Z

    move-result p1

    return p1
.end method

.method public final l0()J
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final m1(J)V
    .locals 16

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->Z()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->g()I

    move-result v0

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    if-ge v1, v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->Z()J

    move-result-wide v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->d0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->Z()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->d0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v10

    :cond_3
    invoke-virtual {v10, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v0, v2, v8

    const/4 v11, 0x1

    invoke-static {v0, v1, v11}, Lkotlinx/coroutines/channels/BufferedChannelKt;->a(JZ)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->Z()J

    move-result-wide v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->d0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v4, v2, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    and-long/2addr v12, v2

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_5

    move v10, v11

    goto :goto_2

    :cond_5
    move v10, v7

    :goto_2
    cmp-long v12, v0, v4

    if-nez v12, :cond_7

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->Z()J

    move-result-wide v12

    cmp-long v0, v0, v12

    if-nez v0, :cond_7

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->d0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v12

    :cond_6
    invoke-virtual {v12, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v0, v2, v8

    invoke-static {v0, v1, v7}, Lkotlinx/coroutines/channels/BufferedChannelKt;->a(JZ)J

    move-result-wide v4

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_7
    if-nez v10, :cond_4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->d0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-static {v4, v5, v11}, Lkotlinx/coroutines/channels/BufferedChannelKt;->a(JZ)J

    move-result-wide v4

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_1
.end method

.method public final n0()Z
    .locals 9

    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->f0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/j;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v3

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    return v2

    :cond_1
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v5, v1

    div-long v5, v3, v5

    iget-wide v7, v0, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_2

    invoke-direct {p0, v5, v6, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->W(JLkotlinx/coroutines/channels/j;)Lkotlinx/coroutines/channels/j;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->f0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/j;

    iget-wide v0, v0, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    return v2

    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->c()V

    int-to-long v1, v1

    rem-long v1, v3, v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1, v3, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->r0(Lkotlinx/coroutines/channels/j;IJ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->g0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_0
.end method

.method public p(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->Y0(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q()Z
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->v0(J)Z

    move-result v0

    return v0
.end method

.method public t0()Z
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->u0(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->k0()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v4, 0x3c

    shr-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "cancelled,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "closed,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capacity="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lkotlinx/coroutines/channels/BufferedChannel;->a:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Lkotlinx/coroutines/channels/j;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->f0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->j0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->a0()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lkotlinx/coroutines/channels/j;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->n()Lkotlinx/coroutines/channels/j;

    move-result-object v9

    if-eq v8, v9, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/channels/j;

    iget-wide v8, v4, Lkotlinx/coroutines/internal/w;->c:J

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lkotlinx/coroutines/channels/j;

    iget-wide v10, v10, Lkotlinx/coroutines/internal/w;->c:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_6

    move-object v3, v4

    move-wide v8, v10

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    check-cast v3, Lkotlinx/coroutines/channels/j;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->h0()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->l0()J

    move-result-wide v12

    :goto_3
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    move v4, v6

    :goto_4
    if-ge v4, v2, :cond_12

    iget-wide v8, v3, Lkotlinx/coroutines/internal/w;->c:J

    sget v14, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v14, v14

    mul-long/2addr v8, v14

    int-to-long v14, v4

    add-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-ltz v14, :cond_7

    cmp-long v15, v8, v10

    if-gez v15, :cond_13

    :cond_7
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/channels/j;->B(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/channels/j;->A(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v15, Lkotlinx/coroutines/n;

    if-eqz v7, :cond_a

    cmp-long v7, v8, v10

    if-gez v7, :cond_8

    if-ltz v14, :cond_8

    const-string v7, "receive"

    goto/16 :goto_6

    :cond_8
    if-gez v14, :cond_9

    if-ltz v7, :cond_9

    const-string v7, "send"

    goto/16 :goto_6

    :cond_9
    const-string v7, "cont"

    goto/16 :goto_6

    :cond_a
    instance-of v7, v15, Lkotlinx/coroutines/channels/p;

    if-eqz v7, :cond_b

    const-string v7, "receiveCatching"

    goto/16 :goto_6

    :cond_b
    instance-of v7, v15, Lkotlinx/coroutines/channels/s;

    if-eqz v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EB("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_c
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->q()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->p()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_5

    :cond_d
    if-eqz v15, :cond_11

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->k()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->f()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->o()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->i()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Lkotlinx/coroutines/internal/z;

    move-result-object v7

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_f
    :goto_5
    const-string v7, "resuming_sender"

    :goto_6
    if-eqz v6, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x28

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "),"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_7
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/b;->f()Lkotlinx/coroutines/internal/b;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/channels/j;

    if-nez v3, :cond_15

    :cond_13
    invoke-static {v1}, Lkotlin/text/StringsKt;->w1(Ljava/lang/CharSequence;)C

    move-result v2

    if-ne v2, v5, :cond_14

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deleteCharAt(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_15
    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_16
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected w0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
