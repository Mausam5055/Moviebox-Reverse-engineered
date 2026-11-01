.class final Landroidx/media3/exoplayer/source/a0$d;
.super Ljava/lang/Object;

# interfaces
.implements Lg2/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Landroidx/media3/exoplayer/source/a0;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/a0;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a0$d;->b:Landroidx/media3/exoplayer/source/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/source/a0$d;)I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    return p0
.end method


# virtual methods
.method public c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$d;->b:Landroidx/media3/exoplayer/source/a0;

    iget v1, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/media3/exoplayer/source/a0;->V(ILandroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$d;->b:Landroidx/media3/exoplayer/source/a0;

    iget v1, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/a0;->G(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$d;->b:Landroidx/media3/exoplayer/source/a0;

    iget v1, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/a0;->O(I)V

    return-void
.end method

.method public skipData(J)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$d;->b:Landroidx/media3/exoplayer/source/a0;

    iget v1, p0, Landroidx/media3/exoplayer/source/a0$d;->a:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/a0;->Z(IJ)I

    move-result p1

    return p1
.end method
