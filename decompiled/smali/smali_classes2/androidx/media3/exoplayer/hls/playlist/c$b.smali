.class public Landroidx/media3/exoplayer/hls/playlist/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/playlist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field private final c:D

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->a:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->b:I

    iput-wide p2, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->c:D

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const-string v1, "0x"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0X"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->a:Ljava/lang/String;

    iput p3, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->b:I

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->d:Ljava/lang/String;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->c:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/hls/playlist/c$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/c$b;

    iget v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->b:I

    iget v3, p1, Landroidx/media3/exoplayer/hls/playlist/c$b;->b:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->c:D

    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/c$b;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c$b;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->d:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/c$b;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->a:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/c$b;->d:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
