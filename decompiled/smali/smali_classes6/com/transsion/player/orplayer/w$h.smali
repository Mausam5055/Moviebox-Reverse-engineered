.class public final Lcom/transsion/player/orplayer/w$h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

    iput-object p1, p0, Lcom/transsion/player/orplayer/w$h;->a:Lcom/transsion/player/orplayer/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/w$h;->e(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/w$h;->d(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/w$h;->f(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)Lkotlin/Unit;
    .locals 1

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->z(Lcom/transsion/player/orplayer/w;)Landroid/view/TextureView;

    move-result-object v0

    if-ne p0, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    if-ne p0, p2, :cond_3

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->A(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Landroid/view/Surface;

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->r(Lcom/transsion/player/orplayer/w;)V

    invoke-static {p1, p0}, Lcom/transsion/player/orplayer/w;->E(Lcom/transsion/player/orplayer/w;Landroid/view/Surface;)V

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final e(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;)Lkotlin/Unit;
    .locals 1

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->z(Lcom/transsion/player/orplayer/w;)Landroid/view/TextureView;

    move-result-object v0

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->A(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->y(Lcom/transsion/player/orplayer/w;)Landroid/view/Surface;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_2
    invoke-static {p1, v0}, Lcom/transsion/player/orplayer/w;->E(Lcom/transsion/player/orplayer/w;Landroid/view/Surface;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final f(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)Lkotlin/Unit;
    .locals 1

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->z(Lcom/transsion/player/orplayer/w;)Landroid/view/TextureView;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    if-ne p0, p2, :cond_2

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->A(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/aliyun/player/IPlayer;->surfaceChanged()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p2, "surfaceTexture"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/player/orplayer/w$h;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {p2}, Lcom/transsion/player/orplayer/w;->z(Lcom/transsion/player/orplayer/w;)Landroid/view/TextureView;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/player/orplayer/w$h;->a:Lcom/transsion/player/orplayer/w;

    new-instance v0, Lcom/transsion/player/orplayer/b0;

    invoke-direct {v0, p2, p3, p1}, Lcom/transsion/player/orplayer/b0;-><init>(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)V

    invoke-static {p3, v0}, Lcom/transsion/player/orplayer/w;->B(Lcom/transsion/player/orplayer/w;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/player/orplayer/w$h;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {p1}, Lcom/transsion/player/orplayer/w;->z(Lcom/transsion/player/orplayer/w;)Landroid/view/TextureView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$h;->a:Lcom/transsion/player/orplayer/w;

    new-instance v1, Lcom/transsion/player/orplayer/c0;

    invoke-direct {v1, p1, v0}, Lcom/transsion/player/orplayer/c0;-><init>(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;)V

    invoke-static {v0, v1}, Lcom/transsion/player/orplayer/w;->B(Lcom/transsion/player/orplayer/w;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p2, "surfaceTexture"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/player/orplayer/w$h;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {p2}, Lcom/transsion/player/orplayer/w;->z(Lcom/transsion/player/orplayer/w;)Landroid/view/TextureView;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/player/orplayer/w$h;->a:Lcom/transsion/player/orplayer/w;

    new-instance v0, Lcom/transsion/player/orplayer/a0;

    invoke-direct {v0, p2, p3, p1}, Lcom/transsion/player/orplayer/a0;-><init>(Landroid/view/TextureView;Lcom/transsion/player/orplayer/w;Landroid/graphics/SurfaceTexture;)V

    invoke-static {p3, v0}, Lcom/transsion/player/orplayer/w;->B(Lcom/transsion/player/orplayer/w;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
