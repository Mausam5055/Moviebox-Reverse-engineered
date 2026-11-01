.class Landroidx/media3/exoplayer/p$c$b;
.super Landroid/media/MediaRouter2$ControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/p$c;->b(Landroidx/media3/exoplayer/m4$a;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/p$c;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/p$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/p$c$b;->a:Landroidx/media3/exoplayer/p$c;

    invoke-direct {p0}, Landroid/media/MediaRouter2$ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/p$c$b;->a:Landroidx/media3/exoplayer/p$c;

    invoke-static {p1}, Landroidx/media3/exoplayer/p$c;->h(Landroidx/media3/exoplayer/p$c;)Landroidx/media3/common/util/g;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/p$c$b;->a:Landroidx/media3/exoplayer/p$c;

    invoke-static {v0}, Landroidx/media3/exoplayer/p$c;->f(Landroidx/media3/exoplayer/p$c;)Landroid/media/MediaRouter2;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/p$c;->g(Landroid/media/MediaRouter2;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    return-void
.end method
