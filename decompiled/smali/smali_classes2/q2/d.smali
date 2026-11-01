.class public final Lq2/d;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# static fields
.field public static final o:Ll2/x;


# instance fields
.field private final a:[B

.field private final b:Landroidx/media3/common/util/j0;

.field private final c:Z

.field private final d:Ll2/y$a;

.field private e:Ll2/t;

.field private f:Ll2/s0;

.field private g:I

.field private h:Landroidx/media3/common/x;

.field private i:Ll2/b0;

.field private j:I

.field private k:I

.field private l:Lq2/b;

.field private m:I

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq2/c;

    invoke-direct {v0}, Lq2/c;-><init>()V

    sput-object v0, Lq2/d;->o:Ll2/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq2/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lq2/d;->a:[B

    new-instance v0, Landroidx/media3/common/util/j0;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/j0;-><init>([BI)V

    iput-object v0, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lq2/d;->c:Z

    new-instance p1, Ll2/y$a;

    invoke-direct {p1}, Ll2/y$a;-><init>()V

    iput-object p1, p0, Lq2/d;->d:Ll2/y$a;

    iput v2, p0, Lq2/d;->g:I

    return-void
.end method

.method public static synthetic a()[Ll2/r;
    .locals 1

    invoke-static {}, Lq2/d;->k()[Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroidx/media3/common/util/j0;Z)J
    .locals 4

    iget-object v0, p0, Lq2/d;->i:Ll2/b0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v1, p0, Lq2/d;->i:Ll2/b0;

    iget v2, p0, Lq2/d;->k:I

    iget-object v3, p0, Lq2/d;->d:Ll2/y$a;

    invoke-static {p1, v1, v2, v3}, Ll2/y;->d(Landroidx/media3/common/util/j0;Ll2/b0;ILl2/y$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Lq2/d;->d:Ll2/y$a;

    iget-wide p1, p1, Ll2/y$a;->a:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result p2

    iget v1, p0, Lq2/d;->j:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 p2, 0x0

    :try_start_0
    iget-object v1, p0, Lq2/d;->i:Ll2/b0;

    iget v2, p0, Lq2/d;->k:I

    iget-object v3, p0, Lq2/d;->d:Ll2/y$a;

    invoke-static {p1, v1, v2, v3}, Ll2/y;->d(Landroidx/media3/common/util/j0;Ll2/b0;ILl2/y$a;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v1, p2

    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_3

    :cond_2
    move p2, v1

    :goto_3
    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Lq2/d;->d:Ll2/y$a;

    iget-wide p1, p1, Ll2/y$a;->a:J

    return-wide p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->W(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private h(Ll2/s;)V
    .locals 5

    invoke-static {p1}, Ll2/z;->b(Ll2/s;)I

    move-result v0

    iput v0, p0, Lq2/d;->k:I

    iget-object v0, p0, Lq2/d;->e:Ll2/t;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/t;

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v1

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lq2/d;->i(JJ)Ll2/m0;

    move-result-object p1

    invoke-interface {v0, p1}, Ll2/t;->f(Ll2/m0;)V

    const/4 p1, 0x5

    iput p1, p0, Lq2/d;->g:I

    return-void
.end method

.method private i(JJ)Ll2/m0;
    .locals 8

    iget-object v0, p0, Lq2/d;->i:Ll2/b0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lq2/d;->i:Ll2/b0;

    iget-object v0, v2, Ll2/b0;->k:Ll2/b0$a;

    if-eqz v0, :cond_0

    new-instance p3, Ll2/a0;

    invoke-direct {p3, v2, p1, p2}, Ll2/a0;-><init>(Ll2/b0;J)V

    return-object p3

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    iget-wide v0, v2, Ll2/b0;->j:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    new-instance v0, Lq2/b;

    iget v3, p0, Lq2/d;->k:I

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lq2/b;-><init>(Ll2/b0;IJJ)V

    iput-object v0, p0, Lq2/d;->l:Lq2/b;

    invoke-virtual {v0}, Ll2/e;->b()Ll2/m0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ll2/m0$b;

    invoke-virtual {v2}, Ll2/b0;->f()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ll2/m0$b;-><init>(J)V

    return-object p1
.end method

.method private j(Ll2/s;)V
    .locals 3

    iget-object v0, p0, Lq2/d;->a:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Ll2/s;->peekFully([BII)V

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    const/4 p1, 0x2

    iput p1, p0, Lq2/d;->g:I

    return-void
.end method

.method private static synthetic k()[Ll2/r;
    .locals 3

    new-instance v0, Lq2/d;

    invoke-direct {v0}, Lq2/d;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ll2/r;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private l()V
    .locals 11

    iget-wide v0, p0, Lq2/d;->n:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lq2/d;->i:Ll2/b0;

    invoke-static {v2}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll2/b0;

    iget v2, v2, Ll2/b0;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v0, p0, Lq2/d;->f:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ll2/s0;

    iget v8, p0, Lq2/d;->m:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Ll2/s0;->d(JIIILl2/s0$a;)V

    return-void
.end method

.method private m(Ll2/s;Ll2/l0;)I
    .locals 6

    iget-object v0, p0, Lq2/d;->f:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lq2/d;->i:Ll2/b0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lq2/d;->l:Lq2/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll2/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq2/d;->l:Lq2/b;

    invoke-virtual {v0, p1, p2}, Ll2/e;->c(Ll2/s;Ll2/l0;)I

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, Lq2/d;->n:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lq2/d;->i:Ll2/b0;

    invoke-static {p1, p2}, Ll2/y;->i(Ll2/s;Ll2/b0;)J

    move-result-wide p1

    iput-wide p1, p0, Lq2/d;->n:J

    return v0

    :cond_1
    iget-object p2, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->g()I

    move-result p2

    const v1, 0x8000

    if-ge p2, v1, :cond_4

    iget-object v4, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v4

    sub-int/2addr v1, p2

    invoke-interface {p1, v4, p2, v1}, Ll2/s;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    if-nez v4, :cond_3

    iget-object v1, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Landroidx/media3/common/util/j0;->V(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lq2/d;->l()V

    return v1

    :cond_4
    move v4, v0

    :cond_5
    :goto_1
    iget-object p1, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result p1

    iget p2, p0, Lq2/d;->m:I

    iget v1, p0, Lq2/d;->j:I

    if-ge p2, v1, :cond_6

    iget-object v5, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    sub-int/2addr v1, p2

    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->a()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v5, p2}, Landroidx/media3/common/util/j0;->X(I)V

    :cond_6
    iget-object p2, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-direct {p0, p2, v4}, Lq2/d;->g(Landroidx/media3/common/util/j0;Z)J

    move-result-wide v4

    iget-object p2, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->f()I

    move-result p2

    sub-int/2addr p2, p1

    iget-object v1, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v1, p1}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Lq2/d;->f:Ll2/s0;

    iget-object v1, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-interface {p1, v1, p2}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget p1, p0, Lq2/d;->m:I

    add-int/2addr p1, p2

    iput p1, p0, Lq2/d;->m:I

    cmp-long p1, v4, v2

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lq2/d;->l()V

    iput v0, p0, Lq2/d;->m:I

    iput-wide v4, p0, Lq2/d;->n:J

    :cond_7
    iget-object p1, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p1

    array-length p1, p1

    iget-object p2, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->g()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->a()I

    move-result p2

    const/16 v1, 0x10

    if-ge p2, v1, :cond_8

    if-ge p1, v1, :cond_8

    iget-object p1, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result p1

    iget-object p2, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    iget-object v1, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->f()I

    move-result v1

    iget-object v2, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p2, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/j0;->V(I)V

    :cond_8
    return v0
.end method

.method private n(Ll2/s;)V
    .locals 2

    iget-boolean v0, p0, Lq2/d;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Ll2/z;->d(Ll2/s;Z)Landroidx/media3/common/x;

    move-result-object p1

    iput-object p1, p0, Lq2/d;->h:Landroidx/media3/common/x;

    iput v1, p0, Lq2/d;->g:I

    return-void
.end method

.method private o(Ll2/s;)V
    .locals 3

    new-instance v0, Ll2/z$a;

    iget-object v1, p0, Lq2/d;->i:Ll2/b0;

    invoke-direct {v0, v1}, Ll2/z$a;-><init>(Ll2/b0;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    invoke-static {p1, v0}, Ll2/z;->e(Ll2/s;Ll2/z$a;)Z

    move-result v1

    iget-object v2, v0, Ll2/z$a;->a:Ll2/b0;

    invoke-static {v2}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll2/b0;

    iput-object v2, p0, Lq2/d;->i:Ll2/b0;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lq2/d;->i:Ll2/b0;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lq2/d;->i:Ll2/b0;

    iget p1, p1, Ll2/b0;->c:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lq2/d;->j:I

    iget-object p1, p0, Lq2/d;->i:Ll2/b0;

    iget-object v0, p0, Lq2/d;->a:[B

    iget-object v1, p0, Lq2/d;->h:Landroidx/media3/common/x;

    invoke-virtual {p1, v0, v1}, Ll2/b0;->g([BLandroidx/media3/common/x;)Landroidx/media3/common/r;

    move-result-object p1

    iget-object v0, p0, Lq2/d;->f:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/s0;

    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object p1

    const-string v1, "audio/flac"

    invoke-virtual {p1, v1}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    invoke-interface {v0, p1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    iget-object p1, p0, Lq2/d;->f:Ll2/s0;

    invoke-static {p1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll2/s0;

    iget-object v0, p0, Lq2/d;->i:Ll2/b0;

    invoke-virtual {v0}, Ll2/b0;->f()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ll2/s0;->f(J)V

    const/4 p1, 0x4

    iput p1, p0, Lq2/d;->g:I

    return-void
.end method

.method private p(Ll2/s;)V
    .locals 0

    invoke-static {p1}, Ll2/z;->i(Ll2/s;)V

    const/4 p1, 0x3

    iput p1, p0, Lq2/d;->g:I

    return-void
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 2

    iput-object p1, p0, Lq2/d;->e:Ll2/t;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v0

    iput-object v0, p0, Lq2/d;->f:Ll2/s0;

    invoke-interface {p1}, Ll2/t;->endTracks()V

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 3

    iget v0, p0, Lq2/d;->g:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lq2/d;->m(Ll2/s;Ll2/l0;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lq2/d;->h(Ll2/s;)V

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lq2/d;->o(Ll2/s;)V

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lq2/d;->p(Ll2/s;)V

    return v1

    :cond_4
    invoke-direct {p0, p1}, Lq2/d;->j(Ll2/s;)V

    return v1

    :cond_5
    invoke-direct {p0, p1}, Lq2/d;->n(Ll2/s;)V

    return v1
.end method

.method public d(Ll2/s;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ll2/z;->c(Ll2/s;Z)Landroidx/media3/common/x;

    invoke-static {p1}, Ll2/z;->a(Ll2/s;)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Ll2/r;
    .locals 1

    invoke-static {p0}, Ll2/q;->b(Ll2/r;)Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ll2/q;->a(Ll2/r;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Lq2/d;->g:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lq2/d;->l:Lq2/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Ll2/e;->h(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Lq2/d;->n:J

    iput p2, p0, Lq2/d;->m:I

    iget-object p1, p0, Lq2/d;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->S(I)V

    return-void
.end method
