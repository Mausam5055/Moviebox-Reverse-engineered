.class public final Lcom/transsion/player/orplayer/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/orplayer/w$a;,
        Lcom/transsion/player/orplayer/w$b;,
        Lcom/transsion/player/orplayer/w$c;,
        Lcom/transsion/player/orplayer/w$d;
    }
.end annotation


# static fields
.field private static final K:Lcom/transsion/player/orplayer/w$b;


# instance fields
.field private A:J

.field private B:J

.field private C:Z

.field private final D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private E:Landroid/os/Handler;

.field private F:Landroid/view/TextureView;

.field private G:Landroid/view/SurfaceView;

.field private H:Landroid/view/Surface;

.field private final I:Lcom/transsion/player/orplayer/w$g;

.field private final J:Lcom/transsion/player/orplayer/w$h;

.field private final a:Ljava/lang/String;

.field private b:Lcom/aliyun/player/AliPlayer;

.field private c:Lcom/transsion/player/orplayer/c;

.field private d:Lcom/transsion/player/orplayer/f;

.field private e:Lcom/transsion/player/orplayer/e;

.field private f:Ljava/lang/String;

.field private g:Lao/e;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Double;

.field private n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private o:Landroid/content/Context;

.field private p:J

.field private q:I

.field private r:I

.field private s:J

