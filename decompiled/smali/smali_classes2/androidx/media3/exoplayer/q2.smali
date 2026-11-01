.class public final synthetic Landroidx/media3/exoplayer/q2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/r2;

.field public final synthetic b:Landroidx/media3/exoplayer/t3;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/r2;Landroidx/media3/exoplayer/t3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/q2;->a:Landroidx/media3/exoplayer/r2;

    iput-object p2, p0, Landroidx/media3/exoplayer/q2;->b:Landroidx/media3/exoplayer/t3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/q2;->a:Landroidx/media3/exoplayer/r2;

    iget-object v1, p0, Landroidx/media3/exoplayer/q2;->b:Landroidx/media3/exoplayer/t3;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/r2;->i(Landroidx/media3/exoplayer/r2;Landroidx/media3/exoplayer/t3;)V

    return-void
.end method
