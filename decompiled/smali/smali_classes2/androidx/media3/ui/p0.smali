.class public final synthetic Landroidx/media3/ui/p0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/ui/PlayerView$f;

.field public final synthetic b:Landroid/view/SurfaceView;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerView$f;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/p0;->a:Landroidx/media3/ui/PlayerView$f;

    iput-object p2, p0, Landroidx/media3/ui/p0;->b:Landroid/view/SurfaceView;

    iput-object p3, p0, Landroidx/media3/ui/p0;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/ui/p0;->a:Landroidx/media3/ui/PlayerView$f;

    iget-object v1, p0, Landroidx/media3/ui/p0;->b:Landroid/view/SurfaceView;

    iget-object v2, p0, Landroidx/media3/ui/p0;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Landroidx/media3/ui/PlayerView$f;->a(Landroidx/media3/ui/PlayerView$f;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    return-void
.end method
