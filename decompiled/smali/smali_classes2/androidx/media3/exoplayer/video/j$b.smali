.class Landroidx/media3/exoplayer/video/j$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/video/j;->X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/mediacodec/t;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Landroidx/media3/exoplayer/video/j;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/mediacodec/t;IJ)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/j$b;->d:Landroidx/media3/exoplayer/video/j;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/j$b;->a:Landroidx/media3/exoplayer/mediacodec/t;

    iput p3, p0, Landroidx/media3/exoplayer/video/j$b;->b:I

    iput-wide p4, p0, Landroidx/media3/exoplayer/video/j$b;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j$b;->d:Landroidx/media3/exoplayer/video/j;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j$b;->a:Landroidx/media3/exoplayer/mediacodec/t;

    iget v2, p0, Landroidx/media3/exoplayer/video/j$b;->b:I

    iget-wide v3, p0, Landroidx/media3/exoplayer/video/j$b;->c:J

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/video/j;->z1(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/mediacodec/t;IJJ)V

    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/video/j$b;->d:Landroidx/media3/exoplayer/video/j;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/j$b;->a:Landroidx/media3/exoplayer/mediacodec/t;

    iget v2, p0, Landroidx/media3/exoplayer/video/j$b;->b:I

    iget-wide v3, p0, Landroidx/media3/exoplayer/video/j$b;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/video/j;->x2(Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    return-void
.end method
