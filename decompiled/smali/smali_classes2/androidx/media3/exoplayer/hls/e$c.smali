.class final Landroidx/media3/exoplayer/hls/e$c;
.super Lh2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final e:Ljava/util/List;

.field private final f:J

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lh2/b;-><init>(JJ)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/e$c;->g:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/media3/exoplayer/hls/e$c;->f:J

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/e$c;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    invoke-virtual {p0}, Lh2/b;->c()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/e$c;->f:J

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/e$c;->e:Ljava/util/List;

    invoke-virtual {p0}, Lh2/b;->d()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/c$g;

    iget-wide v2, v2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b()J
    .locals 5

    invoke-virtual {p0}, Lh2/b;->c()V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e$c;->e:Ljava/util/List;

    invoke-virtual {p0}, Lh2/b;->d()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/c$g;

    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/e$c;->f:J

    iget-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    add-long/2addr v1, v3

    return-wide v1
.end method
