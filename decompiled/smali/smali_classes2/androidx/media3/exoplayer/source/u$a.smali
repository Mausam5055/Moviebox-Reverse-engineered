.class final Landroidx/media3/exoplayer/source/u$a;
.super Ljava/lang/Object;

# interfaces
.implements Lj2/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lj2/z;

.field private final b:Landroidx/media3/common/f0;


# direct methods
.method public constructor <init>(Lj2/z;Landroidx/media3/common/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/u$a;->b:Landroidx/media3/common/f0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0}, Lj2/z;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0, p1}, Lj2/z;->b(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0}, Lj2/z;->c()V

    return-void
.end method

.method public d(IJ)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0, p1, p2, p3}, Lj2/z;->d(IJ)Z

    move-result p1

    return p1
.end method

.method public disable()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0}, Lj2/z;->disable()V

    return-void
.end method

.method public e(JJJLjava/util/List;[Lh2/n;)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lj2/z;->e(JJJLjava/util/List;[Lh2/n;)V

    return-void
.end method

.method public enable()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0}, Lj2/z;->enable()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/source/u$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/source/u$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    iget-object v3, p1, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/u$a;->b:Landroidx/media3/common/f0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/u$a;->b:Landroidx/media3/common/f0;

    invoke-virtual {v1, p1}, Landroidx/media3/common/f0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0, p1, p2, p3}, Lj2/z;->evaluateQueueSize(JLjava/util/List;)I

    move-result p1

    return p1
.end method

.method public f(Landroidx/media3/common/r;)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/u$a;->b:Landroidx/media3/common/f0;

    invoke-virtual {v1, p1}, Landroidx/media3/common/f0;->b(Landroidx/media3/common/r;)I

    move-result p1

    invoke-interface {v0, p1}, Lj2/c0;->indexOf(I)I

    move-result p1

    return p1
.end method

.method public g(IJ)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0, p1, p2, p3}, Lj2/z;->g(IJ)Z

    move-result p1

    return p1
.end method

.method public getFormat(I)Landroidx/media3/common/r;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->b:Landroidx/media3/common/f0;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v1, p1}, Lj2/c0;->getIndexInTrackGroup(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object p1

    return-object p1
.end method

.method public getIndexInTrackGroup(I)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0, p1}, Lj2/c0;->getIndexInTrackGroup(I)I

    move-result p1

    return p1
.end method

.method public getSelectedFormat()Landroidx/media3/common/r;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->b:Landroidx/media3/common/f0;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v1}, Lj2/z;->getSelectedIndexInTrackGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0}, Lj2/z;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedIndexInTrackGroup()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0}, Lj2/z;->getSelectedIndexInTrackGroup()I

    move-result v0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0}, Lj2/z;->getSelectionData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0}, Lj2/z;->getSelectionReason()I

    move-result v0

    return v0
.end method

.method public getTrackGroup()Landroidx/media3/common/f0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->b:Landroidx/media3/common/f0;

    return-object v0
.end method

.method public h(JLh2/e;Ljava/util/List;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0, p1, p2, p3, p4}, Lj2/z;->h(JLh2/e;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->b:Landroidx/media3/common/f0;

    invoke-virtual {v0}, Landroidx/media3/common/f0;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public indexOf(I)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0, p1}, Lj2/c0;->indexOf(I)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0}, Lj2/c0;->length()I

    move-result v0

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/u$a;->a:Lj2/z;

    invoke-interface {v0, p1}, Lj2/z;->onPlaybackSpeed(F)V

    return-void
.end method
