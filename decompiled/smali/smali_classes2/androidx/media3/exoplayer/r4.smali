.class public final synthetic Landroidx/media3/exoplayer/r4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/s4;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/s4;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/r4;->a:Landroidx/media3/exoplayer/s4;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/r4;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r4;->a:Landroidx/media3/exoplayer/s4;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/r4;->b:Z

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/s4;->b(Landroidx/media3/exoplayer/s4;Z)V

    return-void
.end method
