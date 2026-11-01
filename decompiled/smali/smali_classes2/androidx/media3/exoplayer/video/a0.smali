.class public final synthetic Landroidx/media3/exoplayer/video/a0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/video/i0$a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/a0;->a:Landroidx/media3/exoplayer/video/i0$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/a0;->b:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/a0;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/a0;->a:Landroidx/media3/exoplayer/video/i0$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/a0;->b:Ljava/lang/Object;

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/a0;->c:J

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/video/i0$a;->j(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/Object;J)V

    return-void
.end method
