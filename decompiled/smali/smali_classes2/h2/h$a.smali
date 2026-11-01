.class public final Lh2/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lg2/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lh2/h;

.field private final b:Landroidx/media3/exoplayer/source/e0;

.field private final c:I

.field private d:Z

.field final synthetic e:Lh2/h;


# direct methods
.method public constructor <init>(Lh2/h;Lh2/h;Landroidx/media3/exoplayer/source/e0;I)V
    .locals 0

    iput-object p1, p0, Lh2/h$a;->e:Lh2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh2/h$a;->a:Lh2/h;

    iput-object p3, p0, Lh2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    iput p4, p0, Lh2/h$a;->c:I

    return-void
.end method

.method private a()V
    .locals 8

    iget-boolean v0, p0, Lh2/h$a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-static {v0}, Lh2/h;->l(Lh2/h;)Landroidx/media3/exoplayer/source/s$a;

    move-result-object v1

    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-static {v0}, Lh2/h;->h(Lh2/h;)[I

    move-result-object v0

    iget v2, p0, Lh2/h$a;->c:I

    aget v2, v0, v2

    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-static {v0}, Lh2/h;->i(Lh2/h;)[Landroidx/media3/common/r;

    move-result-object v0

    iget v3, p0, Lh2/h$a;->c:I

    aget-object v3, v0, v3

    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-static {v0}, Lh2/h;->j(Lh2/h;)J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/source/s$a;->j(ILandroidx/media3/common/r;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh2/h$a;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-static {v0}, Lh2/h;->f(Lh2/h;)[Z

    move-result-object v0

    iget v1, p0, Lh2/h$a;->c:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-static {v0}, Lh2/h;->f(Lh2/h;)[Z

    move-result-object v0

    iget v1, p0, Lh2/h$a;->c:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 3

    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-virtual {v0}, Lh2/h;->y()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-static {v0}, Lh2/h;->d(Lh2/h;)Lh2/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-static {v0}, Lh2/h;->d(Lh2/h;)Lh2/a;

    move-result-object v0

    iget v2, p0, Lh2/h$a;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lh2/a;->g(I)I

    move-result v0

    iget-object v2, p0, Lh2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lh2/h$a;->a()V

    iget-object v0, p0, Lh2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    iget-object v1, p0, Lh2/h$a;->e:Lh2/h;

    iget-boolean v1, v1, Lh2/h;->y:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/media3/exoplayer/source/e0;->V(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-virtual {v0}, Lh2/h;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    iget-object v1, p0, Lh2/h$a;->e:Lh2/h;

    iget-boolean v1, v1, Lh2/h;->y:Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/e0;->N(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    return-void
.end method

.method public skipData(J)I
    .locals 2

    iget-object v0, p0, Lh2/h$a;->e:Lh2/h;

    invoke-virtual {v0}, Lh2/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lh2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    iget-object v1, p0, Lh2/h$a;->e:Lh2/h;

    iget-boolean v1, v1, Lh2/h;->y:Z

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/source/e0;->H(JZ)I

    move-result p1

    iget-object p2, p0, Lh2/h$a;->e:Lh2/h;

    invoke-static {p2}, Lh2/h;->d(Lh2/h;)Lh2/a;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lh2/h$a;->e:Lh2/h;

    invoke-static {p2}, Lh2/h;->d(Lh2/h;)Lh2/a;

    move-result-object p2

    iget v0, p0, Lh2/h$a;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lh2/a;->g(I)I

    move-result p2

    iget-object v0, p0, Lh2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    iget-object p2, p0, Lh2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/e0;->h0(I)V

    if-lez p1, :cond_2

    invoke-direct {p0}, Lh2/h$a;->a()V

    :cond_2
    return p1
.end method
