.class public final Ls3/i;
.super Ljava/lang/Object;

# interfaces
.implements Ls3/m;


# static fields
.field private static final x:[B


# instance fields
.field private final a:Z

.field private final b:Landroidx/media3/common/util/i0;

.field private final c:Landroidx/media3/common/util/j0;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ll2/s0;

.field private i:Ll2/s0;

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:J

.field private t:I

.field private u:J

.field private v:Ll2/s0;

.field private w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ls3/i;->x:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Ls3/i;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/i0;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/i0;-><init>([B)V

    iput-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    new-instance v0, Landroidx/media3/common/util/j0;

    sget-object v1, Ls3/i;->x:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/j0;-><init>([B)V

    iput-object v0, p0, Ls3/i;->c:Landroidx/media3/common/util/j0;

    const/4 v0, -0x1

    iput v0, p0, Ls3/i;->o:I

    iput v0, p0, Ls3/i;->p:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/i;->s:J

    iput-wide v0, p0, Ls3/i;->u:J

    iput-boolean p1, p0, Ls3/i;->a:Z

    iput-object p2, p0, Ls3/i;->d:Ljava/lang/String;

    iput p3, p0, Ls3/i;->e:I

    iput-object p4, p0, Ls3/i;->f:Ljava/lang/String;

    invoke-direct {p0}, Ls3/i;->r()V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Ls3/i;->h:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ls3/i;->v:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ls3/i;->i:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private f(Landroidx/media3/common/util/j0;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    iget-object v0, v0, Landroidx/media3/common/util/i0;->a:[B

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result p1

    aget-byte p1, v1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->p(I)V

    iget-object p1, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    iget v0, p0, Ls3/i;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Ls3/i;->p()V

    return-void

    :cond_1
    iget-boolean v0, p0, Ls3/i;->n:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls3/i;->n:Z

    iget v0, p0, Ls3/i;->q:I

    iput v0, p0, Ls3/i;->o:I

    iput p1, p0, Ls3/i;->p:I

    :cond_2
    invoke-direct {p0}, Ls3/i;->s()V

    return-void
.end method

.method private g(Landroidx/media3/common/util/j0;I)Z
    .locals 8

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    iget-object v0, v0, Landroidx/media3/common/util/i0;->a:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ls3/i;->v(Landroidx/media3/common/util/j0;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->p(I)V

    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    iget v4, p0, Ls3/i;->o:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-eq v0, v4, :cond_1

    return v2

    :cond_1
    iget v4, p0, Ls3/i;->p:I

    const/4 v6, 0x2

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    iget-object v4, v4, Landroidx/media3/common/util/i0;->a:[B

    invoke-direct {p0, p1, v4, v1}, Ls3/i;->v(Landroidx/media3/common/util/j0;[BI)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    iget-object v4, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/i0;->p(I)V

    iget-object v4, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    invoke-virtual {v4, v3}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v4

    iget v7, p0, Ls3/i;->p:I

    if-eq v4, v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, p2, 0x2

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/j0;->W(I)V

    :cond_4
    iget-object v4, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    iget-object v4, v4, Landroidx/media3/common/util/i0;->a:[B

    invoke-direct {p0, p1, v4, v3}, Ls3/i;->v(Landroidx/media3/common/util/j0;[BI)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/i0;->p(I)V

    iget-object v3, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_6

    return v2

    :cond_6
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v4

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result p1

    add-int/2addr p2, v3

    if-lt p2, p1, :cond_7

    return v1

    :cond_7
    aget-byte v3, v4, p2

    if-ne v3, v5, :cond_a

    add-int/2addr p2, v1

    if-ne p2, p1, :cond_8

    return v1

    :cond_8
    aget-byte p1, v4, p2

    invoke-direct {p0, v5, p1}, Ls3/i;->k(BB)Z

    move-result p1

    if-eqz p1, :cond_9

    aget-byte p1, v4, p2

    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_9

    goto :goto_0

    :cond_9
    move v1, v2

    :goto_0
    return v1

    :cond_a
    const/16 v0, 0x49

    if-eq v3, v0, :cond_b

    return v2

    :cond_b
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_c

    return v1

    :cond_c
    aget-byte v0, v4, v0

    const/16 v3, 0x44

    if-eq v0, v3, :cond_d

    return v2

    :cond_d
    add-int/2addr p2, v6

    if-ne p2, p1, :cond_e

    return v1

    :cond_e
    aget-byte p1, v4, p2

    const/16 p2, 0x33

    if-ne p1, p2, :cond_f

    goto :goto_1

    :cond_f
    move v1, v2

    :goto_1
    return v1
.end method

.method private h(Landroidx/media3/common/util/j0;[BI)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    iget v1, p0, Ls3/i;->k:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Ls3/i;->k:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    iget p1, p0, Ls3/i;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Ls3/i;->k:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private i(Landroidx/media3/common/util/j0;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_9

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, v0, v1

    and-int/lit16 v5, v4, 0xff

    iget v6, p0, Ls3/i;->l:I

    const/16 v7, 0x200

    if-ne v6, v7, :cond_3

    int-to-byte v6, v5

    const/4 v8, -0x1

    invoke-direct {p0, v8, v6}, Ls3/i;->k(BB)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Ls3/i;->n:Z

    if-nez v6, :cond_0

    add-int/lit8 v6, v1, -0x1

    invoke-direct {p0, p1, v6}, Ls3/i;->g(Landroidx/media3/common/util/j0;I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    and-int/lit8 v0, v4, 0x8

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Ls3/i;->q:I

    const/4 v0, 0x1

    and-int/lit8 v1, v4, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Ls3/i;->m:Z

    iget-boolean v0, p0, Ls3/i;->n:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Ls3/i;->q()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Ls3/i;->s()V

    :goto_2
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/j0;->W(I)V

    return-void

    :cond_3
    iget v4, p0, Ls3/i;->l:I

    or-int/2addr v5, v4

    const/16 v6, 0x149

    if-eq v5, v6, :cond_7

    const/16 v6, 0x1ff

    if-eq v5, v6, :cond_6

    const/16 v6, 0x344

    if-eq v5, v6, :cond_5

    const/16 v6, 0x433

    if-eq v5, v6, :cond_4

    const/16 v5, 0x100

    if-eq v4, v5, :cond_8

    iput v5, p0, Ls3/i;->l:I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Ls3/i;->t()V

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/j0;->W(I)V

    return-void

    :cond_5
    const/16 v1, 0x400

    iput v1, p0, Ls3/i;->l:I

    goto :goto_3

    :cond_6
    iput v7, p0, Ls3/i;->l:I

    goto :goto_3

    :cond_7
    const/16 v1, 0x300

    iput v1, p0, Ls3/i;->l:I

    :cond_8
    :goto_3
    move v1, v3

    goto :goto_0

    :cond_9
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/j0;->W(I)V

    return-void
.end method

.method private k(BB)Z
    .locals 0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    invoke-static {p1}, Ls3/i;->l(I)Z

    move-result p1

    return p1
.end method

.method public static l(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private m()V
    .locals 8

    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->p(I)V

    iget-boolean v0, p0, Ls3/i;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AdtsReader"

    invoke-static {v3, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    iget v3, p0, Ls3/i;->p:I

    invoke-static {v1, v3, v0}, Ll2/a;->a(III)[B

    move-result-object v0

    invoke-static {v0}, Ll2/a;->e([B)Ll2/a$b;

    move-result-object v1

    new-instance v3, Landroidx/media3/common/r$b;

    invoke-direct {v3}, Landroidx/media3/common/r$b;-><init>()V

    iget-object v4, p0, Ls3/i;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v3

    iget-object v4, p0, Ls3/i;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v3

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v3

    iget-object v4, v1, Ll2/a$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v3

    iget v4, v1, Ll2/a$b;->b:I

    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v3

    iget v1, v1, Ll2/a$b;->a:I

    invoke-virtual {v3, v1}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v1, p0, Ls3/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Ls3/i;->e:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    iget v1, v0, Landroidx/media3/common/r;->F:I

    int-to-long v3, v1

    const-wide/32 v5, 0x3d090000

    div-long/2addr v5, v3

    iput-wide v5, p0, Ls3/i;->s:J

    iget-object v1, p0, Ls3/i;->h:Ll2/s0;

    invoke-interface {v1, v0}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    iput-boolean v2, p0, Ls3/i;->r:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    :goto_1
    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->r(I)V

    iget-object v0, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x7

    iget-boolean v2, p0, Ls3/i;->m:Z

    if-eqz v2, :cond_2

    add-int/lit8 v1, v0, -0x9

    :cond_2
    move v7, v1

    iget-object v3, p0, Ls3/i;->h:Ll2/s0;

    iget-wide v4, p0, Ls3/i;->s:J

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Ls3/i;->u(Ll2/s0;JII)V

    return-void
.end method

.method private n()V
    .locals 9

    iget-object v0, p0, Ls3/i;->i:Ll2/s0;

    iget-object v1, p0, Ls3/i;->c:Landroidx/media3/common/util/j0;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget-object v0, p0, Ls3/i;->c:Landroidx/media3/common/util/j0;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v4, p0, Ls3/i;->i:Ll2/s0;

    iget-object v0, p0, Ls3/i;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->G()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Ls3/i;->u(Ll2/s0;JII)V

    return-void
.end method

.method private o(Landroidx/media3/common/util/j0;)V
    .locals 7

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    iget v1, p0, Ls3/i;->t:I

    iget v2, p0, Ls3/i;->k:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ls3/i;->v:Ll2/s0;

    invoke-interface {v1, p1, v0}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget p1, p0, Ls3/i;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Ls3/i;->k:I

    iget v0, p0, Ls3/i;->t:I

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Ls3/i;->u:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Ls3/i;->v:Ll2/s0;

    iget-wide v1, p0, Ls3/i;->u:J

    iget v4, p0, Ls3/i;->t:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Ll2/s0;->d(JIIILl2/s0$a;)V

    iget-wide v0, p0, Ls3/i;->u:J

    iget-wide v2, p0, Ls3/i;->w:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ls3/i;->u:J

    invoke-direct {p0}, Ls3/i;->r()V

    :cond_1
    return-void
.end method

.method private p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls3/i;->n:Z

    invoke-direct {p0}, Ls3/i;->r()V

    return-void
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls3/i;->j:I

    const/4 v0, 0x0

    iput v0, p0, Ls3/i;->k:I

    return-void
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls3/i;->j:I

    iput v0, p0, Ls3/i;->k:I

    const/16 v0, 0x100

    iput v0, p0, Ls3/i;->l:I

    return-void
.end method

.method private s()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ls3/i;->j:I

    const/4 v0, 0x0

    iput v0, p0, Ls3/i;->k:I

    return-void
.end method

.method private t()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Ls3/i;->j:I

    sget-object v0, Ls3/i;->x:[B

    array-length v0, v0

    iput v0, p0, Ls3/i;->k:I

    const/4 v0, 0x0

    iput v0, p0, Ls3/i;->t:I

    iget-object v1, p0, Ls3/i;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-void
.end method

.method private u(Ll2/s0;JII)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ls3/i;->j:I

    iput p4, p0, Ls3/i;->k:I

    iput-object p1, p0, Ls3/i;->v:Ll2/s0;

    iput-wide p2, p0, Ls3/i;->w:J

    iput p5, p0, Ls3/i;->t:I

    return-void
.end method

.method private v(Landroidx/media3/common/util/j0;[BI)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2, v1, p3}, Landroidx/media3/common/util/j0;->l([BII)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 2

    invoke-direct {p0}, Ls3/i;->e()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    if-lez v0, :cond_7

    iget v0, p0, Ls3/i;->j:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Ls3/i;->o(Landroidx/media3/common/util/j0;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    iget-boolean v0, p0, Ls3/i;->m:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    :goto_1
    iget-object v1, p0, Ls3/i;->b:Landroidx/media3/common/util/i0;

    iget-object v1, v1, Landroidx/media3/common/util/i0;->a:[B

    invoke-direct {p0, p1, v1, v0}, Ls3/i;->h(Landroidx/media3/common/util/j0;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ls3/i;->m()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ls3/i;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Ls3/i;->h(Landroidx/media3/common/util/j0;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ls3/i;->n()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Ls3/i;->f(Landroidx/media3/common/util/j0;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Ls3/i;->i(Landroidx/media3/common/util/j0;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public b(JI)V
    .locals 0

    iput-wide p1, p0, Ls3/i;->u:J

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public d(Ll2/t;Ls3/l0$d;)V
    .locals 2

    invoke-virtual {p2}, Ls3/l0$d;->a()V

    invoke-virtual {p2}, Ls3/l0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls3/i;->g:Ljava/lang/String;

    invoke-virtual {p2}, Ls3/l0$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v0

    iput-object v0, p0, Ls3/i;->h:Ll2/s0;

    iput-object v0, p0, Ls3/i;->v:Ll2/s0;

    iget-boolean v0, p0, Ls3/i;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ls3/l0$d;->a()V

    invoke-virtual {p2}, Ls3/l0$d;->c()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p1

    iput-object p1, p0, Ls3/i;->i:Ll2/s0;

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {p2}, Ls3/l0$d;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    iget-object v0, p0, Ls3/i;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    const-string v0, "application/id3"

    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p2

    invoke-interface {p1, p2}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ll2/n;

    invoke-direct {p1}, Ll2/n;-><init>()V

    iput-object p1, p0, Ls3/i;->i:Ll2/s0;

    :goto_0
    return-void
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Ls3/i;->s:J

    return-wide v0
.end method

.method public seek()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ls3/i;->u:J

    invoke-direct {p0}, Ls3/i;->p()V

    return-void
.end method
