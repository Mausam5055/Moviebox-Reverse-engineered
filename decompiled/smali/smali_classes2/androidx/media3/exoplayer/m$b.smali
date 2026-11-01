.class public final Landroidx/media3/exoplayer/m$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroidx/media3/exoplayer/upstream/h;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xc350

    iput v0, p0, Landroidx/media3/exoplayer/m$b;->b:I

    iput v0, p0, Landroidx/media3/exoplayer/m$b;->c:I

    const/16 v0, 0x3e8

    iput v0, p0, Landroidx/media3/exoplayer/m$b;->d:I

    const/16 v0, 0x7d0

    iput v0, p0, Landroidx/media3/exoplayer/m$b;->e:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/m$b;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/m$b;->g:Z

    iput v0, p0, Landroidx/media3/exoplayer/m$b;->h:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/m$b;->i:Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/exoplayer/m;
    .locals 13

    iget-boolean v0, p0, Landroidx/media3/exoplayer/m$b;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/m$b;->j:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/m$b;->a:Landroidx/media3/exoplayer/upstream/h;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/upstream/h;

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/upstream/h;-><init>(ZI)V

    iput-object v0, p0, Landroidx/media3/exoplayer/m$b;->a:Landroidx/media3/exoplayer/upstream/h;

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/m;

    iget-object v4, p0, Landroidx/media3/exoplayer/m$b;->a:Landroidx/media3/exoplayer/upstream/h;

    iget v5, p0, Landroidx/media3/exoplayer/m$b;->b:I

    iget v6, p0, Landroidx/media3/exoplayer/m$b;->c:I

    iget v7, p0, Landroidx/media3/exoplayer/m$b;->d:I

    iget v8, p0, Landroidx/media3/exoplayer/m$b;->e:I

    iget v9, p0, Landroidx/media3/exoplayer/m$b;->f:I

    iget-boolean v10, p0, Landroidx/media3/exoplayer/m$b;->g:Z

    iget v11, p0, Landroidx/media3/exoplayer/m$b;->h:I

    iget-boolean v12, p0, Landroidx/media3/exoplayer/m$b;->i:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/m;-><init>(Landroidx/media3/exoplayer/upstream/h;IIIIIZIZ)V

    return-object v0
.end method

.method public b(IIII)Landroidx/media3/exoplayer/m$b;
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/m$b;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    invoke-static {p3, v0, v1, v2}, Landroidx/media3/exoplayer/m;->j(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p4, v0, v3, v2}, Landroidx/media3/exoplayer/m;->j(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "minBufferMs"

    invoke-static {p1, p3, v0, v1}, Landroidx/media3/exoplayer/m;->j(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p4, v0, v3}, Landroidx/media3/exoplayer/m;->j(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    invoke-static {p2, p1, v1, v0}, Landroidx/media3/exoplayer/m;->j(IILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Landroidx/media3/exoplayer/m$b;->b:I

    iput p2, p0, Landroidx/media3/exoplayer/m$b;->c:I

    iput p3, p0, Landroidx/media3/exoplayer/m$b;->d:I

    iput p4, p0, Landroidx/media3/exoplayer/m$b;->e:I

    return-object p0
.end method

.method public c(Z)Landroidx/media3/exoplayer/m$b;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/m$b;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/m$b;->g:Z

    return-object p0
.end method

.method public d(I)Landroidx/media3/exoplayer/m$b;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/m$b;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/m$b;->f:I

    return-object p0
.end method
