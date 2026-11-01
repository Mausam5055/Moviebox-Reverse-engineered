.class public final Lcom/transsion/player/shorttv/preload/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroidx/media3/exoplayer/offline/DownloadRequest;

.field private d:J

.field private e:J

.field private f:J

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/media3/exoplayer/offline/DownloadRequest;JJJZ)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/player/shorttv/preload/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iput-wide p4, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    iput-wide p6, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    iput-wide p8, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    iput-boolean p10, p0, Lcom/transsion/player/shorttv/preload/a;->g:Z

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    return-wide v0
.end method

.method public final e()Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/player/shorttv/preload/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/player/shorttv/preload/a;

    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/player/shorttv/preload/a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v3, p1, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    iget-wide v5, p1, Lcom/transsion/player/shorttv/preload/a;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    iget-wide v5, p1, Lcom/transsion/player/shorttv/preload/a;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    iget-wide v5, p1, Lcom/transsion/player/shorttv/preload/a;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/transsion/player/shorttv/preload/a;->g:Z

    iget-boolean p1, p1, Lcom/transsion/player/shorttv/preload/a;->g:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/player/shorttv/preload/a;->g:Z

    return v0
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    return-void
.end method

.method public final h(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/offline/DownloadRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/player/shorttv/preload/a;->g:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-wide v3, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    iget-wide v5, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    iget-wide v7, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    iget-boolean v9, p0, Lcom/transsion/player/shorttv/preload/a;->g:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VideoDownloadBean(id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", request="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentLength="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", downloadLength="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", maxLength="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isAdd="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
