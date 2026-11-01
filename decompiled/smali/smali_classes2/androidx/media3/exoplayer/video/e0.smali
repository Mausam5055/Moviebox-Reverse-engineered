.class public final synthetic Landroidx/media3/exoplayer/video/e0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/video/i0$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/i0$a;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/e0;->a:Landroidx/media3/exoplayer/video/i0$a;

    iput-wide p2, p0, Landroidx/media3/exoplayer/video/e0;->b:J

    iput p4, p0, Landroidx/media3/exoplayer/video/e0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/e0;->a:Landroidx/media3/exoplayer/video/i0$a;

    iget-wide v1, p0, Landroidx/media3/exoplayer/video/e0;->b:J

    iget v3, p0, Landroidx/media3/exoplayer/video/e0;->c:I

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/video/i0$a;->g(Landroidx/media3/exoplayer/video/i0$a;JI)V

    return-void
.end method
