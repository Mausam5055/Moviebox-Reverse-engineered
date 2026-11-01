.class public final Lko/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/g;
.implements Lcom/transsion/player/orplayer/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lko/d0$a;
    }
.end annotation


# static fields
.field public static final m:Lko/d0$a;

.field private static final n:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Landroid/os/HandlerThread;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/transsion/player/orplayer/g;

.field private volatile d:J

.field private volatile e:Lcom/transsion/player/orplayer/f;

.field private f:Ljava/lang/Boolean;

.field private g:Lcom/transsion/player/orplayer/e;

.field private h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile j:Lao/e;

.field private k:J

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lko/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lko/d0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lko/d0;->m:Lko/d0$a;

    new-instance v0, Lko/b;

    invoke-direct {v0}, Lko/b;-><init>()V

    sput-object v0, Lko/d0;->n:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lko/d0;->f:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lko/d0;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    const/16 v1, -0xa

    goto :goto_0

    :cond_0
    const/16 v1, -0x10

    :goto_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "TnPlayerThread"

    invoke-direct {v3, v4, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    sget-object v1, Lko/d0;->n:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lko/d0;->b:Landroid/os/Handler;

    iput-object v3, p0, Lko/d0;->a:Landroid/os/HandlerThread;

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lko/d0;->a:Landroid/os/HandlerThread;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lko/d0;->b:Landroid/os/Handler;

    :goto_1
    invoke-virtual {v0}, Lko/l0;->j()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TnplayerManager Aliyunplayer maxBufferingTime:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    move-object v2, v0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    const v0, 0xc350

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TnplayerManager Aliyunplayer maxBufferingTime final:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lko/x;

    invoke-direct {v1, p0, v0}, Lko/x;-><init>(Lko/d0;I)V

    invoke-virtual {p0, v1}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lko/d0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lko/d0;-><init>()V

    return-void
.end method

.method public static synthetic A(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lko/d0;->W(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic B(Lko/d0;Lcom/transsion/player/enum/ScaleMode;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->f0(Lko/d0;Lcom/transsion/player/enum/ScaleMode;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lko/d0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lko/d0;->S(Lko/d0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lko/d0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lko/d0;->I(Lko/d0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final E(Lko/d0;I)Lkotlin/Unit;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v5, p1

    new-instance v15, Lcom/transsion/player/orplayer/g$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v1}, Lcom/transsion/player/orplayer/g$a;-><init>(Landroid/content/Context;)V

    new-instance v14, Lbo/d;

    move-object v1, v14

    const v20, 0x1eff7

    const/16 v21, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v22, v14

    move/from16 v14, v16

    move-object/from16 v23, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v21}, Lbo/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v22

    move-object/from16 v1, v23

    invoke-virtual {v1, v2}, Lcom/transsion/player/orplayer/g$a;->b(Lbo/d;)Lcom/transsion/player/orplayer/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/player/orplayer/g$a;->a()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/g;->setAutoPlay(Z)V

    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    iput-object v1, v0, Lko/d0;->c:Lcom/transsion/player/orplayer/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init player:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final F(Lko/d0;Lcom/transsion/player/orplayer/f;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPlayerListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final G(Lko/d0;Lmo/d;I)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/player/orplayer/g;->changeTrackSelection(Lmo/d;I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final H(Lko/d0;)Lkotlin/Unit;
    .locals 3

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->clearScreen()V

    :cond_0
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearScreen  mediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final I(Lko/d0;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/orplayer/g;->clearSurfaceOnly()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final K(Lko/d0;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/orplayer/g;->clearSurfaceOnly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p0
.end method

.method private static final L(Lko/d0;Z)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/g;->enableHardwareDecoder(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final M()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lko/d0;->c:Lcom/transsion/player/orplayer/g;

    return-object v0
.end method

.method private final N(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Loo/e;->a:Loo/e;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lko/d0;->c:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  player@"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "TnPlayer"

    invoke-virtual {v0, v2, p1, v1}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final O(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    sget-object p0, Loo/e;->a:Loo/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uncaughtException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "TnPlayer"

    invoke-virtual {p0, v1, p1, v0}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final P(Lko/d0;)Lkotlin/Unit;
    .locals 3

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Q(Lko/d0;)Lkotlin/Unit;
    .locals 3

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final R(Lko/d0;)Lkotlin/Unit;
    .locals 3

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_0
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final S(Lko/d0;)Lkotlin/Unit;
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lko/d0;->k:J

    iget-object v0, p0, Lko/d0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lko/d0;->c:Lcom/transsion/player/orplayer/g;

    sget-object v2, Lko/l0;->a:Lko/l0;

    invoke-virtual {v2}, Lko/l0;->o()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lko/m0;->a:Lko/m0;

    invoke-virtual {v2, p0}, Lko/m0;->a(Lcom/transsion/player/orplayer/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v2, p0, Lko/d0;->c:Lcom/transsion/player/orplayer/g;

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->clearSurfaceOnly()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_3
    if-eqz v1, :cond_7

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_4
    iput-object v2, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    iget-object v0, p0, Lko/d0;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lko/d0;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_5
    iget-object v0, p0, Lko/d0;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_6
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    if-eqz v0, :cond_8

    :try_start_0
    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->reset()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->clearScreen()V

    :cond_9
    iput-object v2, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset for reuse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lko/d0;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_2
    iget-object p0, p0, Lko/d0;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method private static final T(Lko/d0;Lcom/transsion/player/orplayer/f;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removePlayerListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final U(Lko/d0;)Lkotlin/Unit;
    .locals 3

    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lko/d0;->k:J

    iget-object v0, p0, Lko/d0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->clearScreen()V

    :cond_0
    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/transsion/player/orplayer/g;->reset()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final W(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final X(Lko/d0;J)Lkotlin/Unit;
    .locals 3

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_0
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " seekTo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  mediaSource:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Y(Lko/d0;Z)Lkotlin/Unit;
    .locals 3

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setAutoPlay(Z)V

    :cond_0
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  mediaSource:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final a0(Lko/d0;Lao/e;)Lkotlin/Unit;
    .locals 2

    iput-object p1, p0, Lko/d0;->j:Lao/e;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lko/d0;->d:J

    iput-wide v0, p0, Lko/d0;->k:J

    iget-object v0, p0, Lko/d0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final b0(Lko/d0;Z)Lkotlin/Unit;
    .locals 3

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    :cond_0
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLooping:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  mediaSource:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic c(Lko/d0;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->K(Lko/d0;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private static final c0(Lko/d0;Z)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/g;->setMute(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic d(Lko/d0;Lcom/transsion/player/orplayer/f;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->F(Lko/d0;Lcom/transsion/player/orplayer/f;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d0(Lko/d0;Lbo/d;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/g;->setPlayerConfig(Lbo/d;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic e(Lko/d0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lko/d0;->k0(Lko/d0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final e0(Lko/d0;Lcom/transsion/player/orplayer/f;)Lkotlin/Unit;
    .locals 2

    iput-object p1, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayerListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic f(Lko/d0;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->E(Lko/d0;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final f0(Lko/d0;Lcom/transsion/player/enum/ScaleMode;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic g(Lko/d0;Lcom/transsion/player/orplayer/f;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->e0(Lko/d0;Lcom/transsion/player/orplayer/f;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g0(Lko/d0;F)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic h(Lko/d0;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->c0(Lko/d0;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final h0(Lko/d0;Landroid/view/SurfaceView;)Lkotlin/Unit;
    .locals 2

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setSurfaceView(Landroid/view/SurfaceView;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurfaceView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic i(Lko/d0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lko/d0;->Q(Lko/d0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final i0(Lko/d0;Landroid/view/TextureView;)Lkotlin/Unit;
    .locals 2

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextureView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic j(Lko/d0;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->L(Lko/d0;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final j0(Lko/d0;F)Lkotlin/Unit;
    .locals 3

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setVolume(F)V

    :cond_0
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  mediaSource:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic k(Lko/d0;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->Y(Lko/d0;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final k0(Lko/d0;)Lkotlin/Unit;
    .locals 3

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_0
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic l(Lko/d0;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lko/d0;->X(Lko/d0;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lko/d0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lko/d0;->R(Lko/d0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lko/d0;Lmo/d;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lko/d0;->G(Lko/d0;Lmo/d;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lko/d0;F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->g0(Lko/d0;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lko/d0;Landroid/view/TextureView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->i0(Lko/d0;Landroid/view/TextureView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lko/d0;F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->j0(Lko/d0;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lko/d0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lko/d0;->U(Lko/d0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lko/d0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lko/d0;->H(Lko/d0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lko/d0;Landroid/view/SurfaceView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->h0(Lko/d0;Landroid/view/SurfaceView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lko/d0;Lcom/transsion/player/orplayer/f;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->T(Lko/d0;Lcom/transsion/player/orplayer/f;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->O(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic w(Lko/d0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lko/d0;->P(Lko/d0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lko/d0;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->b0(Lko/d0;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lko/d0;Lbo/d;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->d0(Lko/d0;Lbo/d;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lko/d0;Lao/e;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lko/d0;->a0(Lko/d0;Lao/e;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final J()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lko/d0;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->clearSurfaceOnly()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lko/d0;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lko/d0;->b:Landroid/os/Handler;

    new-instance v3, Lko/e;

    invoke-direct {v3, p0, v0}, Lko/e;-><init>(Lko/d0;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    const-string v3, "TnPlayer"

    if-nez v2, :cond_3

    sget-object v0, Loo/e;->a:Loo/e;

    const-string v2, "clearSurfaceSynchronously post failed"

    invoke-virtual {v0, v3, v2, v1}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Loo/e;->a:Loo/e;

    const-string v2, "clearSurfaceSynchronously timeout"

    invoke-virtual {v0, v3, v2, v1}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    sget-object v0, Loo/e;->a:Loo/e;

    const-string v2, "clearSurfaceSynchronously interrupted"

    invoke-virtual {v0, v3, v2, v1}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final V(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lko/d0;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lko/d0;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "runOnPlayerThread handlerThread.isAlive:false"

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lko/d0;->b:Landroid/os/Handler;

    new-instance v1, Lko/l;

    invoke-direct {v1, p1}, Lko/l;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final Z(Lcom/transsion/player/orplayer/e;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lko/d0;->g:Lcom/transsion/player/orplayer/e;

    iget-object p1, p0, Lko/d0;->c:Lcom/transsion/player/orplayer/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TnAliPlayer setBandwidthRedundancyListener :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lko/d0;->c:Lcom/transsion/player/orplayer/g;

    instance-of v0, p1, Lcom/transsion/player/orplayer/w;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ORPlayerImpl setBandwidthRedundancyListener :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lko/d0;->f:Ljava/lang/Boolean;

    iget-object p1, p0, Lko/d0;->c:Lcom/transsion/player/orplayer/g;

    const-string v0, "null cannot be cast to non-null type com.transsion.player.orplayer.ORPlayerImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/player/orplayer/w;

    iget-object v0, p0, Lko/d0;->g:Lcom/transsion/player/orplayer/e;

    invoke-virtual {p1, v0}, Lcom/transsion/player/orplayer/w;->f0(Lcom/transsion/player/orplayer/e;)V

    :cond_0
    return-void
.end method

.method public addDataSource(Lao/e;)Z
    .locals 1

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lko/d0;->setDataSource(Lao/e;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lko/h;

    invoke-direct {v0, p0, p1}, Lko/h;-><init>(Lko/d0;Lcom/transsion/player/orplayer/f;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public changeTrackSelection(Lmo/d;I)V
    .locals 1

    const-string v0, "mediaTrackGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lko/p;

    invoke-direct {v0, p0, p1, p2}, Lko/p;-><init>(Lko/d0;Lmo/d;I)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public clearScreen()V
    .locals 1

    new-instance v0, Lko/j;

    invoke-direct {v0, p0}, Lko/j;-><init>(Lko/d0;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public clearSurfaceOnly()V
    .locals 1

    new-instance v0, Lko/f;

    invoke-direct {v0, p0}, Lko/f;-><init>(Lko/d0;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public currentMediaSource()Lao/e;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->f(Lcom/transsion/player/orplayer/g;)Lao/e;

    move-result-object v0

    return-object v0
.end method

.method public enableHardwareDecoder(Z)V
    .locals 1

    new-instance v0, Lko/r;

    invoke-direct {v0, p0, p1}, Lko/r;-><init>(Lko/d0;Z)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public getBitrate()Lkotlin/Pair;
    .locals 3

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getBitrate()Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getCurrentTracks()Lmo/c;
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentTracks()Lmo/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentVideoFormat()Lmo/b;
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentVideoFormat()Lmo/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDownloadBitrate()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDownloadBitrate()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lko/d0;->d:J

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getVideoHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->k(Lcom/transsion/player/orplayer/g;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getVideoWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->l(Lcom/transsion/player/orplayer/g;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVolume()Ljava/lang/Float;
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getVolume()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public initPlayer()V
    .locals 3

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->initPlayer()V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->initPlayer()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPlayer  mediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public isComplete()Z
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isComplete()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isLoading()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->m(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isMute()Z
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isMute()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPrepared()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->n(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onBufferedPosition(JLao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onBufferedPosition(JLao/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion  mediaSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onFocusChange(Z)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onFocusChange(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lko/d0;->j:Lao/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusChange mediaSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onIsPlayingChanged(Z)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onIsPlayingChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onLoadingBegin(Lao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onLoadingBegin(Lao/e;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingBegin  mediaSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onLoadingEnd(Lao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onLoadingEnd(Lao/e;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingEnd mediaSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onLoadingProgress(IFLao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onLoadingProgress(IFLao/e;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingProgress percent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " netSpeed:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mediaSource:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 3

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->onLoopingStart()V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onLoopingStart()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoopingStart  mediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 2

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/f;->onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2}, Lcom/transsion/player/orplayer/f;->onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lko/d0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayError  errorInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mediaSource:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onPlayerRelease(Lao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onPlayerRelease(Lao/e;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerRelease  mediaSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 3

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->onPlayerReset()V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onPlayerReset()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerReset mediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 2

    invoke-direct {p0}, Lko/d0;->M()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lko/d0;->d:J

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onPrepare(Lao/e;)V

    :cond_1
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onPrepare(Lao/e;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepare  mediaSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 2

    iget-object v0, p0, Lko/d0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onProgress(JLao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onProgress(JLao/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 3

    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderFirstFrame  mediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->onRenderFirstFrame()V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onRenderFirstFrame()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSetDataSource()V
    .locals 3

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->onSetDataSource()V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onSetDataSource()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDataSource  mediaSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onTracksAudioBitrateChange(I)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onTracksAudioBitrateChange(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onTracksVideoBitrateChange(I)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onTracksVideoBitrateChange(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onVideoPause(Lao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onVideoPause(Lao/e;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPause  mediaSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 3

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/f;->onVideoSizeChanged(II)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2}, Lcom/transsion/player/orplayer/f;->onVideoSizeChanged(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mediaSource:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 2

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onVideoStart(Lao/e;)V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onVideoStart(Lao/e;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStart  mediaSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 1

    new-instance v0, Lko/z;

    invoke-direct {v0, p0}, Lko/z;-><init>(Lko/d0;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public play()V
    .locals 1

    new-instance v0, Lko/m;

    invoke-direct {v0, p0}, Lko/m;-><init>(Lko/d0;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public prepare()V
    .locals 1

    new-instance v0, Lko/v;

    invoke-direct {v0, p0}, Lko/v;-><init>(Lko/d0;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lko/d0;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lko/d0;->d:J

    new-instance v0, Lko/a0;

    invoke-direct {v0, p0}, Lko/a0;-><init>(Lko/d0;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->o(Lcom/transsion/player/orplayer/g;Ljava/lang/String;)V

    return-void
.end method

.method public removeDataSource(Lao/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->p(Lcom/transsion/player/orplayer/g;Lao/e;)Z

    move-result p1

    return p1
.end method

.method public removePlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lko/k;

    invoke-direct {v0, p0, p1}, Lko/k;-><init>(Lko/d0;Lcom/transsion/player/orplayer/f;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public requestForce()Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->r(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    new-instance v0, Lko/i;

    invoke-direct {v0, p0}, Lko/i;-><init>(Lko/d0;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 3

    iget-object v0, p0, Lko/d0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lko/b0;

    invoke-direct {v0, p0, p1, p2}, Lko/b0;-><init>(Lko/d0;J)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lko/d0;->k:J

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lko/d0;->k:J

    iget-object v0, p0, Lko/d0;->j:Lao/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  waiting.... mediaSource:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lko/d0;->N(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/g$b;->s(Lcom/transsion/player/orplayer/g;Ljava/lang/String;J)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    new-instance v0, Lko/s;

    invoke-direct {v0, p0, p1}, Lko/s;-><init>(Lko/d0;Z)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setDataSource(Lao/e;)V
    .locals 1

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lko/u;

    invoke-direct {v0, p0, p1}, Lko/u;-><init>(Lko/d0;Lao/e;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    new-instance v0, Lko/c;

    invoke-direct {v0, p0, p1}, Lko/c;-><init>(Lko/d0;Z)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    new-instance v0, Lko/o;

    invoke-direct {v0, p0, p1}, Lko/o;-><init>(Lko/d0;Z)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 5

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lko/d0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lko/d0;->e:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->setOnSeekCompleteListener()V

    :cond_0
    iget-object v0, p0, Lko/d0;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->setOnSeekCompleteListener()V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lko/d0;->k:J

    iget-object v2, p0, Lko/d0;->j:Lao/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnSeekCompleteListener nextSeekTo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mediaSource:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko/d0;->N(Ljava/lang/String;)V

    iget-wide v0, p0, Lko/d0;->k:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lko/d0;->seekTo(J)V

    :cond_2
    return-void
.end method

.method public setPlayerConfig(Lbo/d;)V
    .locals 1

    const-string v0, "vodConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lko/d;

    invoke-direct {v0, p0, p1}, Lko/d;-><init>(Lko/d0;Lbo/d;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lko/n;

    invoke-direct {v0, p0, p1}, Lko/n;-><init>(Lko/d0;Lcom/transsion/player/orplayer/f;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V
    .locals 1

    const-string v0, "scaleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lko/w;

    invoke-direct {v0, p0, p1}, Lko/w;-><init>(Lko/d0;Lcom/transsion/player/enum/ScaleMode;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    new-instance v0, Lko/t;

    invoke-direct {v0, p0, p1}, Lko/t;-><init>(Lko/d0;F)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    new-instance v0, Lko/c0;

    invoke-direct {v0, p0, p1}, Lko/c0;-><init>(Lko/d0;Landroid/view/SurfaceView;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 1

    new-instance v0, Lko/y;

    invoke-direct {v0, p0, p1}, Lko/y;-><init>(Lko/d0;Landroid/view/TextureView;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setVipResolution(ZI)V
    .locals 0

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    new-instance v0, Lko/g;

    invoke-direct {v0, p0, p1}, Lko/g;-><init>(Lko/d0;F)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public stop()V
    .locals 1

    new-instance v0, Lko/q;

    invoke-direct {v0, p0}, Lko/q;-><init>(Lko/d0;)V

    invoke-virtual {p0, v0}, Lko/d0;->V(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
