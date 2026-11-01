.class final Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field public static final e:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Landroidx/media3/common/util/o0;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;-><init>(JJJ)V

    sput-object v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->e:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->a:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->b:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->c:J

    new-instance p1, Landroidx/media3/common/util/o0;

    invoke-direct {p1}, Landroidx/media3/common/util/o0;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$d;->d:Landroidx/media3/common/util/o0;

    return-void
.end method
