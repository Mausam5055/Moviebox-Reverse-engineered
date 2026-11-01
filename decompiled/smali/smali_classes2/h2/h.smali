.class public Lh2/h;
.super Ljava/lang/Object;

# interfaces
.implements Lg2/u;
.implements Landroidx/media3/exoplayer/source/f0;
.implements Landroidx/media3/exoplayer/upstream/Loader$b;
.implements Landroidx/media3/exoplayer/upstream/Loader$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/h$a;,
        Lh2/h$b;
    }
.end annotation


# instance fields
.field public final a:I

.field private final b:[I

.field private final c:[Landroidx/media3/common/r;

.field private final d:[Z

.field private final e:Lh2/i;

.field private final f:Landroidx/media3/exoplayer/source/f0$a;

.field private final g:Landroidx/media3/exoplayer/source/s$a;

.field private final h:Landroidx/media3/exoplayer/upstream/m;

.field private final i:Landroidx/media3/exoplayer/upstream/Loader;

.field private final j:Lh2/g;

.field private final k:Ljava/util/ArrayList;

.field private final l:Ljava/util/List;

.field private final m:Landroidx/media3/exoplayer/source/e0;

.field private final n:[Landroidx/media3/exoplayer/source/e0;

.field private final o:Lh2/c;

.field private p:Lh2/e;

.field private q:Landroidx/media3/common/r;

.field private r:Lh2/h$b;

.field private s:J

.field private t:J

.field private u:I

.field private v:Lh2/a;

.field private w:Z

.field private x:Z

.field y:Z


# direct methods
.method public constructor <init>(I[I[Landroidx/media3/common/r;Lh2/i;Landroidx/media3/exoplayer/source/f0$a;Landroidx/media3/exoplayer/upstream/b;JLandroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;ZLandroidx/media3/exoplayer/util/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh2/h;->a:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [I

    :cond_0
    iput-object p2, p0, Lh2/h;->b:[I

    if-nez p3, :cond_1

    new-array p3, v0, [Landroidx/media3/common/r;

    :cond_1
    iput-object p3, p0, Lh2/h;->c:[Landroidx/media3/common/r;

    iput-object p4, p0, Lh2/h;->e:Lh2/i;

    iput-object p5, p0, Lh2/h;->f:Landroidx/media3/exoplayer/source/f0$a;

    iput-object p12, p0, Lh2/h;->g:Landroidx/media3/exoplayer/source/s$a;

    iput-object p11, p0, Lh2/h;->h:Landroidx/media3/exoplayer/upstream/m;

    iput-boolean p13, p0, Lh2/h;->w:Z

    new-instance p3, Landroidx/media3/exoplayer/upstream/Loader;

    if-eqz p14, :cond_2

    invoke-direct {p3, p14}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/c;)V

    goto :goto_0

    :cond_2
    const-string p4, "ChunkSampleStream"

    invoke-direct {p3, p4}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p3, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    new-instance p3, Lh2/g;

    invoke-direct {p3}, Lh2/g;-><init>()V

    iput-object p3, p0, Lh2/h;->j:Lh2/g;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lh2/h;->l:Ljava/util/List;

    array-length p2, p2

    new-array p3, p2, [Landroidx/media3/exoplayer/source/e0;

    iput-object p3, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    new-array p3, p2, [Z

    iput-object p3, p0, Lh2/h;->d:[Z

    add-int/lit8 p3, p2, 0x1

    new-array p4, p3, [I

    new-array p3, p3, [Landroidx/media3/exoplayer/source/e0;

    invoke-static {p6, p9, p10}, Landroidx/media3/exoplayer/source/e0;->l(Landroidx/media3/exoplayer/upstream/b;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;)Landroidx/media3/exoplayer/source/e0;

    move-result-object p5

    iput-object p5, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    aput p1, p4, v0

    aput-object p5, p3, v0

    :goto_1
    if-ge v0, p2, :cond_3

    invoke-static {p6}, Landroidx/media3/exoplayer/source/e0;->m(Landroidx/media3/exoplayer/upstream/b;)Landroidx/media3/exoplayer/source/e0;

    move-result-object p1

    iget-object p5, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    aput-object p1, p5, v0

    add-int/lit8 p5, v0, 0x1

    aput-object p1, p3, p5

    iget-object p1, p0, Lh2/h;->b:[I

    aget p1, p1, v0

    aput p1, p4, p5

    move v0, p5

    goto :goto_1

    :cond_3
    new-instance p1, Lh2/c;

    invoke-direct {p1, p4, p3}, Lh2/c;-><init>([I[Landroidx/media3/exoplayer/source/e0;)V

    iput-object p1, p0, Lh2/h;->o:Lh2/c;

    iput-wide p7, p0, Lh2/h;->s:J

    iput-wide p7, p0, Lh2/h;->t:J

    return-void
.end method

.method private A(I)V
    .locals 8

    iget-object v0, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh2/a;

    iget-object v7, p1, Lh2/e;->d:Landroidx/media3/common/r;

    iget-object v0, p0, Lh2/h;->q:Landroidx/media3/common/r;

    invoke-virtual {v7, v0}, Landroidx/media3/common/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh2/h;->g:Landroidx/media3/exoplayer/source/s$a;

    iget v1, p0, Lh2/h;->a:I

    iget v3, p1, Lh2/e;->e:I

    iget-object v4, p1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v5, p1, Lh2/e;->g:J

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/source/s$a;->j(ILandroidx/media3/common/r;ILjava/lang/Object;J)V

    :cond_0
    iput-object v7, p0, Lh2/h;->q:Landroidx/media3/common/r;

    return-void
.end method

.method private F(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh2/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh2/a;->g(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    iget-object p1, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private H()V
    .locals 4

    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->Y()V

    iget-object v0, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->Y()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lh2/h;)Lh2/a;
    .locals 0

    iget-object p0, p0, Lh2/h;->v:Lh2/a;

    return-object p0
.end method

.method static synthetic f(Lh2/h;)[Z
    .locals 0

    iget-object p0, p0, Lh2/h;->d:[Z

    return-object p0
.end method

.method static synthetic h(Lh2/h;)[I
    .locals 0

    iget-object p0, p0, Lh2/h;->b:[I

    return-object p0
.end method

.method static synthetic i(Lh2/h;)[Landroidx/media3/common/r;
    .locals 0

    iget-object p0, p0, Lh2/h;->c:[Landroidx/media3/common/r;

    return-object p0
.end method

.method static synthetic j(Lh2/h;)J
    .locals 2

    iget-wide v0, p0, Lh2/h;->t:J

    return-wide v0
.end method

.method static synthetic l(Lh2/h;)Landroidx/media3/exoplayer/source/s$a;
    .locals 0

    iget-object p0, p0, Lh2/h;->g:Landroidx/media3/exoplayer/source/s$a;

    return-object p0
.end method

.method private n(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh2/h;->F(II)I

    move-result p1

    iget v1, p0, Lh2/h;->u:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v1, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-static {v1, v0, p1}, Landroidx/media3/common/util/a1;->c1(Ljava/util/List;II)V

    iget v0, p0, Lh2/h;->u:I

    sub-int/2addr v0, p1

    iput v0, p0, Lh2/h;->u:I

    :cond_0
    return-void
.end method

.method private r(I)V
    .locals 7

    iget-object v0, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    invoke-direct {p0, p1}, Lh2/h;->w(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lh2/h;->v()Lh2/a;

    move-result-object v0

    iget-wide v5, v0, Lh2/e;->h:J

    invoke-direct {p0, p1}, Lh2/h;->s(I)Lh2/a;

    move-result-object p1

    iget-object v0, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lh2/h;->t:J

    iput-wide v0, p0, Lh2/h;->s:J

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lh2/h;->y:Z

    iget-object v1, p0, Lh2/h;->g:Landroidx/media3/exoplayer/source/s$a;

    iget v2, p0, Lh2/h;->a:I

    iget-wide v3, p1, Lh2/e;->g:J

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/source/s$a;->F(IJJ)V

    return-void
.end method

.method private s(I)Lh2/a;
    .locals 3

    iget-object v0, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh2/a;

    iget-object v1, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Landroidx/media3/common/util/a1;->c1(Ljava/util/List;II)V

    iget p1, p0, Lh2/h;->u:I

    iget-object v1, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lh2/h;->u:I

    iget-object p1, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh2/a;->g(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/source/e0;->w(I)V

    :goto_0
    iget-object p1, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lh2/a;->g(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/source/e0;->w(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private v()Lh2/a;
    .locals 2

    iget-object v0, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh2/a;

    return-object v0
.end method

.method private w(I)Z
    .locals 5

    iget-object v0, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh2/a;

    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lh2/a;->g(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    move v0, v1

    :cond_1
    iget-object v2, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lh2/a;->g(I)I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method private x(Lh2/e;)Z
    .locals 0

    instance-of p1, p1, Lh2/a;

    return p1
.end method

.method private z()V
    .locals 3

    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v0

    iget v1, p0, Lh2/h;->u:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lh2/h;->F(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lh2/h;->u:I

    if-gt v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lh2/h;->u:I

    invoke-direct {p0, v1}, Lh2/h;->A(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public B(Lh2/e;JJZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lh2/h;->p:Lh2/e;

    iput-object v2, v0, Lh2/h;->v:Lh2/a;

    new-instance v2, Lg2/i;

    iget-wide v4, v1, Lh2/e;->a:J

    iget-object v6, v1, Lh2/e;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Lh2/e;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lh2/e;->c()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lh2/e;->a()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Lh2/h;->h:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v4, v1, Lh2/e;->a:J

    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    iget-object v3, v0, Lh2/h;->g:Landroidx/media3/exoplayer/source/s$a;

    iget v5, v1, Lh2/e;->c:I

    iget v6, v0, Lh2/h;->a:I

    iget-object v7, v1, Lh2/e;->d:Landroidx/media3/common/r;

    iget v8, v1, Lh2/e;->e:I

    iget-object v9, v1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lh2/e;->g:J

    iget-wide v12, v1, Lh2/e;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/s$a;->t(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lh2/h;->H()V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p1}, Lh2/h;->x(Lh2/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lh2/h;->s(I)Lh2/a;

    iget-object v1, v0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lh2/h;->t:J

    iput-wide v1, v0, Lh2/h;->s:J

    :cond_1
    :goto_0
    iget-object v1, v0, Lh2/h;->f:Landroidx/media3/exoplayer/source/f0$a;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    :cond_2
    return-void
.end method

.method public C(Lh2/e;JJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lh2/h;->p:Lh2/e;

    iget-object v2, v0, Lh2/h;->e:Lh2/i;

    invoke-interface {v2, v1}, Lh2/i;->a(Lh2/e;)V

    new-instance v2, Lg2/i;

    iget-wide v4, v1, Lh2/e;->a:J

    iget-object v6, v1, Lh2/e;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Lh2/e;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lh2/e;->c()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lh2/e;->a()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Lh2/h;->h:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v4, v1, Lh2/e;->a:J

    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    iget-object v3, v0, Lh2/h;->g:Landroidx/media3/exoplayer/source/s$a;

    iget v5, v1, Lh2/e;->c:I

    iget v6, v0, Lh2/h;->a:I

    iget-object v7, v1, Lh2/e;->d:Landroidx/media3/common/r;

    iget v8, v1, Lh2/e;->e:I

    iget-object v9, v1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lh2/e;->g:J

    iget-wide v12, v1, Lh2/e;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/s$a;->w(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lh2/h;->f:Landroidx/media3/exoplayer/source/f0$a;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    return-void
.end method

.method public D(Lh2/e;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lh2/e;->a()J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lh2/h;->x(Lh2/e;)Z

    move-result v14

    iget-object v2, v0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x1

    add-int/lit8 v10, v2, -0x1

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    if-eqz v14, :cond_1

    invoke-direct {v0, v10}, Lh2/h;->w(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v15

    :goto_1
    new-instance v17, Lg2/i;

    iget-wide v3, v1, Lh2/e;->a:J

    iget-object v5, v1, Lh2/e;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Lh2/e;->d()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lh2/e;->c()Ljava/util/Map;

    move-result-object v7

    move-object/from16 v2, v17

    move v15, v8

    move-object/from16 v30, v17

    move/from16 v17, v14

    move-object/from16 v14, v30

    move-wide/from16 v8, p2

    move/from16 v29, v10

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v2, Lg2/j;

    iget v3, v1, Lh2/e;->c:I

    iget v4, v0, Lh2/h;->a:I

    iget-object v5, v1, Lh2/e;->d:Landroidx/media3/common/r;

    iget v6, v1, Lh2/e;->e:I

    iget-object v7, v1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v8, v1, Lh2/e;->g:J

    invoke-static {v8, v9}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v24

    iget-wide v8, v1, Lh2/e;->h:J

    invoke-static {v8, v9}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v26

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    invoke-direct/range {v18 .. v27}, Lg2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    new-instance v3, Landroidx/media3/exoplayer/upstream/m$c;

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct {v3, v14, v2, v4, v5}, Landroidx/media3/exoplayer/upstream/m$c;-><init>(Lg2/i;Lg2/j;Ljava/io/IOException;I)V

    iget-object v2, v0, Lh2/h;->e:Lh2/i;

    iget-object v5, v0, Lh2/h;->h:Landroidx/media3/exoplayer/upstream/m;

    invoke-interface {v2, v1, v15, v3, v5}, Lh2/i;->f(Lh2/e;ZLandroidx/media3/exoplayer/upstream/m$c;Landroidx/media3/exoplayer/upstream/m;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v15, :cond_3

    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$c;

    if-eqz v17, :cond_5

    move/from16 v6, v29

    invoke-direct {v0, v6}, Lh2/h;->s(I)Lh2/a;

    move-result-object v6

    if-ne v6, v1, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    invoke-static {v15}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v6, v0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v6, v0, Lh2/h;->t:J

    iput-wide v6, v0, Lh2/h;->s:J

    goto :goto_3

    :cond_3
    const-string v2, "ChunkSampleStream"

    const-string v6, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v2, v6}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    if-nez v2, :cond_7

    iget-object v2, v0, Lh2/h;->h:Landroidx/media3/exoplayer/upstream/m;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/upstream/m;->c(Landroidx/media3/exoplayer/upstream/m$c;)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    invoke-static {v6, v2, v3}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object v2

    goto :goto_4

    :cond_6
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->g:Landroidx/media3/exoplayer/upstream/Loader$c;

    :cond_7
    :goto_4
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/Loader$c;->c()Z

    move-result v3

    xor-int/lit8 v28, v3, 0x1

    iget-object v6, v0, Lh2/h;->g:Landroidx/media3/exoplayer/source/s$a;

    iget v7, v1, Lh2/e;->c:I

    iget v8, v0, Lh2/h;->a:I

    iget-object v9, v1, Lh2/e;->d:Landroidx/media3/common/r;

    iget v10, v1, Lh2/e;->e:I

    iget-object v11, v1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v12, v1, Lh2/e;->g:J

    iget-wide v4, v1, Lh2/e;->h:J

    move-object/from16 v16, v6

    move-object/from16 v17, v14

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v22, v11

    move-wide/from16 v23, v12

    move-wide/from16 v25, v4

    move-object/from16 v27, p6

    invoke-virtual/range {v16 .. v28}, Landroidx/media3/exoplayer/source/s$a;->y(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v3, :cond_8

    const/4 v3, 0x0

    iput-object v3, v0, Lh2/h;->p:Lh2/e;

    iget-object v3, v0, Lh2/h;->h:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v4, v1, Lh2/e;->a:J

    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    iget-object v1, v0, Lh2/h;->f:Landroidx/media3/exoplayer/source/f0$a;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    :cond_8
    return-object v2
.end method

.method public E(Lh2/e;JJI)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p6, :cond_0

    new-instance v8, Lg2/i;

    iget-wide v3, v1, Lh2/e;->a:J

    iget-object v5, v1, Lh2/e;->b:Lw1/h;

    move-object v2, v8

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lg2/i;-><init>(JLw1/h;J)V

    :goto_0
    move-object/from16 v22, v8

    goto :goto_1

    :cond_0
    new-instance v8, Lg2/i;

    iget-wide v10, v1, Lh2/e;->a:J

    iget-object v12, v1, Lh2/e;->b:Lw1/h;

    invoke-virtual/range {p1 .. p1}, Lh2/e;->d()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lh2/e;->c()Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lh2/e;->a()J

    move-result-wide v19

    move-object v9, v8

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    invoke-direct/range {v9 .. v20}, Lg2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lh2/h;->g:Landroidx/media3/exoplayer/source/s$a;

    iget v3, v1, Lh2/e;->c:I

    iget v4, v0, Lh2/h;->a:I

    iget-object v5, v1, Lh2/e;->d:Landroidx/media3/common/r;

    iget v6, v1, Lh2/e;->e:I

    iget-object v7, v1, Lh2/e;->f:Ljava/lang/Object;

    iget-wide v8, v1, Lh2/e;->g:J

    iget-wide v10, v1, Lh2/e;->h:J

    move-object/from16 v21, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    move/from16 v32, p6

    invoke-virtual/range {v21 .. v32}, Landroidx/media3/exoplayer/source/s$a;->C(Lg2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public G(Lh2/h$b;)V
    .locals 3

    iput-object p1, p0, Lh2/h;->r:Lh2/h$b;

    iget-object p1, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/e0;->U()V

    iget-object p1, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->U()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/upstream/Loader;->l(Landroidx/media3/exoplayer/upstream/Loader$e;)V

    return-void
.end method

.method public I(J)V
    .locals 8

    iput-wide p1, p0, Lh2/h;->t:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh2/h;->w:Z

    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-wide p1, p0, Lh2/h;->s:J

    return-void

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh2/a;

    iget-wide v3, v2, Lh2/e;->g:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    iget-wide v4, v2, Lh2/a;->k:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    const/4 v1, 0x1

    if-eqz v2, :cond_4

    iget-object v3, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v2, v0}, Lh2/a;->g(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/source/e0;->b0(I)Z

    move-result v2

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p0}, Lh2/h;->getNextLoadPositionUs()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    invoke-virtual {v2, p1, p2, v3}, Landroidx/media3/exoplayer/source/e0;->c0(JZ)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_6

    iget-object v2, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lh2/h;->F(II)I

    move-result v2

    iput v2, p0, Lh2/h;->u:I

    iget-object v2, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length v3, v2

    :goto_5
    if-ge v0, v3, :cond_9

    aget-object v4, v2, v0

    invoke-virtual {v4, p1, p2, v1}, Landroidx/media3/exoplayer/source/e0;->c0(JZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iput-wide p1, p0, Lh2/h;->s:J

    iput-boolean v0, p0, Lh2/h;->y:Z

    iget-object p1, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lh2/h;->u:I

    iget-object p1, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/e0;->s()V

    iget-object p1, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length p2, p1

    :goto_6
    if-ge v0, p2, :cond_7

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/e0;->s()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->e()V

    goto :goto_7

    :cond_8
    iget-object p1, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->f()V

    invoke-direct {p0}, Lh2/h;->H()V

    :cond_9
    :goto_7
    return-void
.end method

.method public J(JI)Lh2/h$a;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lh2/h;->b:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    iget-object p3, p0, Lh2/h;->d:[Z

    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object p3, p0, Lh2/h;->d:[Z

    aput-boolean v1, p3, v0

    iget-object p3, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1}, Landroidx/media3/exoplayer/source/e0;->c0(JZ)Z

    new-instance p1, Lh2/h$a;

    iget-object p2, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lh2/h$a;-><init>(Lh2/h;Lh2/h;Landroidx/media3/exoplayer/source/e0;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 11

    iget-boolean v0, p0, Lh2/h;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iget-wide v3, p0, Lh2/h;->s:J

    :goto_0
    move-object v9, v2

    move-wide v7, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lh2/h;->l:Ljava/util/List;

    invoke-direct {p0}, Lh2/h;->v()Lh2/a;

    move-result-object v3

    iget-wide v3, v3, Lh2/e;->h:J

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lh2/h;->e:Lh2/i;

    iget-object v10, p0, Lh2/h;->j:Lh2/g;

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, Lh2/i;->c(Landroidx/media3/exoplayer/v2;JLjava/util/List;Lh2/g;)V

    iget-object p1, p0, Lh2/h;->j:Lh2/g;

    iget-boolean v2, p1, Lh2/g;->b:Z

    iget-object v3, p1, Lh2/g;->a:Lh2/e;

    invoke-virtual {p1}, Lh2/g;->a()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p1, 0x1

    if-eqz v2, :cond_2

    iput-wide v4, p0, Lh2/h;->s:J

    iput-boolean p1, p0, Lh2/h;->y:Z

    return p1

    :cond_2
    if-nez v3, :cond_3

    return v1

    :cond_3
    iput-object v3, p0, Lh2/h;->p:Lh2/e;

    invoke-direct {p0, v3}, Lh2/h;->x(Lh2/e;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v3

    check-cast v2, Lh2/a;

    if-eqz v0, :cond_6

    iget-wide v6, v2, Lh2/e;->g:J

    iget-wide v8, p0, Lh2/h;->s:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_5

    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0, v8, v9}, Landroidx/media3/exoplayer/source/e0;->e0(J)V

    iget-object v0, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length v6, v0

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v0, v7

    iget-wide v9, p0, Lh2/h;->s:J

    invoke-virtual {v8, v9, v10}, Landroidx/media3/exoplayer/source/e0;->e0(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lh2/h;->w:Z

    if-eqz v0, :cond_5

    iget-object v0, v2, Lh2/e;->d:Landroidx/media3/common/r;

    iget-object v6, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iget-object v0, v0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v6, v0}, Landroidx/media3/common/y;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, p1

    iput-boolean v0, p0, Lh2/h;->x:Z

    :cond_5
    iput-boolean v1, p0, Lh2/h;->w:Z

    iput-wide v4, p0, Lh2/h;->s:J

    :cond_6
    iget-object v0, p0, Lh2/h;->o:Lh2/c;

    invoke-virtual {v2, v0}, Lh2/a;->i(Lh2/c;)V

    iget-object v0, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    instance-of v0, v3, Lh2/l;

    if-eqz v0, :cond_8

    move-object v0, v3

    check-cast v0, Lh2/l;

    iget-object v1, p0, Lh2/h;->o:Lh2/c;

    invoke-virtual {v0, v1}, Lh2/l;->e(Lh2/f$b;)V

    :cond_8
    :goto_3
    iget-object v0, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v1, p0, Lh2/h;->h:Landroidx/media3/exoplayer/upstream/m;

    iget v2, v3, Lh2/e;->c:I

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/upstream/m;->a(I)I

    move-result v1

    invoke-virtual {v0, v3, p0, v1}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;I)J

    return p1

    :cond_9
    :goto_4
    return v1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 1

    iget-object v0, p0, Lh2/h;->e:Lh2/i;

    invoke-interface {v0, p1, p2, p3}, Lh2/i;->b(JLandroidx/media3/exoplayer/c4;)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 3

    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lh2/h;->v:Lh2/a;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lh2/a;->g(I)I

    move-result v0

    iget-object v2, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lh2/h;->z()V

    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    iget-boolean v1, p0, Lh2/h;->y:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/media3/exoplayer/source/e0;->V(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->A()I

    move-result v0

    iget-object v1, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Landroidx/media3/exoplayer/source/e0;->r(JZZ)V

    iget-object p1, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/e0;->A()I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object p2, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/e0;->B()J

    move-result-wide v0

    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length v3, v2

    if-ge p2, v3, :cond_1

    aget-object v2, v2, p2

    iget-object v3, p0, Lh2/h;->d:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v0, v1, p3, v3}, Landroidx/media3/exoplayer/source/e0;->r(JZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lh2/h;->n(I)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 4

    iget-boolean v0, p0, Lh2/h;->y:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lh2/h;->s:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lh2/h;->t:J

    invoke-direct {p0}, Lh2/h;->v()Lh2/a;

    move-result-object v2

    invoke-virtual {v2}, Lh2/m;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh2/a;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Lh2/e;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-object v2, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->C()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lh2/h;->s:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lh2/h;->y:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lh2/h;->v()Lh2/a;

    move-result-object v0

    iget-wide v0, v0, Lh2/e;->h:J

    :goto_0
    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    iget-boolean v1, p0, Lh2/h;->y:Z

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

.method public bridge synthetic k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    check-cast p1, Lh2/e;

    invoke-virtual/range {p0 .. p7}, Lh2/h;->D(Lh2/e;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public m()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lh2/h;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lh2/h;->x:Z

    return v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lh2/h;->x:Z

    throw v1
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->Q()V

    iget-object v0, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh2/h;->e:Lh2/i;

    invoke-interface {v0}, Lh2/i;->maybeThrowError()V

    :cond_0
    return-void
.end method

.method public bridge synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    check-cast p1, Lh2/e;

    invoke-virtual/range {p0 .. p6}, Lh2/h;->E(Lh2/e;JJI)V

    return-void
.end method

.method public onLoaderReleased()V
    .locals 4

    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->W()V

    iget-object v0, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/e0;->W()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh2/h;->e:Lh2/i;

    invoke-interface {v0}, Lh2/i;->release()V

    iget-object v0, p0, Lh2/h;->r:Lh2/h$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lh2/h$b;->h(Lh2/h;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic p(Landroidx/media3/exoplayer/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Lh2/e;

    invoke-virtual/range {p0 .. p5}, Lh2/h;->C(Lh2/e;JJ)V

    return-void
.end method

.method public bridge synthetic q(Landroidx/media3/exoplayer/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Lh2/e;

    invoke-virtual/range {p0 .. p6}, Lh2/h;->B(Lh2/e;JJZ)V

    return-void
.end method

.method public reevaluateBuffer(J)V
    .locals 3

    iget-object v0, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh2/h;->p:Lh2/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh2/e;

    invoke-direct {p0, v0}, Lh2/h;->x(Lh2/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lh2/h;->w(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lh2/h;->e:Lh2/i;

    iget-object v2, p0, Lh2/h;->l:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0, v2}, Lh2/i;->d(JLh2/e;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->e()V

    invoke-direct {p0, v0}, Lh2/h;->x(Lh2/e;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v0, Lh2/a;

    iput-object v0, p0, Lh2/h;->v:Lh2/a;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lh2/h;->e:Lh2/i;

    iget-object v1, p0, Lh2/h;->l:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Lh2/i;->getPreferredQueueSize(JLjava/util/List;)I

    move-result p1

    iget-object p2, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    invoke-direct {p0, p1}, Lh2/h;->r(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public skipData(J)I
    .locals 3

    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    iget-boolean v2, p0, Lh2/h;->y:Z

    invoke-virtual {v0, p1, p2, v2}, Landroidx/media3/exoplayer/source/e0;->H(JZ)I

    move-result p1

    iget-object p2, p0, Lh2/h;->v:Lh2/a;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lh2/a;->g(I)I

    move-result p2

    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->F()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    iget-object p2, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/e0;->h0(I)V

    invoke-direct {p0}, Lh2/h;->z()V

    return p1
.end method

.method public t(J)V
    .locals 7

    iget-object v0, p0, Lh2/h;->i:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p0}, Lh2/h;->y()Z

    move-result v0

    if-nez v0, :cond_5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lh2/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lh2/h;->v()Lh2/a;

    move-result-object v2

    iget-wide v3, v2, Lh2/a;->l:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v3, v2, Lh2/e;->h:J

    :goto_0
    cmp-long v0, v3, p1

    if-gtz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->C()J

    move-result-wide v5

    cmp-long v0, v5, p1

    if-gtz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lh2/h;->m:Landroidx/media3/exoplayer/source/e0;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/e0;->u(J)V

    iget-object v0, p0, Lh2/h;->n:[Landroidx/media3/exoplayer/source/e0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroidx/media3/exoplayer/source/e0;->u(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lh2/h;->g:Landroidx/media3/exoplayer/source/s$a;

    iget v2, p0, Lh2/h;->a:I

    move-wide v3, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/source/s$a;->F(IJJ)V

    :cond_5
    :goto_2
    return-void
.end method

.method public u()Lh2/i;
    .locals 1

    iget-object v0, p0, Lh2/h;->e:Lh2/i;

    return-object v0
.end method

.method y()Z
    .locals 4

    iget-wide v0, p0, Lh2/h;->s:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
