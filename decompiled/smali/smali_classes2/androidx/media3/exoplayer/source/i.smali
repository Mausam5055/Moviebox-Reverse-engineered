.class public final Landroidx/media3/exoplayer/source/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/r$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/i$a;,
        Landroidx/media3/exoplayer/source/i$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/source/i$a;

.field private b:Landroidx/media3/datasource/a$a;

.field private c:Li3/s$a;

.field private d:Landroidx/media3/exoplayer/source/r$a;

.field private e:Landroidx/media3/exoplayer/upstream/m;

.field private f:J

.field private g:J

.field private h:J

.field private i:F

.field private j:F

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/b$a;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/b$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/i;-><init>(Landroidx/media3/datasource/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ll2/x;)V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/b$a;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/b$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroidx/media3/exoplayer/source/i;-><init>(Landroidx/media3/datasource/a$a;Ll2/x;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 1

    new-instance v0, Ll2/m;

    invoke-direct {v0}, Ll2/m;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/i;-><init>(Landroidx/media3/datasource/a$a;Ll2/x;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;Ll2/x;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i;->b:Landroidx/media3/datasource/a$a;

    new-instance v0, Li3/h;

    invoke-direct {v0}, Li3/h;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/i;->c:Li3/s$a;

    new-instance v1, Landroidx/media3/exoplayer/source/i$a;

    invoke-direct {v1, p2, v0}, Landroidx/media3/exoplayer/source/i$a;-><init>(Ll2/x;Li3/s$a;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/i$a;->n(Landroidx/media3/datasource/a$a;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/i;->f:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/i;->g:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/i;->h:J

    const p1, -0x800001

    iput p1, p0, Landroidx/media3/exoplayer/source/i;->i:F

    iput p1, p0, Landroidx/media3/exoplayer/source/i;->j:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/i;->k:Z

    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/source/i;Landroidx/media3/common/r;)[Ll2/r;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/i;->l(Landroidx/media3/common/r;)[Ll2/r;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/source/i;->o(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/i;->p(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method private synthetic l(Landroidx/media3/common/r;)[Ll2/r;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->c:Li3/s$a;

    invoke-interface {v0, p1}, Li3/s$a;->a(Landroidx/media3/common/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Li3/n;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/i;->c:Li3/s$a;

    invoke-interface {v1, p1}, Li3/s$a;->c(Landroidx/media3/common/r;)Li3/s;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Li3/n;-><init>(Li3/s;Landroidx/media3/common/r;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/i$b;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/i$b;-><init>(Landroidx/media3/common/r;)V

    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Ll2/r;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    return-object p1
.end method

.method private static m(Landroidx/media3/common/t;Landroidx/media3/exoplayer/source/r;)Landroidx/media3/exoplayer/source/r;
    .locals 5

    iget-object v0, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    iget-wide v1, v0, Landroidx/media3/common/t$d;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, v0, Landroidx/media3/common/t$d;->d:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/media3/common/t$d;->f:Z

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;-><init>(Landroidx/media3/exoplayer/source/r;)V

    iget-object p1, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    iget-wide v1, p1, Landroidx/media3/common/t$d;->b:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->m(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    iget-wide v0, v0, Landroidx/media3/common/t$d;->d:J

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->k(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    iget-boolean v0, v0, Landroidx/media3/common/t$d;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->j(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    iget-boolean v0, v0, Landroidx/media3/common/t$d;->e:Z

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->i(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    iget-boolean p0, p0, Landroidx/media3/common/t$d;->f:Z

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->l(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h()Landroidx/media3/exoplayer/source/ClippingMediaSource;

    move-result-object p0

    return-object p0
.end method

.method private n(Landroidx/media3/common/t;Landroidx/media3/exoplayer/source/r;)Landroidx/media3/exoplayer/source/r;
    .locals 1

    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2
.end method

.method private static o(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/r$a;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/r$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static p(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroidx/media3/datasource/a$a;

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/r$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic a(Li3/s$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/i;->t(Li3/s$a;)Landroidx/media3/exoplayer/source/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(I)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/i;->k(I)Landroidx/media3/exoplayer/source/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Z)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/i;->j(Z)Landroidx/media3/exoplayer/source/i;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;
    .locals 10

    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object v0, v0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ssai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->d:Landroidx/media3/exoplayer/source/r$a;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/r$a;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r$a;->d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object v0, v0, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    const-string v1, "application/x-image-uri"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/source/l$b;

    iget-object v1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-wide v1, v1, Landroidx/media3/common/t$h;->i:J

    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/source/l$b;-><init>(JLandroidx/media3/exoplayer/source/j;)V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/l$b;->g(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/l;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object v1, v0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    iget-object v0, v0, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/common/util/a1;->A0(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-wide v1, v1, Landroidx/media3/common/t$h;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/i$a;->p(I)V

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/i$a;->f(I)Landroidx/media3/exoplayer/source/r$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    invoke-virtual {v1}, Landroidx/media3/common/t$g;->a()Landroidx/media3/common/t$g$a;

    move-result-object v1

    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    iget-wide v5, v5, Landroidx/media3/common/t$g;->a:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_3

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/i;->f:J

    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/t$g$a;->k(J)Landroidx/media3/common/t$g$a;

    :cond_3
    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    iget v5, v5, Landroidx/media3/common/t$g;->d:F

    const v6, -0x800001

    cmpl-float v5, v5, v6

    if-nez v5, :cond_4

    iget v5, p0, Landroidx/media3/exoplayer/source/i;->i:F

    invoke-virtual {v1, v5}, Landroidx/media3/common/t$g$a;->j(F)Landroidx/media3/common/t$g$a;

    :cond_4
    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    iget v5, v5, Landroidx/media3/common/t$g;->e:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    iget v5, p0, Landroidx/media3/exoplayer/source/i;->j:F

    invoke-virtual {v1, v5}, Landroidx/media3/common/t$g$a;->h(F)Landroidx/media3/common/t$g$a;

    :cond_5
    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    iget-wide v5, v5, Landroidx/media3/common/t$g;->b:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_6

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/i;->g:J

    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/t$g$a;->i(J)Landroidx/media3/common/t$g$a;

    :cond_6
    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    iget-wide v5, v5, Landroidx/media3/common/t$g;->c:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_7

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/i;->h:J

    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/t$g$a;->g(J)Landroidx/media3/common/t$g$a;

    :cond_7
    invoke-virtual {v1}, Landroidx/media3/common/t$g$a;->f()Landroidx/media3/common/t$g;

    move-result-object v1

    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    invoke-virtual {v1, v5}, Landroidx/media3/common/t$g;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p1}, Landroidx/media3/common/t;->a()Landroidx/media3/common/t$c;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/media3/common/t$c;->c(Landroidx/media3/common/t$g;)Landroidx/media3/common/t$c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    move-result-object p1

    :cond_8
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r$a;->d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/t$h;

    iget-object v1, v1, Landroidx/media3/common/t$h;->f:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    new-array v2, v5, [Landroidx/media3/exoplayer/source/r;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    move v0, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_d

    iget-boolean v6, p0, Landroidx/media3/exoplayer/source/i;->k:Z

    if-eqz v6, :cond_b

    new-instance v6, Landroidx/media3/common/r$b;

    invoke-direct {v6}, Landroidx/media3/common/r$b;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/t$k;

    iget-object v7, v7, Landroidx/media3/common/t$k;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/t$k;

    iget-object v7, v7, Landroidx/media3/common/t$k;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/t$k;

    iget v7, v7, Landroidx/media3/common/t$k;->d:I

    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object v6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/t$k;

    iget v7, v7, Landroidx/media3/common/t$k;->e:I

    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object v6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/t$k;

    iget-object v7, v7, Landroidx/media3/common/t$k;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/t$k;

    iget-object v7, v7, Landroidx/media3/common/t$k;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v6

    new-instance v7, Lg2/g;

    invoke-direct {v7, p0, v6}, Lg2/g;-><init>(Landroidx/media3/exoplayer/source/i;Landroidx/media3/common/r;)V

    new-instance v8, Landroidx/media3/exoplayer/source/b0$b;

    iget-object v9, p0, Landroidx/media3/exoplayer/source/i;->b:Landroidx/media3/datasource/a$a;

    invoke-direct {v8, v9, v7}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;Ll2/x;)V

    iget-object v7, p0, Landroidx/media3/exoplayer/source/i;->c:Li3/s$a;

    invoke-interface {v7, v6}, Li3/s$a;->a(Landroidx/media3/common/r;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v7

    const-string v9, "application/x-media3-cues"

    invoke-virtual {v7, v9}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v7

    iget-object v9, v6, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v7

    iget-object v9, p0, Landroidx/media3/exoplayer/source/i;->c:Li3/s$a;

    invoke-interface {v9, v6}, Li3/s$a;->b(Landroidx/media3/common/r;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroidx/media3/common/r$b;->W(I)Landroidx/media3/common/r$b;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v6

    :cond_9
    invoke-virtual {v8, v5, v6}, Landroidx/media3/exoplayer/source/b0$b;->i(ILandroidx/media3/common/r;)Landroidx/media3/exoplayer/source/b0$b;

    move-result-object v6

    iget-object v7, p0, Landroidx/media3/exoplayer/source/i;->e:Landroidx/media3/exoplayer/upstream/m;

    if-eqz v7, :cond_a

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/source/b0$b;->l(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/b0$b;

    :cond_a
    add-int/lit8 v7, v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/t$k;

    iget-object v8, v8, Landroidx/media3/common/t$k;->a:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/media3/common/t;->b(Ljava/lang/String;)Landroidx/media3/common/t;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/media3/exoplayer/source/b0$b;->h(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/b0;

    move-result-object v6

    aput-object v6, v2, v7

    goto :goto_1

    :cond_b
    new-instance v6, Landroidx/media3/exoplayer/source/h0$b;

    iget-object v7, p0, Landroidx/media3/exoplayer/source/i;->b:Landroidx/media3/datasource/a$a;

    invoke-direct {v6, v7}, Landroidx/media3/exoplayer/source/h0$b;-><init>(Landroidx/media3/datasource/a$a;)V

    iget-object v7, p0, Landroidx/media3/exoplayer/source/i;->e:Landroidx/media3/exoplayer/upstream/m;

    if-eqz v7, :cond_c

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/source/h0$b;->b(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/h0$b;

    :cond_c
    add-int/lit8 v7, v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/t$k;

    invoke-virtual {v6, v8, v3, v4}, Landroidx/media3/exoplayer/source/h0$b;->a(Landroidx/media3/common/t$k;J)Landroidx/media3/exoplayer/source/h0;

    move-result-object v6

    aput-object v6, v2, v7

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    new-instance v0, Landroidx/media3/exoplayer/source/MergingMediaSource;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/r;)V

    :cond_e
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/source/i;->m(Landroidx/media3/common/t;Landroidx/media3/exoplayer/source/r;)Landroidx/media3/exoplayer/source/r;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/i;->n(Landroidx/media3/common/t;Landroidx/media3/exoplayer/source/r;)Landroidx/media3/exoplayer/source/r;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/i;->r(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/i;->s(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/i;

    move-result-object p1

    return-object p1
.end method

.method public j(Z)Landroidx/media3/exoplayer/source/i;
    .locals 1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/i;->k:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->r(Z)V

    return-object p0
.end method

.method public k(I)Landroidx/media3/exoplayer/source/i;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->m(I)V

    return-object p0
.end method

.method public q(Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/i;
    .locals 1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i;->b:Landroidx/media3/datasource/a$a;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->n(Landroidx/media3/datasource/a$a;)V

    return-object p0
.end method

.method public r(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/i;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    const-string v1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v1}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/w;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->o(Landroidx/media3/exoplayer/drm/w;)V

    return-object p0
.end method

.method public s(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/i;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/m;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/i;->e:Landroidx/media3/exoplayer/upstream/m;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->q(Landroidx/media3/exoplayer/upstream/m;)V

    return-object p0
.end method

.method public t(Li3/s$a;)Landroidx/media3/exoplayer/source/i;
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li3/s$a;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/i;->c:Li3/s$a;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->s(Li3/s$a;)V

    return-object p0
.end method
