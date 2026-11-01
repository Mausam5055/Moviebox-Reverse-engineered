.class public final Landroidx/media3/exoplayer/hls/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/hls/j;


# static fields
.field private static final f:Ll2/l0;


# instance fields
.field final a:Ll2/r;

.field private final b:Landroidx/media3/common/r;

.field private final c:Landroidx/media3/common/util/p0;

.field private final d:Li3/s$a;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll2/l0;

    invoke-direct {v0}, Ll2/l0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/hls/b;->f:Ll2/l0;

    return-void
.end method

.method constructor <init>(Ll2/r;Landroidx/media3/common/r;Landroidx/media3/common/util/p0;Li3/s$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/b;->b:Landroidx/media3/common/r;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/b;->c:Landroidx/media3/common/util/p0;

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/b;->d:Li3/s$a;

    iput-boolean p5, p0, Landroidx/media3/exoplayer/hls/b;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ll2/s;)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    sget-object v1, Landroidx/media3/exoplayer/hls/b;->f:Ll2/l0;

    invoke-interface {v0, p1, v1}, Ll2/r;->c(Ll2/s;Ll2/l0;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ll2/t;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    invoke-interface {v0, p1}, Ll2/r;->b(Ll2/t;)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v1, v2}, Ll2/r;->seek(JJ)V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    invoke-interface {v0}, Ll2/r;->e()Ll2/r;

    move-result-object v0

    instance-of v1, v0, Ls3/k0;

    if-nez v1, :cond_1

    instance-of v0, v0, Lf3/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    invoke-interface {v0}, Ll2/r;->e()Ll2/r;

    move-result-object v0

    instance-of v1, v0, Ls3/h;

    if-nez v1, :cond_1

    instance-of v1, v0, Ls3/b;

    if-nez v1, :cond_1

    instance-of v1, v0, Ls3/e;

    if-nez v1, :cond_1

    instance-of v0, v0, Le3/f;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()Landroidx/media3/exoplayer/hls/j;
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/b;->d()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    invoke-interface {v0}, Ll2/r;->e()Ll2/r;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t recreate wrapped extractors. Outer type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/a;->h(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    instance-of v1, v0, Landroidx/media3/exoplayer/hls/u;

    if-eqz v1, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/hls/u;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/b;->b:Landroidx/media3/common/r;

    iget-object v1, v1, Landroidx/media3/common/r;->d:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/b;->c:Landroidx/media3/common/util/p0;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/b;->d:Li3/s$a;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/hls/b;->e:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/hls/u;-><init>(Ljava/lang/String;Landroidx/media3/common/util/p0;Li3/s$a;Z)V

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_1
    instance-of v1, v0, Ls3/h;

    if-eqz v1, :cond_2

    new-instance v0, Ls3/h;

    invoke-direct {v0}, Ls3/h;-><init>()V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Ls3/b;

    if-eqz v1, :cond_3

    new-instance v0, Ls3/b;

    invoke-direct {v0}, Ls3/b;-><init>()V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Ls3/e;

    if-eqz v1, :cond_4

    new-instance v0, Ls3/e;

    invoke-direct {v0}, Ls3/e;-><init>()V

    goto :goto_1

    :cond_4
    instance-of v0, v0, Le3/f;

    if-eqz v0, :cond_5

    new-instance v0, Le3/f;

    invoke-direct {v0}, Le3/f;-><init>()V

    goto :goto_1

    :goto_2
    new-instance v0, Landroidx/media3/exoplayer/hls/b;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/b;->b:Landroidx/media3/common/r;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/b;->c:Landroidx/media3/common/util/p0;

    iget-object v5, p0, Landroidx/media3/exoplayer/hls/b;->d:Li3/s$a;

    iget-boolean v6, p0, Landroidx/media3/exoplayer/hls/b;->e:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/hls/b;-><init>(Ll2/r;Landroidx/media3/common/r;Landroidx/media3/common/util/p0;Li3/s$a;Z)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected extractor type for recreation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/b;->a:Ll2/r;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
