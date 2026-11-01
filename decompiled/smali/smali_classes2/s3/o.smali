.class public final Ls3/o;
.super Ljava/lang/Object;

# interfaces
.implements Ls3/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/o$a;,
        Ls3/o$b;
    }
.end annotation


# static fields
.field private static final m:[F


# instance fields
.field private final a:Ls3/n0;

.field private final b:Ljava/lang/String;

.field private final c:Landroidx/media3/common/util/j0;

.field private final d:[Z

.field private final e:Ls3/o$a;

.field private final f:Ls3/w;

.field private g:Ls3/o$b;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ll2/s0;

.field private k:Z

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ls3/o;->m:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Ls3/n0;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/o;->a:Ls3/n0;

    iput-object p2, p0, Ls3/o;->b:Ljava/lang/String;

    const/4 p2, 0x4

    new-array p2, p2, [Z

    iput-object p2, p0, Ls3/o;->d:[Z

    new-instance p2, Ls3/o$a;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Ls3/o$a;-><init>(I)V

    iput-object p2, p0, Ls3/o;->e:Ls3/o$a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Ls3/o;->l:J

    if-eqz p1, :cond_0

    new-instance p1, Ls3/w;

    const/16 p2, 0xb2

    invoke-direct {p1, p2, v0}, Ls3/w;-><init>(II)V

    iput-object p1, p0, Ls3/o;->f:Ls3/w;

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Ls3/o;->c:Landroidx/media3/common/util/j0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ls3/o;->f:Ls3/w;

    iput-object p1, p0, Ls3/o;->c:Landroidx/media3/common/util/j0;

    :goto_0
    return-void
.end method

.method private static e(Ls3/o$a;ILjava/lang/String;Ljava/lang/String;)Landroidx/media3/common/r;
    .locals 8

    iget-object v0, p0, Ls3/o$a;->e:[B

    iget p0, p0, Ls3/o$a;->c:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance v0, Landroidx/media3/common/util/i0;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/i0;-><init>([B)V

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->s(I)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->s(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v4, "Invalid aspect ratio"

    const-string v5, "H263Reader"

    const/16 v6, 0xf

    if-ne p1, v6, :cond_2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v5, v4}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float v1, v1

    div-float v2, p1, v1

    goto :goto_0

    :cond_2
    sget-object v1, Ls3/o;->m:[F

    array-length v7, v1

    if-ge p1, v7, :cond_3

    aget v2, v1, p1

    goto :goto_0

    :cond_3
    invoke-static {v5, v4}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->r(I)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/i0;->r(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Unhandled video object layer shape"

    invoke-static {v5, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_6

    const-string p1, "Invalid vop_increment_time_resolution"

    invoke-static {v5, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_1
    if-lez p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    :cond_8
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    invoke-virtual {v0}, Landroidx/media3/common/util/i0;->q()V

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    const-string p3, "video/mp4v-es"

    invoke-virtual {p2, p3}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/media3/common/r$b;->q0(F)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 14

    iget-object v0, p0, Ls3/o;->g:Ls3/o$b;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ls3/o;->j:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    iget-wide v3, p0, Ls3/o;->h:J

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Ls3/o;->h:J

    iget-object v3, p0, Ls3/o;->j:Ll2/s0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v4

    invoke-interface {v3, p1, v4}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    :goto_0
    iget-object v3, p0, Ls3/o;->d:[Z

    invoke-static {v2, v0, v1, v3}, Landroidx/media3/container/g;->e([BII[Z)I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-boolean p1, p0, Ls3/o;->k:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ls3/o;->e:Ls3/o$a;

    invoke-virtual {p1, v2, v0, v1}, Ls3/o$a;->a([BII)V

    :cond_0
    iget-object p1, p0, Ls3/o;->g:Ls3/o$b;

    invoke-virtual {p1, v2, v0, v1}, Ls3/o$b;->a([BII)V

    iget-object p1, p0, Ls3/o;->f:Ls3/w;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v0, v1}, Ls3/w;->a([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v4

    add-int/lit8 v5, v3, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sub-int v6, v3, v0

    iget-boolean v7, p0, Ls3/o;->k:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_5

    if-lez v6, :cond_3

    iget-object v7, p0, Ls3/o;->e:Ls3/o$a;

    invoke-virtual {v7, v2, v0, v3}, Ls3/o$a;->a([BII)V

    :cond_3
    if-gez v6, :cond_4

    neg-int v7, v6

    goto :goto_1

    :cond_4
    move v7, v9

    :goto_1
    iget-object v10, p0, Ls3/o;->e:Ls3/o$a;

    invoke-virtual {v10, v4, v7}, Ls3/o$a;->b(II)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Ls3/o;->j:Ll2/s0;

    iget-object v10, p0, Ls3/o;->e:Ls3/o$a;

    iget v11, v10, Ls3/o$a;->d:I

    iget-object v12, p0, Ls3/o;->i:Ljava/lang/String;

    invoke-static {v12}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, p0, Ls3/o;->b:Ljava/lang/String;

    invoke-static {v10, v11, v12, v13}, Ls3/o;->e(Ls3/o$a;ILjava/lang/String;Ljava/lang/String;)Landroidx/media3/common/r;

    move-result-object v10

    invoke-interface {v7, v10}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    iput-boolean v8, p0, Ls3/o;->k:Z

    :cond_5
    iget-object v7, p0, Ls3/o;->g:Ls3/o$b;

    invoke-virtual {v7, v2, v0, v3}, Ls3/o$b;->a([BII)V

    iget-object v7, p0, Ls3/o;->f:Ls3/w;

    if-eqz v7, :cond_8

    if-lez v6, :cond_6

    invoke-virtual {v7, v2, v0, v3}, Ls3/w;->a([BII)V

    goto :goto_2

    :cond_6
    neg-int v9, v6

    :goto_2
    iget-object v0, p0, Ls3/o;->f:Ls3/w;

    invoke-virtual {v0, v9}, Ls3/w;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ls3/o;->f:Ls3/w;

    iget-object v6, v0, Ls3/w;->d:[B

    iget v0, v0, Ls3/w;->e:I

    invoke-static {v6, v0}, Landroidx/media3/container/g;->L([BI)I

    move-result v0

    iget-object v6, p0, Ls3/o;->c:Landroidx/media3/common/util/j0;

    invoke-static {v6}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/util/j0;

    iget-object v7, p0, Ls3/o;->f:Ls3/w;

    iget-object v7, v7, Ls3/w;->d:[B

    invoke-virtual {v6, v7, v0}, Landroidx/media3/common/util/j0;->U([BI)V

    iget-object v0, p0, Ls3/o;->a:Ls3/n0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls3/n0;

    iget-wide v6, p0, Ls3/o;->l:J

    iget-object v9, p0, Ls3/o;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v6, v7, v9}, Ls3/n0;->a(JLandroidx/media3/common/util/j0;)V

    :cond_7
    const/16 v0, 0xb2

    if-ne v4, v0, :cond_8

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    add-int/lit8 v6, v3, 0x2

    aget-byte v0, v0, v6

    if-ne v0, v8, :cond_8

    iget-object v0, p0, Ls3/o;->f:Ls3/w;

    invoke-virtual {v0, v4}, Ls3/w;->e(I)V

    :cond_8
    sub-int v0, v1, v3

    iget-wide v6, p0, Ls3/o;->h:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iget-object v3, p0, Ls3/o;->g:Ls3/o$b;

    iget-boolean v8, p0, Ls3/o;->k:Z

    invoke-virtual {v3, v6, v7, v0, v8}, Ls3/o$b;->b(JIZ)V

    iget-object v0, p0, Ls3/o;->g:Ls3/o$b;

    iget-wide v6, p0, Ls3/o;->l:J

    invoke-virtual {v0, v4, v6, v7}, Ls3/o$b;->c(IJ)V

    move v0, v5

    goto/16 :goto_0
.end method

.method public b(JI)V
    .locals 0

    iput-wide p1, p0, Ls3/o;->l:J

    return-void
.end method

.method public c(Z)V
    .locals 4

    iget-object v0, p0, Ls3/o;->g:Ls3/o$b;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls3/o;->g:Ls3/o$b;

    iget-wide v0, p0, Ls3/o;->h:J

    const/4 v2, 0x0

    iget-boolean v3, p0, Ls3/o;->k:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Ls3/o$b;->b(JIZ)V

    iget-object p1, p0, Ls3/o;->g:Ls3/o$b;

    invoke-virtual {p1}, Ls3/o$b;->d()V

    :cond_0
    return-void
.end method

.method public d(Ll2/t;Ls3/l0$d;)V
    .locals 2

    invoke-virtual {p2}, Ls3/l0$d;->a()V

    invoke-virtual {p2}, Ls3/l0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls3/o;->i:Ljava/lang/String;

    invoke-virtual {p2}, Ls3/l0$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v0

    iput-object v0, p0, Ls3/o;->j:Ll2/s0;

    new-instance v1, Ls3/o$b;

    invoke-direct {v1, v0}, Ls3/o$b;-><init>(Ll2/s0;)V

    iput-object v1, p0, Ls3/o;->g:Ls3/o$b;

    iget-object v0, p0, Ls3/o;->a:Ls3/n0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ls3/n0;->b(Ll2/t;Ls3/l0$d;)V

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Ls3/o;->d:[Z

    invoke-static {v0}, Landroidx/media3/container/g;->c([Z)V

    iget-object v0, p0, Ls3/o;->e:Ls3/o$a;

    invoke-virtual {v0}, Ls3/o$a;->c()V

    iget-object v0, p0, Ls3/o;->g:Ls3/o$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls3/o$b;->d()V

    :cond_0
    iget-object v0, p0, Ls3/o;->f:Ls3/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ls3/w;->d()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls3/o;->h:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/o;->l:J

    return-void
.end method
