.class public final Lcom/transsion/player/orplayer/w$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/orplayer/w;-><init>(Landroid/content/Context;Lbo/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/orplayer/w;


# direct methods
.method constructor <init>(Lcom/transsion/player/orplayer/w;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/orplayer/w$g;->a:Lcom/transsion/player/orplayer/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w$g;->e(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w$g;->f(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w$g;->d(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 1

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->w(Lcom/transsion/player/orplayer/w;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->A(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/aliyun/player/IPlayer;->surfaceChanged()V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final e(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 2

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->w(Lcom/transsion/player/orplayer/w;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_4

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->A(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

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

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;

    move-result-object p0

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

.method private static final f(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 2

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->w(Lcom/transsion/player/orplayer/w;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->A(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, v1}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/player/orplayer/w$g;->a:Lcom/transsion/player/orplayer/w;

    new-instance p3, Lcom/transsion/player/orplayer/z;

    invoke-direct {p3, p1, p2}, Lcom/transsion/player/orplayer/z;-><init>(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)V

    invoke-static {p2, p3}, Lcom/transsion/player/orplayer/w;->B(Lcom/transsion/player/orplayer/w;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$g;->a:Lcom/transsion/player/orplayer/w;

    new-instance v1, Lcom/transsion/player/orplayer/x;

    invoke-direct {v1, p1, v0}, Lcom/transsion/player/orplayer/x;-><init>(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)V

    invoke-static {v0, v1}, Lcom/transsion/player/orplayer/w;->B(Lcom/transsion/player/orplayer/w;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$g;->a:Lcom/transsion/player/orplayer/w;

    new-instance v1, Lcom/transsion/player/orplayer/y;

    invoke-direct {v1, p1, v0}, Lcom/transsion/player/orplayer/y;-><init>(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/w;)V

    invoke-static {v0, v1}, Lcom/transsion/player/orplayer/w;->C(Lcom/transsion/player/orplayer/w;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
