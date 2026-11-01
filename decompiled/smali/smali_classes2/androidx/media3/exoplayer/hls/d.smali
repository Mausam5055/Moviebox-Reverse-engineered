.class public final Landroidx/media3/exoplayer/hls/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/hls/g;


# static fields
.field private static final f:[I


# instance fields
.field private final a:I

.field private b:Li3/s$a;

.field private c:Z

.field private d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/hls/d;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/d;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/hls/d;->a:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/d;->e:Z

    new-instance p1, Li3/h;

    invoke-direct {p1}, Li3/h;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/d;->b:Li3/s$a;

    return-void
.end method

.method private static f(ILjava/util/List;)V
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/hls/d;->f:[I

    invoke-static {v0, p0}, Lcom/google/common/primitives/Ints;->j([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private h(ILandroidx/media3/common/r;Ljava/util/List;Landroidx/media3/common/util/p0;)Ll2/r;
    .locals 8

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 p3, 0xd

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/hls/u;

    iget-object p2, p2, Landroidx/media3/common/r;->d:Ljava/lang/String;

    iget-object p3, p0, Landroidx/media3/exoplayer/hls/d;->b:Li3/s$a;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/d;->c:Z

    invoke-direct {p1, p2, p4, p3, v0}, Landroidx/media3/exoplayer/hls/u;-><init>(Ljava/lang/String;Landroidx/media3/common/util/p0;Li3/s$a;Z)V

    return-object p1

    :cond_1
    iget v1, p0, Landroidx/media3/exoplayer/hls/d;->a:I

    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/d;->e:Z

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/d;->b:Li3/s$a;

    iget-boolean v7, p0, Landroidx/media3/exoplayer/hls/d;->c:Z

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/hls/d;->j(IZLandroidx/media3/common/r;Ljava/util/List;Landroidx/media3/common/util/p0;Li3/s$a;Z)Ls3/k0;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/d;->b:Li3/s$a;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/d;->c:Z

    iget v5, p0, Landroidx/media3/exoplayer/hls/d;->d:I

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/d;->i(Li3/s$a;ZLandroidx/media3/common/util/p0;Landroidx/media3/common/r;Ljava/util/List;I)Lf3/h;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Le3/f;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Le3/f;-><init>(IJ)V

    return-object p1

    :cond_4
    new-instance p1, Ls3/h;

    invoke-direct {p1}, Ls3/h;-><init>()V

    return-object p1

    :cond_5
    new-instance p1, Ls3/e;

    invoke-direct {p1}, Ls3/e;-><init>()V

    return-object p1

    :cond_6
    new-instance p1, Ls3/b;

    invoke-direct {p1}, Ls3/b;-><init>()V

    return-object p1
.end method

.method private static i(Li3/s$a;ZLandroidx/media3/common/util/p0;Landroidx/media3/common/r;Ljava/util/List;I)Lf3/h;
    .locals 7

    invoke-static {p3}, Landroidx/media3/exoplayer/hls/d;->m(Landroidx/media3/common/r;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p0, Li3/s$a;->a:Li3/s$a;

    or-int/lit8 p3, p3, 0x20

    :cond_1
    move-object v1, p0

    invoke-static {p5}, Lf3/h;->j(I)I

    move-result p0

    or-int v2, p3, p0

    new-instance p0, Lf3/h;

    if-eqz p4, :cond_2

    :goto_1
    move-object v5, p4

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p4

    goto :goto_1

    :goto_2
    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lf3/h;-><init>(Li3/s$a;ILandroidx/media3/common/util/p0;Lf3/t;Ljava/util/List;Ll2/s0;)V

    return-object p0
.end method

.method private static j(IZLandroidx/media3/common/r;Ljava/util/List;Landroidx/media3/common/util/p0;Li3/s$a;Z)Ls3/k0;
    .locals 8

    or-int/lit8 v0, p0, 0x10

    if-eqz p3, :cond_0

    or-int/lit8 v0, p0, 0x30

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p0, Landroidx/media3/common/r$b;

    invoke-direct {p0}, Landroidx/media3/common/r$b;-><init>()V

    const-string p1, "application/cea-608"

    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_0
    iget-object p0, p2, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "audio/mp4a-latm"

    invoke-static {p0, p1}, Landroidx/media3/common/y;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const-string p1, "video/avc"

    invoke-static {p0, p1}, Landroidx/media3/common/y;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    if-nez p6, :cond_4

    sget-object p5, Li3/s$a;->a:Li3/s$a;

    const/4 p0, 0x1

    :goto_1
    move v3, p0

    move-object v4, p5

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    new-instance p0, Ls3/k0;

    new-instance v6, Ls3/j;

    invoke-direct {v6, v0, p3}, Ls3/j;-><init>(ILjava/util/List;)V

    const v7, 0x1b8a0

    const/4 v2, 0x2

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Ls3/k0;-><init>(IILi3/s$a;Landroidx/media3/common/util/p0;Ls3/l0$c;I)V

    return-object p0
.end method

.method private static m(Landroidx/media3/common/r;)Z
    .locals 4

    iget-object p0, p0, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/x;->e()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    move-result-object v2

    instance-of v3, v2, Landroidx/media3/exoplayer/hls/s;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/media3/exoplayer/hls/s;

    iget-object p0, v2, Landroidx/media3/exoplayer/hls/s;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static o(Ll2/r;Ll2/s;)Z
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Ll2/r;->d(Ll2/s;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    throw p0

    :catch_0
    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic a(Li3/s$a;)Landroidx/media3/exoplayer/hls/g;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/d;->n(Li3/s$a;)Landroidx/media3/exoplayer/hls/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(I)Landroidx/media3/exoplayer/hls/g;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/d;->l(I)Landroidx/media3/exoplayer/hls/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Z)Landroidx/media3/exoplayer/hls/g;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/d;->k(Z)Landroidx/media3/exoplayer/hls/d;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroidx/media3/common/r;)Landroidx/media3/common/r;
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/d;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/d;->b:Li3/s$a;

    invoke-interface {v0, p1}, Li3/s$a;->a(Landroidx/media3/common/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v0

    const-string v1, "application/x-media3-cues"

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/d;->b:Li3/s$a;

    invoke-interface {v1, p1}, Li3/s$a;->b(Landroidx/media3/common/r;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->W(I)Landroidx/media3/common/r$b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/r$b;->y0(J)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic e(Landroid/net/Uri;Landroidx/media3/common/r;Ljava/util/List;Landroidx/media3/common/util/p0;Ljava/util/Map;Ll2/s;Ly1/f4;)Landroidx/media3/exoplayer/hls/j;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/hls/d;->g(Landroid/net/Uri;Landroidx/media3/common/r;Ljava/util/List;Landroidx/media3/common/util/p0;Ljava/util/Map;Ll2/s;Ly1/f4;)Landroidx/media3/exoplayer/hls/b;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/net/Uri;Landroidx/media3/common/r;Ljava/util/List;Landroidx/media3/common/util/p0;Ljava/util/Map;Ll2/s;Ly1/f4;)Landroidx/media3/exoplayer/hls/b;
    .locals 14

    move-object v0, p0

    move-object/from16 v3, p2

    iget-object v1, v3, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/o;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static/range {p5 .. p5}, Landroidx/media3/common/o;->b(Ljava/util/Map;)I

    move-result v2

    invoke-static {p1}, Landroidx/media3/common/o;->c(Landroid/net/Uri;)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    sget-object v6, Landroidx/media3/exoplayer/hls/d;->f:[I

    array-length v7, v6

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v5}, Landroidx/media3/exoplayer/hls/d;->f(ILjava/util/List;)V

    invoke-static {v2, v5}, Landroidx/media3/exoplayer/hls/d;->f(ILjava/util/List;)V

    invoke-static {v4, v5}, Landroidx/media3/exoplayer/hls/d;->f(ILjava/util/List;)V

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_0

    aget v10, v6, v9

    invoke-static {v10, v5}, Landroidx/media3/exoplayer/hls/d;->f(ILjava/util/List;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-interface/range {p6 .. p6}, Ll2/s;->resetPeekPosition()V

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v8, v7, :cond_4

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct {p0, v7, v3, v9, v10}, Landroidx/media3/exoplayer/hls/d;->h(ILandroidx/media3/common/r;Ljava/util/List;Landroidx/media3/common/util/p0;)Ll2/r;

    move-result-object v11

    invoke-static {v11}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ll2/r;

    move-object/from16 v12, p6

    invoke-static {v11, v12}, Landroidx/media3/exoplayer/hls/d;->o(Ll2/r;Ll2/s;)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v7, Landroidx/media3/exoplayer/hls/b;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/d;->b:Li3/s$a;

    iget-boolean v6, v0, Landroidx/media3/exoplayer/hls/d;->c:Z

    move-object v1, v7

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/hls/b;-><init>(Ll2/r;Landroidx/media3/common/r;Landroidx/media3/common/util/p0;Li3/s$a;Z)V

    return-object v7

    :cond_1
    if-nez v6, :cond_3

    if-eq v7, v1, :cond_2

    if-eq v7, v2, :cond_2

    if-eq v7, v4, :cond_2

    const/16 v13, 0xb

    if-ne v7, v13, :cond_3

    :cond_2
    move-object v6, v11

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v10, p4

    new-instance v7, Landroidx/media3/exoplayer/hls/b;

    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ll2/r;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/d;->b:Li3/s$a;

    iget-boolean v6, v0, Landroidx/media3/exoplayer/hls/d;->c:Z

    move-object v1, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/hls/b;-><init>(Ll2/r;Landroidx/media3/common/r;Landroidx/media3/common/util/p0;Li3/s$a;Z)V

    return-object v7
.end method

.method public k(Z)Landroidx/media3/exoplayer/hls/d;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/d;->c:Z

    return-object p0
.end method

.method public l(I)Landroidx/media3/exoplayer/hls/d;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/hls/d;->d:I

    return-object p0
.end method

.method public n(Li3/s$a;)Landroidx/media3/exoplayer/hls/d;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/d;->b:Li3/s$a;

    return-object p0
.end method
