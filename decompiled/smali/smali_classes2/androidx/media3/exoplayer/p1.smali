.class public final synthetic Landroidx/media3/exoplayer/p1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/b2;

.field public final synthetic b:Landroidx/media3/exoplayer/r2$e;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/r2$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/p1;->a:Landroidx/media3/exoplayer/b2;

    iput-object p2, p0, Landroidx/media3/exoplayer/p1;->b:Landroidx/media3/exoplayer/r2$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/p1;->a:Landroidx/media3/exoplayer/b2;

    iget-object v1, p0, Landroidx/media3/exoplayer/p1;->b:Landroidx/media3/exoplayer/r2$e;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/b2;->F0(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/r2$e;)V

    return-void
.end method