.field private final t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private final z:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/player/orplayer/w$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/player/orplayer/w$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/player/orplayer/w;->K:Lcom/transsion/player/orplayer/w$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbo/d;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ORPlayerImpl"

    iput-object v0, p0, Lcom/transsion/player/orplayer/w;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/player/orplayer/w;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/32 v0, 0xc350

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->s:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->t:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->w:J

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->x:J

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/player/orplayer/w;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->A:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/transsion/player/orplayer/w$g;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/w$g;-><init>(Lcom/transsion/player/orplayer/w;)V

    iput-object v0, p0, Lcom/transsion/player/orplayer/w;->I:Lcom/transsion/player/orplayer/w$g;

    new-instance v0, Lcom/transsion/player/orplayer/w$h;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/w$h;-><init>(Lcom/transsion/player/orplayer/w;)V

    iput-object v0, p0, Lcom/transsion/player/orplayer/w;->J:Lcom/transsion/player/orplayer/w$h;

    iput-object p1, p0, Lcom/transsion/player/orplayer/w;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/aliyun/player/AliPlayerFactory;->createAliPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliPlayer;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lbo/d;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setTraceId(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lbo/d;->e()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-interface {p1, v1}, Lcom/aliyun/player/IPlayer;->enableHardwareDecoder(Z)V

    iput-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lbo/d;->i()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->N()V

    :goto_2
    if-nez p2, :cond_3

    sget-object p1, Lbo/b;->a:Lbo/b;

    invoke-virtual {p1}, Lbo/b;->a()Lbo/d;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, p2

    :goto_3
    invoke-virtual {p0, p1}, Lcom/transsion/player/orplayer/w;->setPlayerConfig(Lbo/d;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lbo/d;->j()Z

    move-result v0

    :cond_4
    invoke-direct {p0, v0}, Lcom/transsion/player/orplayer/w;->P(Z)V

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic B(Lcom/transsion/player/orplayer/w;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/w;->a0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic C(Lcom/transsion/player/orplayer/w;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/w;->c0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic D(Lcom/transsion/player/orplayer/w;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/player/orplayer/w;->i:Z

    return-void
.end method

.method public static final synthetic E(Lcom/transsion/player/orplayer/w;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/orplayer/w;->H:Landroid/view/Surface;

    return-void
.end method

.method private final F()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->G:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->I:Lcom/transsion/player/orplayer/w$g;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/player/orplayer/w;->G:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->F:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/player/orplayer/w;->J:Lcom/transsion/player/orplayer/w$h;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_2
    iput-object v0, p0, Lcom/transsion/player/orplayer/w;->F:Landroid/view/TextureView;

    return-void
.end method

.method private static final G(Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->I()V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->F()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final H(J)V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->A:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->A:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lcom/transsion/player/orplayer/w$c;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/transsion/player/orplayer/w$c;-><init>(JJ)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/transsion/player/orplayer/w;->A:J

    return-void
.end method

.method private final I()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->H:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v1, p0, Lcom/transsion/player/orplayer/w;->H:Landroid/view/Surface;

    return-void
.end method

.method private final K()J
    .locals 3

    iget v0, p0, Lcom/transsion/player/orplayer/w;->q:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    iget v2, p0, Lcom/transsion/player/orplayer/w;->r:I

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xc3500

    :goto_0
    return-wide v0
.end method

.method private final L(Lcom/transsion/player/orplayer/PlayError;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v2, 0x20040001

    if-eq v0, v2, :cond_2

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x20040002

    if-eq p1, v0, :cond_2

    :goto_1
    return v1

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/player/orplayer/w;->C:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    sget-object p1, Loo/e;->a:Loo/e;

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->a:Ljava/lang/String;

    const-string v3, "aliyun \u5df2\u7ecf\u5207\u8fc7\u8f6f\u89e3\uff0c\u8fd8\u662f\u51fa\u9519\u4e0d\u518d\u5904\u7406"

    invoke-virtual {p1, v2, v3, v0}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_3
    sget-object p1, Loo/e;->a:Loo/e;

    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->a:Ljava/lang/String;

    const-string v2, "aliyun onError -- \u89e3\u7801\u5931\u8d25\uff0c\u5f3a\u5236\u5207\u5230\u8f6f\u89e3"

    invoke-virtual {p1, v1, v2, v0}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {p1, v1}, Lcom/transsion/player/orplayer/f;->onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    iput-boolean v0, p0, Lcom/transsion/player/orplayer/w;->C:Z

    new-instance v1, Lcom/transsion/player/orplayer/m;

    invoke-direct {v1, p0, p1}, Lcom/transsion/player/orplayer/m;-><init>(Lcom/transsion/player/orplayer/w;Lao/e;)V

    invoke-direct {p0, v1}, Lcom/transsion/player/orplayer/w;->a0(Lkotlin/jvm/functions/Function0;)V

    return v0
.end method

.method private static final M(Lcom/transsion/player/orplayer/w;Lao/e;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/player/orplayer/w;->stop()V

    invoke-virtual {p0}, Lcom/transsion/player/orplayer/w;->reset()V

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->enableHardwareDecoder(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/player/orplayer/w;->setDataSource(Lao/e;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/player/orplayer/w;->C:Z

    invoke-virtual {p0}, Lcom/transsion/player/orplayer/w;->prepare()V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final N()V
    .locals 3

    new-instance v0, Lcom/transsion/player/orplayer/w$e;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/w$e;-><init>(Lcom/transsion/player/orplayer/w;)V

    new-instance v1, Lcom/transsion/player/orplayer/c;

    new-instance v2, Lcom/transsion/player/orplayer/h;

    invoke-direct {v2, p0}, Lcom/transsion/player/orplayer/h;-><init>(Lcom/transsion/player/orplayer/w;)V

    invoke-direct {v1, v0, v2}, Lcom/transsion/player/orplayer/c;-><init>(Lcom/transsion/player/orplayer/d;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/transsion/player/orplayer/w;->c:Lcom/transsion/player/orplayer/c;

    return-void
.end method

.method private static final O(Lcom/transsion/player/orplayer/w;Z)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onFocusChange(Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/orplayer/f;

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/f;->onFocusChange(Z)V

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final P(Z)V
    .locals 2

    sget-object v0, Lbo/b;->a:Lbo/b;

    invoke-virtual {v0}, Lbo/b;->a()Lbo/d;

    move-result-object v1

    invoke-virtual {v0}, Lbo/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/transsion/player/orplayer/w;->g0(Lbo/d;Z)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/transsion/player/orplayer/p;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/p;-><init>(Lcom/transsion/player/orplayer/w;)V

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/transsion/player/orplayer/q;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/q;-><init>(Lcom/transsion/player/orplayer/w;)V

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/transsion/player/orplayer/r;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/r;-><init>(Lcom/transsion/player/orplayer/w;)V

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/transsion/player/orplayer/w$f;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/w$f;-><init>(Lcom/transsion/player/orplayer/w;)V

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/transsion/player/orplayer/s;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/s;-><init>(Lcom/transsion/player/orplayer/w;)V

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/transsion/player/orplayer/t;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/t;-><init>(Lcom/transsion/player/orplayer/w;)V

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_7

    new-instance v0, Lcom/transsion/player/orplayer/u;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/u;-><init>(Lcom/transsion/player/orplayer/w;)V

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_8

    new-instance v0, Lcom/transsion/player/orplayer/v;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/v;-><init>(Lcom/transsion/player/orplayer/w;)V

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V

    :cond_8
    return-void
.end method

.method private static final Q(Lcom/transsion/player/orplayer/w;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getCode()Lcom/aliyun/player/bean/ErrorCode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getMsg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",msg:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/transsion/player/orplayer/PlayError;

    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getCode()Lcom/aliyun/player/bean/ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/player/orplayer/PlayError;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/player/orplayer/w;->L(Lcom/transsion/player/orplayer/PlayError;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v1, v0, v2}, Lcom/transsion/player/orplayer/f;->onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/orplayer/f;

    iget-object v3, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v2, v0, v3}, Lcom/transsion/player/orplayer/f;->onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/aliyun/player/bean/ErrorInfo;->getCode()Lcom/aliyun/player/bean/ErrorCode;

    move-result-object p1

    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_DECODE_AUDIO:Lcom/aliyun/player/bean/ErrorCode;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/player/orplayer/w;->prepare()V

    invoke-virtual {p0}, Lcom/transsion/player/orplayer/w;->play()V

    :cond_4
    return-void
.end method

.method private static final R(Lcom/transsion/player/orplayer/w;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/player/orplayer/w;->l:Z

    iget-boolean v1, p0, Lcom/transsion/player/orplayer/w;->C:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/transsion/player/orplayer/w;->p:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    sget-object v1, Loo/e;->a:Loo/e;

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->a:Ljava/lang/String;

    const-string v3, "aliyun onPrepare \u5185\u90e8\u7684\u89e3\u7801\u5207\u6362\uff0c\u5df2\u6709\u64ad\u653e\u8fdb\u5ea6\uff0c\u76f4\u63a5\u64ad\u653e"

    invoke-virtual {v1, v2, v3, v0}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->p:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/player/orplayer/w;->seekTo(J)V

    invoke-virtual {p0}, Lcom/transsion/player/orplayer/w;->play()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->onPrepare(Lao/e;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->onPrepare(Lao/e;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static final S(Lcom/transsion/player/orplayer/w;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getExtraValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v2

    sget-object v3, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    if-ne v2, v3, :cond_2

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->p:J

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->B:J

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->e0()V

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v2, v0, v1, v3}, Lcom/transsion/player/orplayer/f;->onProgress(JLao/e;)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/orplayer/f;

    iget-object v4, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v3, v0, v1, v4}, Lcom/transsion/player/orplayer/f;->onProgress(JLao/e;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v2

    sget-object v3, Lcom/aliyun/player/bean/InfoCode;->LoopingStart:Lcom/aliyun/player/bean/InfoCode;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/transsion/player/orplayer/f;->onLoopingStart()V

    :cond_3
    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/orplayer/f;

    invoke-interface {v3}, Lcom/transsion/player/orplayer/f;->onLoopingStart()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object v2

    sget-object v3, Lcom/aliyun/player/bean/InfoCode;->BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

    if-ne v2, v3, :cond_6

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->u:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/player/orplayer/w;->v:J

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v2, v0, v1, v3}, Lcom/transsion/player/orplayer/f;->onBufferedPosition(JLao/e;)V

    :cond_5
    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/orplayer/f;

    iget-object v4, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v3, v0, v1, v4}, Lcom/transsion/player/orplayer/f;->onBufferedPosition(JLao/e;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/aliyun/player/bean/InfoBean;->getCode()Lcom/aliyun/player/bean/InfoCode;

    move-result-object p1

    sget-object v0, Lcom/aliyun/player/bean/InfoCode;->SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

    if-ne p1, v0, :cond_7

    sget-object p1, Loo/e;->a:Loo/e;

    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->a:Ljava/lang/String;

    const-string v0, "aliyun \u786c\u89e3\u5931\u8d25\uff0c\u81ea\u52a8\u5207\u6362\u5230\u8f6f\u4ef6"

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Loo/e;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method private static final T(Lcom/transsion/player/orplayer/w;I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnStateChangedListener status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/transsion/player/orplayer/w;->h:Z

    iget-object v4, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v4, :cond_2

    invoke-interface {v4, v3}, Lcom/transsion/player/orplayer/f;->onIsPlayingChanged(Z)V

    :cond_2
    iget-object v3, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/player/orplayer/f;

    iget-boolean v5, p0, Lcom/transsion/player/orplayer/w;->h:Z

    invoke-interface {v4, v5}, Lcom/transsion/player/orplayer/f;->onIsPlayingChanged(Z)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x6

    if-ne p1, v3, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/transsion/player/orplayer/w;->k:Z

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/transsion/player/orplayer/w;->h:Z

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->f(Z)V

    :cond_5
    if-eq p1, v2, :cond_c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    if-eq p1, v3, :cond_7

    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->p:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/player/orplayer/w;->H(J)V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->e0()V

    goto/16 :goto_5

    :cond_7
    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->p:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/player/orplayer/w;->H(J)V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->e0()V

    const-string p1, "completion"

    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/w;->Y(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/orplayer/f;

    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    goto :goto_2

    :cond_9
    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->p:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/player/orplayer/w;->H(J)V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->e0()V

    const-string p1, "stopped"

    invoke-direct {p0, p1}, Lcom/transsion/player/orplayer/w;->Y(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->p:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/player/orplayer/w;->H(J)V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->e0()V

    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->onVideoPause(Lao/e;)V

    :cond_b
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/orplayer/f;

    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->onVideoPause(Lao/e;)V

    goto :goto_3

    :cond_c
    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->p:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/player/orplayer/w;->k0(J)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->onVideoStart(Lao/e;)V

    :cond_d
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/orplayer/f;

    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->onVideoStart(Lao/e;)V

    goto :goto_4

    :cond_e
    :goto_5
    return-void
.end method

.method private static final U(Lcom/transsion/player/orplayer/w;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->setOnSeekCompleteListener()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/orplayer/f;

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->setOnSeekCompleteListener()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final V(Lcom/transsion/player/orplayer/w;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getMediaInfo()Lcom/aliyun/player/nativeclass/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/MediaInfo;->getTrackInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/player/nativeclass/TrackInfo;

    sget-object v2, Loo/e;->a:Loo/e;

    iget-object v3, p0, Lcom/transsion/player/orplayer/w;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOnInfoListener onRenderFirstFrame "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Loo/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/aliyun/player/nativeclass/TrackInfo;->mType:Lcom/aliyun/player/nativeclass/TrackInfo$Type;

    if-nez v2, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/transsion/player/orplayer/w$d;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_1
    if-eq v2, v5, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget v1, v1, Lcom/aliyun/player/nativeclass/TrackInfo;->videoBitrate:I

    iput v1, p0, Lcom/transsion/player/orplayer/w;->r:I

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v2, :cond_4

    invoke-interface {v2, v1}, Lcom/transsion/player/orplayer/f;->onTracksAudioBitrateChange(I)V

    :cond_4
    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/orplayer/f;

    iget v3, p0, Lcom/transsion/player/orplayer/w;->r:I

    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/f;->onTracksAudioBitrateChange(I)V

    goto :goto_2

    :cond_5
    iget v1, v1, Lcom/aliyun/player/nativeclass/TrackInfo;->videoBitrate:I

    iput v1, p0, Lcom/transsion/player/orplayer/w;->q:I

    iget-object v2, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v2, :cond_6

    invoke-interface {v2, v1}, Lcom/transsion/player/orplayer/f;->onTracksVideoBitrateChange(I)V

    :cond_6
    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/orplayer/f;

    iget v3, p0, Lcom/transsion/player/orplayer/w;->q:I

    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/f;->onTracksVideoBitrateChange(I)V

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/transsion/player/orplayer/w;->q:I

    iget v1, p0, Lcom/transsion/player/orplayer/w;->r:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnInfoListener onRenderFirstFrame\uff0cvideoBitrate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", audioBitrate:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->onRenderFirstFrame()V

    :cond_8
    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/orplayer/f;

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->onRenderFirstFrame()V

    goto :goto_4

    :cond_9
    return-void
.end method

.method private static final W(Lcom/transsion/player/orplayer/w;II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/f;->onVideoSizeChanged(II)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/orplayer/f;

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/f;->onVideoSizeChanged(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final X()V
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/transsion/player/orplayer/w;->p:J

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v3

    iget-wide v7, v0, Lcom/transsion/player/orplayer/w;->v:J

    sub-long/2addr v1, v7

    const-wide/16 v7, 0x7d0

    cmp-long v1, v1, v7

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-gtz v1, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-wide v8, v0, Lcom/transsion/player/orplayer/w;->u:J

    invoke-static {v8, v9, v3, v4}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v3

    :goto_1
    sub-long v10, v8, v3

    invoke-static {v10, v11, v5, v6}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v5

    long-to-double v10, v5

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    iget-wide v12, v0, Lcom/transsion/player/orplayer/w;->s:J

    long-to-double v12, v12

    div-double v14, v10, v12

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    invoke-static/range {v14 .. v19}, Lkotlin/ranges/RangesKt;->k(DDD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iput-object v12, v0, Lcom/transsion/player/orplayer/w;->m:Ljava/lang/Double;

    iget-wide v12, v0, Lcom/transsion/player/orplayer/w;->s:J

    iget-wide v14, v0, Lcom/transsion/player/orplayer/w;->t:J

    sub-long/2addr v12, v14

    cmp-long v12, v5, v12

    if-ltz v12, :cond_2

    move v12, v7

    goto :goto_2

    :cond_2
    move v12, v2

    :goto_2
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v10, v11, v2

    invoke-static {v11, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v7, "%.1f"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "format(...)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aliyun-buffer-pool scene=release, current="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", bufferedPosition="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", bufferedMs="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", poolPercent="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isPoolFull="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bufferedFresh="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final Y(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/transsion/player/orplayer/w;->J()Lcom/transsion/player/orplayer/w$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/player/orplayer/w$a;->c()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.4f"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {v1}, Lcom/transsion/player/orplayer/w$a;->b()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/transsion/player/orplayer/w$a;->a()J

    move-result-wide v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aliyun-bw scene="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", downloadBytes="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", consumedEstimated="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", redundancyRate="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final Z()V
    .locals 5

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->w:J

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->x:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/transsion/player/orplayer/w;->y:J

    iget-object v4, p0, Lcom/transsion/player/orplayer/w;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->A:J

    iput-wide v2, p0, Lcom/transsion/player/orplayer/w;->B:J

    return-void
.end method

.method private final a0(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->E:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/player/orplayer/k;

    invoke-direct {v1, p1}, Lcom/transsion/player/orplayer/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private static final b0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/w;->j0(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final c0(Lkotlin/jvm/functions/Function0;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->E:Landroid/os/Handler;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/transsion/player/orplayer/l;

    invoke-direct {v3, p1, v1}, Lcom/transsion/player/orplayer/l;-><init>(Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Loo/e;->a:Loo/e;

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->a:Ljava/lang/String;

    const-string v1, "Surface detach post failed"

    invoke-virtual {p1, v0, v1, v2}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Loo/e;->a:Loo/e;

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->a:Ljava/lang/String;

    const-string v1, "Surface detach timeout"

    invoke-virtual {p1, v0, v1, v2}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    sget-object p1, Loo/e;->a:Loo/e;

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->a:Ljava/lang/String;

    const-string v1, "Surface detach interrupted"

    invoke-virtual {p1, v0, v1, v2}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic d(Lcom/transsion/player/orplayer/w;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w;->O(Lcom/transsion/player/orplayer/w;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d0(Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p0
.end method

.method public static synthetic e(Lcom/transsion/player/orplayer/w;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/w;->R(Lcom/transsion/player/orplayer/w;)V

    return-void
.end method

.method private final e0()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/transsion/player/orplayer/w;->w:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->w:J

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->x:J

    return-void

    :cond_1
    iget-wide v4, p0, Lcom/transsion/player/orplayer/w;->x:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/transsion/player/orplayer/w;->y:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/player/orplayer/w;->y:J

    :cond_2
    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->x:J

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic f(Lcom/transsion/player/orplayer/w;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/w;->W(Lcom/transsion/player/orplayer/w;II)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/w;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final g0(Lbo/d;Z)V
    .locals 4

    new-instance v0, Lcom/aliyun/player/nativeclass/CacheConfig;

    invoke-direct {v0}, Lcom/aliyun/player/nativeclass/CacheConfig;-><init>()V

    iput-boolean p2, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mEnable:Z

    const-wide/16 v1, 0x78

    iput-wide v1, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mMaxDurationS:J

    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "video_cache"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mDir:Ljava/lang/String;

    invoke-virtual {p1}, Lbo/d;->a()I

    move-result p1

    iput p1, v0, Lcom/aliyun/player/nativeclass/CacheConfig;->mMaxSizeMB:I

    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setCacheConfig(Lcom/aliyun/player/nativeclass/CacheConfig;)V

    :cond_1
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 p1, 0x0

    invoke-static {p2, p1, v1}, Lcom/aliyun/player/AliPlayerGlobalSettings;->enableLocalCache(ZILjava/lang/String;)V

    new-instance p1, Lcom/transsion/player/orplayer/j;

    invoke-direct {p1}, Lcom/transsion/player/orplayer/j;-><init>()V

    invoke-static {p1}, Lcom/aliyun/player/AliPlayerGlobalSettings;->setCacheUrlHashCallback(Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static synthetic h(Lcom/transsion/player/orplayer/w;Lao/e;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w;->M(Lcom/transsion/player/orplayer/w;Lao/e;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final h0(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sget-object v1, Loo/d;->a:Loo/d$a;

    new-instance v8, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Loo/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Loo/d;->a:Loo/d$a;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Loo/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/player/orplayer/w;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w;->Q(Lcom/transsion/player/orplayer/w;Lcom/aliyun/player/bean/ErrorInfo;)V

    return-void
.end method

.method private static final i0(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p1, Lcom/transsion/player/orplayer/w;->G:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_4

    iget-object v0, p1, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p0

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p1, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p0, :cond_3

    invoke-interface {p0, v1}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic j(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w;->i0(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final j0(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p1, Lcom/transsion/player/orplayer/w;->F:Landroid/view/TextureView;

    if-ne p0, v0, :cond_4

    iget-object p0, p1, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Landroid/view/Surface;

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/transsion/player/orplayer/w;->H:Landroid/view/Surface;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object p0, p1, Lcom/transsion/player/orplayer/w;->H:Landroid/view/Surface;

    iget-object p1, p1, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/player/orplayer/w;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/w;->U(Lcom/transsion/player/orplayer/w;)V

    return-void
.end method

.method private final k0(J)V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->A:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {p1, p2, v2, v3}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/player/orplayer/w;->A:J

    :cond_0
    return-void
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w;->d0(Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private final l0(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    instance-of v0, p1, Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    check-cast p1, Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    iput-object v0, p0, Lcom/transsion/player/orplayer/w;->E:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic m(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/w;->b0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final m0()J
    .locals 10

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/player/orplayer/w$c;

    invoke-virtual {v5}, Lcom/transsion/player/orplayer/w$c;->a()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/transsion/player/orplayer/w$c;->b()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7, v1, v2}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/transsion/player/orplayer/w;->A:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->B:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_1

    sub-long/2addr v0, v5

    add-long/2addr v3, v0

    :cond_1
    return-wide v3
.end method

.method public static synthetic n(Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/w;->G(Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/player/orplayer/w;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w;->T(Lcom/transsion/player/orplayer/w;I)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/player/orplayer/w;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/w;->V(Lcom/transsion/player/orplayer/w;)V

    return-void
.end method

.method public static synthetic q(Lcom/transsion/player/orplayer/w;Lcom/aliyun/player/bean/InfoBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w;->S(Lcom/transsion/player/orplayer/w;Lcom/aliyun/player/bean/InfoBean;)V

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/player/orplayer/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->I()V

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic u(Lcom/transsion/player/orplayer/w;)Lao/e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    return-object p0
.end method

.method public static final synthetic v(Lcom/transsion/player/orplayer/w;)Lcom/transsion/player/orplayer/f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    return-object p0
.end method

.method public static final synthetic w(Lcom/transsion/player/orplayer/w;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->G:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static final synthetic x(Lcom/transsion/player/orplayer/w;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic y(Lcom/transsion/player/orplayer/w;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->H:Landroid/view/Surface;

    return-object p0
.end method

.method public static final synthetic z(Lcom/transsion/player/orplayer/w;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/orplayer/w;->F:Landroid/view/TextureView;

    return-object p0
.end method


# virtual methods
.method public final J()Lcom/transsion/player/orplayer/w$a;
    .locals 8

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->m0()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->K()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-long v5, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->y:J

    sub-long v2, v0, v5

    long-to-double v2, v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_1
    move-object v7, v0

    new-instance v0, Lcom/transsion/player/orplayer/w$a;

    iget-wide v3, p0, Lcom/transsion/player/orplayer/w;->y:J

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/player/orplayer/w$a;-><init>(JJLjava/lang/Double;)V

    return-object v0
.end method

.method public addDataSource(Lao/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/g$b;->a(Lcom/transsion/player/orplayer/g;Lao/e;)Z

    move-result p1

    return p1
.end method

.method public addPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public changeTrackSelection(Lmo/d;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/g$b;->c(Lcom/transsion/player/orplayer/g;Lmo/d;I)V

    return-void
.end method

.method public clearScreen()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->clearScreen()V

    :cond_0
    return-void
.end method

.method public clearSurfaceOnly()V
    .locals 1

    new-instance v0, Lcom/transsion/player/orplayer/o;

    invoke-direct {v0, p0}, Lcom/transsion/player/orplayer/o;-><init>(Lcom/transsion/player/orplayer/w;)V

    invoke-direct {p0, v0}, Lcom/transsion/player/orplayer/w;->a0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public currentMediaSource()Lao/e;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    return-object v0
.end method

.method public enableHardwareDecoder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->enableHardwareDecoder(Z)V

    :cond_0
    return-void
.end method

.method public final f0(Lcom/transsion/player/orplayer/e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/orplayer/w;->e:Lcom/transsion/player/orplayer/e;

    return-void
.end method

.method public getBitrate()Lkotlin/Pair;
    .locals 3

    new-instance v0, Lkotlin/Pair;

    iget v1, p0, Lcom/transsion/player/orplayer/w;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/transsion/player/orplayer/w;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->p:J

    return-wide v0
.end method

.method public getCurrentTracks()Lmo/c;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->h(Lcom/transsion/player/orplayer/g;)Lmo/c;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVideoFormat()Lmo/b;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->i(Lcom/transsion/player/orplayer/g;)Lmo/b;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadBitrate()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/aliyun/player/IPlayer$Option;->DownloadBitrate:Lcom/aliyun/player/IPlayer$Option;

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->getOption(Lcom/aliyun/player/IPlayer$Option;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVideoHeight()I

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

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVideoWidth()I

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

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getVolume()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/player/orplayer/w;->k:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/player/orplayer/w;->i:Z

    return v0
.end method

.method public isMute()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->isMute()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/player/orplayer/w;->h:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/player/orplayer/w;->l:Z

    return v0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_2
    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->initPlayer()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->start()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->e()V

    :cond_4
    return-void
.end method

.method public prepare()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->prepare()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/player/orplayer/w;->j:Z

    return-void
.end method

.method public release()V
    .locals 13

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    iget-object v5, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-wide v5, p0, Lcom/transsion/player/orplayer/w;->B:J

    iget-wide v7, p0, Lcom/transsion/player/orplayer/w;->p:J

    invoke-static {v5, v6, v7, v8}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/transsion/player/orplayer/w;->p:J

    iput-wide v5, p0, Lcom/transsion/player/orplayer/w;->B:J

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->X()V

    invoke-virtual {p0}, Lcom/transsion/player/orplayer/w;->J()Lcom/transsion/player/orplayer/w$a;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/player/orplayer/w;->e:Lcom/transsion/player/orplayer/e;

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/transsion/player/orplayer/w$a;->c()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5}, Lcom/transsion/player/orplayer/w$a;->b()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/transsion/player/orplayer/w$a;->a()J

    move-result-wide v10

    iget-object v12, p0, Lcom/transsion/player/orplayer/w;->m:Ljava/lang/Double;

    invoke-interface/range {v6 .. v12}, Lcom/transsion/player/orplayer/e;->a(Ljava/lang/Double;JJLjava/lang/Double;)V

    :cond_1
    const-string v5, ""

    iput-object v5, p0, Lcom/transsion/player/orplayer/w;->f:Ljava/lang/String;

    iget-wide v5, p0, Lcom/transsion/player/orplayer/w;->p:J

    invoke-direct {p0, v5, v6}, Lcom/transsion/player/orplayer/w;->H(J)V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->e0()V

    const-string v5, "release"

    invoke-direct {p0, v5}, Lcom/transsion/player/orplayer/w;->Y(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->F()V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->I()V

    iget-object v5, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v5, :cond_2

    invoke-interface {v5, v4}, Lcom/aliyun/player/IPlayer;->setOnRenderingStartListener(Lcom/aliyun/player/IPlayer$OnRenderingStartListener;)V

    :cond_2
    iget-object v5, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Lcom/aliyun/player/IPlayer;->setOnVideoSizeChangedListener(Lcom/aliyun/player/IPlayer$OnVideoSizeChangedListener;)V

    :cond_3
    iget-object v5, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v5, :cond_4

    invoke-interface {v5, v4}, Lcom/aliyun/player/IPlayer;->setOnErrorListener(Lcom/aliyun/player/IPlayer$OnErrorListener;)V

    :cond_4
    iget-object v5, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v5, :cond_5

    invoke-interface {v5, v4}, Lcom/aliyun/player/IPlayer;->setOnLoadingStatusListener(Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;)V

    :cond_5
    iget-object v5, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v5, :cond_6

    invoke-interface {v5, v4}, Lcom/aliyun/player/IPlayer;->setOnPreparedListener(Lcom/aliyun/player/IPlayer$OnPreparedListener;)V

    :cond_6
    iget-object v5, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v5, :cond_7

    invoke-interface {v5, v4}, Lcom/aliyun/player/IPlayer;->setOnInfoListener(Lcom/aliyun/player/IPlayer$OnInfoListener;)V

    :cond_7
    iget-object v5, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v5, :cond_8

    invoke-interface {v5, v4}, Lcom/aliyun/player/IPlayer;->setOnStateChangedListener(Lcom/aliyun/player/IPlayer$OnStateChangedListener;)V

    :cond_8
    iget-object v5, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v5, :cond_9

    invoke-interface {v5, v4}, Lcom/aliyun/player/IPlayer;->setOnSeekCompleteListener(Lcom/aliyun/player/IPlayer$OnSeekCompleteListener;)V

    :cond_9
    iget-object v5, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v5, :cond_a

    invoke-interface {v5}, Lcom/aliyun/player/IPlayer;->release()V

    :cond_a
    iput-object v4, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_b

    invoke-static {v0, v4, v2, v4}, Lcom/transsion/player/orplayer/f$a;->u(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/player/orplayer/f;

    invoke-static {v3, v4, v2, v4}, Lcom/transsion/player/orplayer/f$a;->u(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_d
    iput-boolean v1, p0, Lcom/transsion/player/orplayer/w;->l:Z

    iput-boolean v1, p0, Lcom/transsion/player/orplayer/w;->C:Z

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

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestForce()Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/orplayer/g$b;->r(Lcom/transsion/player/orplayer/g;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->clearScreen()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/w;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->onPlayerReset()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onPlayerReset()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/player/orplayer/w;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/player/orplayer/w;->l:Z

    iput-boolean v0, p0, Lcom/transsion/player/orplayer/w;->C:Z

    return-void
.end method

.method public seekTo(J)V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/player/orplayer/w;->p:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/player/orplayer/w;->H(J)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    const v1, 0x249f0

    invoke-interface {v0, v1}, Lcom/aliyun/player/IPlayer;->setMaxAccurateSeekDelta(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/aliyun/player/IPlayer$SeekMode;->Accurate:Lcom/aliyun/player/IPlayer$SeekMode;

    invoke-interface {v0, p1, p2, v1}, Lcom/aliyun/player/IPlayer;->seekTo(JLcom/aliyun/player/IPlayer$SeekMode;)V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/player/orplayer/w;->h:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/transsion/player/orplayer/w;->k0(J)V

    :cond_2
    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/g$b;->s(Lcom/transsion/player/orplayer/g;Ljava/lang/String;J)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    return-void
.end method

.method public setDataSource(Lao/e;)V
    .locals 2

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->Z()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->u:J

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->v:J

    new-instance v0, Lcom/aliyun/player/source/UrlSource;

    invoke-direct {v0}, Lcom/aliyun/player/source/UrlSource;-><init>()V

    invoke-virtual {p1}, Lao/e;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/player/orplayer/w;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/player/orplayer/w;->g:Lao/e;

    invoke-virtual {v0, v1}, Lcom/aliyun/player/source/UrlSource;->setUri(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->onSetDataSource()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->onSetDataSource()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/aliyun/player/UrlPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/player/orplayer/w;->l:Z

    iput-boolean p1, p0, Lcom/transsion/player/orplayer/w;->C:Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setLoop(Z)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setPlayerConfig(Lbo/d;)V
    .locals 5

    const-string v0, "vodConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->getConfig()Lcom/aliyun/player/nativeclass/PlayerConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "null cannot be cast to non-null type com.aliyun.player.nativeclass.PlayerConfig"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbo/d;->b()Z

    move-result v1

    iput-boolean v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mClearFrameWhenStop:Z

    invoke-virtual {p1}, Lbo/d;->j()Z

    move-result v1

    iput-boolean v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mEnableLocalCache:Z

    invoke-virtual {p1}, Lbo/d;->k()I

    move-result v1

    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mPositionTimerIntervalMs:I

    invoke-virtual {p1}, Lbo/d;->g()I

    move-result v1

    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxBufferDuration:I

    invoke-virtual {p1}, Lbo/d;->f()I

    move-result v1

    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mHighBufferDuration:I

    invoke-virtual {p1}, Lbo/d;->n()I

    move-result v1

    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mStartBufferDuration:I

    invoke-virtual {p1}, Lbo/d;->m()I

    move-result v1

    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkRetryCount:I

    invoke-virtual {p1}, Lbo/d;->h()I

    move-result v1

    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkTimeout:I

    invoke-virtual {p1}, Lbo/d;->c()Z

    move-result v1

    iput-boolean v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mDisableAudio:Z

    invoke-virtual {p1}, Lbo/d;->d()Z

    move-result v1

    iput-boolean v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mDisableVideo:Z

    invoke-virtual {p1}, Lbo/d;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aliplayer config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_1

    iput v1, v0, Lcom/aliyun/player/nativeclass/PlayerConfig;->mMaxBufferDuration:I

    :cond_1
    iget-object v1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/aliyun/player/IPlayer;->setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V

    :cond_2
    invoke-virtual {p1}, Lbo/d;->g()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/player/orplayer/w;->s:J

    return-void
.end method

.method public setPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/orplayer/w;->d:Lcom/transsion/player/orplayer/f;

    return-void
.end method

.method public setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V
    .locals 1

    const-string v0, "scaleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/player/orplayer/w$d;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_TO_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FILL:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-interface {p1, v0}, Lcom/aliyun/player/IPlayer;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->I()V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->F()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/w;->G:Landroid/view/SurfaceView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/player/orplayer/w;->l0(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->I:Lcom/transsion/player/orplayer/w$g;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Lcom/transsion/player/orplayer/n;

    invoke-direct {v0, p1, p0}, Lcom/transsion/player/orplayer/n;-><init>(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)V

    invoke-direct {p0, v0}, Lcom/transsion/player/orplayer/w;->a0(Lkotlin/jvm/functions/Function0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->I()V

    invoke-direct {p0}, Lcom/transsion/player/orplayer/w;->F()V

    iput-object p1, p0, Lcom/transsion/player/orplayer/w;->F:Landroid/view/TextureView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/player/orplayer/w;->l0(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->J:Lcom/transsion/player/orplayer/w$h;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v1, Lcom/transsion/player/orplayer/i;

    invoke-direct {v1, p1, p0, v0}, Lcom/transsion/player/orplayer/i;-><init>(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v1}, Lcom/transsion/player/orplayer/w;->a0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setVipResolution(ZI)V
    .locals 0

    return-void
.end method

.method public setVolume(F)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume   volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->l(FFF)F

    move-result p1

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/player/orplayer/w;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/player/orplayer/c;->g(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->b:Lcom/aliyun/player/AliPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/w;->c:Lcom/transsion/player/orplayer/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/c;->b()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/player/orplayer/w;->C:Z

    return-void
.end method
