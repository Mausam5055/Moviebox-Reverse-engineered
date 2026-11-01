.class public final Lcom/transsion/postdetail/shorttv/factory/j;
.super Ljava/lang/Object;

# interfaces
.implements Lqs/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 2

    const-string v0, "refer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/room/api/IFloatingApi;->g(Ljava/lang/ref/WeakReference;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/room/api/IFloatingApi;->b()V

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/baseui/music/MusicFloatManager;->i(Landroid/app/Activity;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public d()V
    .locals 2

    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/baseui/music/MusicFloatManager;->B(Lcom/transsion/player/mediasession/MediaItem;)V

    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/h;->p()V

    return-void
.end method

.method public e(Ljava/lang/ref/WeakReference;)V
    .locals 2

    const-string v0, "refer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IFloatingApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/room/api/IFloatingApi;->i(Ljava/lang/ref/WeakReference;)V

    :cond_0
    return-void
.end method
