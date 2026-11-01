.class public final Le3/f;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# static fields
.field public static final v:Ll2/x;

.field private static final w:Lz2/h$a;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Landroidx/media3/common/util/j0;

.field private final d:Ll2/i0$a;

.field private final e:Ll2/e0;

.field private final f:Ll2/g0;

.field private final g:Ll2/s0;

.field private h:Ll2/t;

.field private i:Ll2/s0;

.field private j:Ll2/s0;

.field private k:I

.field private l:Landroidx/media3/common/x;

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:I

.field private r:Le3/g;

.field private s:Z

.field private t:Z

.field private u:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le3/d;

    invoke-direct {v0}, Le3/d;-><init>()V

    sput-object v0, Le3/f;->v:Ll2/x;

    new-instance v0, Le3/e;

    invoke-direct {v0}, Le3/e;-><init>()V

    sput-object v0, Le3/f;->w:Lz2/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le3/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Le3/f;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Le3/f;->a:I

    iput-wide p2, p0, Le3/f;->b:J

    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Le3/f;->c:Landroidx/media3/common/util/j0;

    new-instance p1, Ll2/i0$a;

    invoke-direct {p1}, Ll2/i0$a;-><init>()V

    iput-object p1, p0, Le3/f;->d:Ll2/i0$a;

    new-instance p1, Ll2/e0;

    invoke-direct {p1}, Ll2/e0;-><init>()V

    iput-object p1, p0, Le3/f;->e:Ll2/e0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Le3/f;->m:J

    new-instance p1, Ll2/g0;

    invoke-direct {p1}, Ll2/g0;-><init>()V

    iput-object p1, p0, Le3/f;->f:Ll2/g0;

    new-instance p1, Ll2/n;

    invoke-direct {p1}, Ll2/n;-><init>()V

    iput-object p1, p0, Le3/f;->g:Ll2/s0;

    iput-object p1, p0, Le3/f;->j:Ll2/s0;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Le3/f;->p:J

    return-void
.end method

.method public static synthetic a()[Ll2/r;
    .locals 1

    invoke-static {}, Le3/f;->q()[Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(IIIII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le3/f;->r(IIIII)Z

    move-result p0

    return p0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Le3/f;->i:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le3/f;->h:Ll2/t;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private i(Ll2/s;)Le3/g;
    .locals 11

    invoke-direct {p0, p1}, Le3/f;->t(Ll2/s;)Le3/g;

    move-result-object v0

    iget-object v1, p0, Le3/f;->l:Landroidx/media3/common/x;

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Le3/f;->s(Landroidx/media3/common/x;J)Le3/c;

    move-result-object v1

    iget-boolean v2, p0, Le3/f;->s:Z

    if-eqz v2, :cond_0

    new-instance p1, Le3/g$a;

    invoke-direct {p1}, Le3/g$a;-><init>()V

    return-object p1

    :cond_0
    iget v2, p0, Le3/f;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ll2/m0;->getDurationUs()J

    move-result-wide v2

    invoke-interface {v1}, Le3/g;->a()J

    move-result-wide v0

    :goto_0
    move-wide v9, v0

    move-wide v5, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ll2/m0;->getDurationUs()J

    move-result-wide v2

    invoke-interface {v0}, Le3/g;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Le3/f;->l:Landroidx/media3/common/x;

    invoke-static {v0}, Le3/f;->n(Landroidx/media3/common/x;)J

    move-result-wide v2

    const-wide/16 v0, -0x1

    goto :goto_0

    :goto_1
    new-instance v0, Le3/b;

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v7

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Le3/b;-><init>(JJJ)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ll2/m0;->isSeekable()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Le3/f;->a:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    :cond_6
    iget v0, p0, Le3/f;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-direct {p0, p1, v1}, Le3/f;->m(Ll2/s;Z)Le3/g;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_9

    iget-object p1, p0, Le3/f;->i:Ll2/s0;

    invoke-interface {v0}, Ll2/m0;->getDurationUs()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ll2/s0;->f(J)V

    :cond_9
    return-object v0
.end method

.method private j(J)J
    .locals 4

    iget-wide v0, p0, Le3/f;->m:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    iget-object v2, p0, Le3/f;->d:Ll2/i0$a;

    iget v2, v2, Ll2/i0$a;->d:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private l(JLe3/i;J)Le3/g;
    .locals 15

    move-object/from16 v0, p3

    invoke-virtual/range {p3 .. p3}, Le3/i;->a()J

    move-result-wide v5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-wide v3, v0, Le3/i;->c:J

    const-wide/16 v7, -0x1

    cmp-long v1, v3, v7

    if-eqz v1, :cond_1

    add-long v1, p1, v3

    iget-object v7, v0, Le3/i;->a:Ll2/i0$a;

    iget v7, v7, Ll2/i0$a;->c:I

    int-to-long v7, v7

    sub-long/2addr v3, v7

    move-wide v8, v1

    :goto_0
    move-wide v10, v3

    goto :goto_1

    :cond_1
    cmp-long v1, p4, v7

    if-eqz v1, :cond_2

    sub-long v1, p4, p1

    iget-object v3, v0, Le3/i;->a:Ll2/i0$a;

    iget v3, v3, Ll2/i0$a;->c:I

    int-to-long v3, v3

    sub-long v3, v1, v3

    move-wide/from16 v8, p4

    goto :goto_0

    :goto_1
    sget-object v12, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const-wide/32 v3, 0x7a1200

    move-wide v1, v10

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/a1;->g1(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result v1

    iget-wide v2, v0, Le3/i;->b:J

    invoke-static {v10, v11, v2, v3, v12}, Lcom/google/common/math/f;->c(JJLjava/math/RoundingMode;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result v13

    new-instance v2, Le3/a;

    iget-object v0, v0, Le3/i;->a:Ll2/i0$a;

    iget v0, v0, Ll2/i0$a;->c:I

    int-to-long v3, v0

    add-long v10, p1, v3

    const/4 v14, 0x0

    move-object v7, v2

    move v12, v1

    invoke-direct/range {v7 .. v14}, Le3/a;-><init>(JJIIZ)V

    :cond_2
    return-object v2
.end method

.method private m(Ll2/s;Z)Le3/g;
    .locals 9

    iget-object v0, p0, Le3/f;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->peekFully([BII)V

    iget-object v0, p0, Le3/f;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v0, p0, Le3/f;->d:Ll2/i0$a;

    iget-object v1, p0, Le3/f;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ll2/i0$a;->a(I)Z

    new-instance v0, Le3/a;

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Le3/f;->d:Ll2/i0$a;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Le3/a;-><init>(JJLl2/i0$a;Z)V

    return-object v0
.end method

.method private static n(Landroidx/media3/common/x;)J
    .locals 6

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/x;->e()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    move-result-object v3

    instance-of v4, v3, Lz2/n;

    if-eqz v4, :cond_0

    check-cast v3, Lz2/n;

    iget-object v4, v3, Lz2/i;->a:Ljava/lang/String;

    const-string v5, "TLEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p0, v3, Lz2/n;->d:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private static o(Landroidx/media3/common/util/j0;I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->g()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_0

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->g()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result p0

    const p1, 0x56425249

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static p(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic q()[Ll2/r;
    .locals 3

    new-instance v0, Le3/f;

    invoke-direct {v0}, Le3/f;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ll2/r;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private static synthetic r(IIIII)Z
    .locals 3

    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_0

    if-ne p3, v2, :cond_0

    if-eq p4, v2, :cond_1

    if-eq p0, v1, :cond_1

    :cond_0
    if-ne p1, v2, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static s(Landroidx/media3/common/x;J)Le3/c;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/x;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    move-result-object v2

    instance-of v3, v2, Lz2/l;

    if-eqz v3, :cond_0

    check-cast v2, Lz2/l;

    invoke-static {p0}, Le3/f;->n(Landroidx/media3/common/x;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Le3/c;->b(JLz2/l;J)Le3/c;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private t(Ll2/s;)Le3/g;
    .locals 12

    new-instance v5, Landroidx/media3/common/util/j0;

    iget-object v0, p0, Le3/f;->d:Ll2/i0$a;

    iget v0, v0, Ll2/i0$a;->c:I

    invoke-direct {v5, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    iget-object v1, p0, Le3/f;->d:Ll2/i0$a;

    iget v1, v1, Ll2/i0$a;->c:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->peekFully([BII)V

    iget-object v0, p0, Le3/f;->d:Ll2/i0$a;

    iget v1, v0, Ll2/i0$a;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x15

    if-eqz v1, :cond_0

    iget v0, v0, Ll2/i0$a;->e:I

    if-eq v0, v2, :cond_2

    const/16 v3, 0x24

    goto :goto_0

    :cond_0
    iget v0, v0, Ll2/i0$a;->e:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xd

    :cond_2
    :goto_0
    invoke-static {v5, v3}, Le3/f;->o(Landroidx/media3/common/util/j0;I)I

    move-result v0

    const v1, 0x496e666f

    const v2, 0x58696e67

    if-eq v0, v1, :cond_4

    const v1, 0x56425249

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_4

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_3
    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Le3/f;->d:Ll2/i0$a;

    invoke-static/range {v0 .. v5}, Le3/h;->b(JJLl2/i0$a;Landroidx/media3/common/util/j0;)Le3/h;

    move-result-object v0

    iget-object v1, p0, Le3/f;->d:Ll2/i0$a;

    iget v1, v1, Ll2/i0$a;->c:I

    invoke-interface {p1, v1}, Ll2/s;->skipFully(I)V

    move-object p1, v0

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Le3/f;->d:Ll2/i0$a;

    invoke-static {v1, v5}, Le3/i;->b(Ll2/i0$a;Landroidx/media3/common/util/j0;)Le3/i;

    move-result-object v9

    iget-object v1, p0, Le3/f;->e:Ll2/e0;

    invoke-virtual {v1}, Ll2/e0;->a()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, v9, Le3/i;->d:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    iget v4, v9, Le3/i;->e:I

    if-eq v4, v3, :cond_5

    iget-object v3, p0, Le3/f;->e:Ll2/e0;

    iput v1, v3, Ll2/e0;->a:I

    iput v4, v3, Ll2/e0;->b:I

    :cond_5
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v7

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    iget-wide v3, v9, Le3/i;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v3

    iget-wide v5, v9, Le3/i;->c:J

    add-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data size mismatch between stream ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") and Xing frame ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Le3/i;->c:J

    add-long/2addr v3, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), using Xing value."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Mp3Extractor"

    invoke-static {v3, v1}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Le3/f;->d:Ll2/i0$a;

    iget v1, v1, Ll2/i0$a;->c:I

    invoke-interface {p1, v1}, Ll2/s;->skipFully(I)V

    if-ne v0, v2, :cond_7

    invoke-static {v9, v7, v8}, Le3/j;->b(Le3/i;J)Le3/j;

    move-result-object p1

    goto :goto_1

    :cond_7
    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Le3/f;->l(JLe3/i;J)Le3/g;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Le3/f;->r:Le3/g;

    instance-of v1, v0, Le3/a;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ll2/m0;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le3/f;->p:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Le3/f;->r:Le3/g;

    invoke-interface {v2}, Le3/g;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Le3/f;->r:Le3/g;

    check-cast v0, Le3/a;

    iget-wide v1, p0, Le3/f;->p:J

    invoke-virtual {v0, v1, v2}, Le3/a;->e(J)Le3/a;

    move-result-object v0

    iput-object v0, p0, Le3/f;->r:Le3/g;

    iget-object v0, p0, Le3/f;->h:Ll2/t;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/t;

    iget-object v1, p0, Le3/f;->r:Le3/g;

    invoke-interface {v0, v1}, Ll2/t;->f(Ll2/m0;)V

    iget-object v0, p0, Le3/f;->i:Ll2/s0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/s0;

    iget-object v1, p0, Le3/f;->r:Le3/g;

    invoke-interface {v1}, Ll2/m0;->getDurationUs()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ll2/s0;->f(J)V

    :cond_0
    return-void
.end method

.method private v(Ll2/s;)Z
    .locals 8

    iget-object v0, p0, Le3/f;->r:Le3/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le3/g;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ll2/s;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Le3/f;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Ll2/s;->peekFully([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    return v1
.end method

.method private w(Ll2/s;)I
    .locals 5

    iget v0, p0, Le3/f;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Le3/f;->y(Ll2/s;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    return p1

    :cond_0
    :goto_0
    iget-object v0, p0, Le3/f;->r:Le3/g;

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Le3/f;->i(Ll2/s;)Le3/g;

    move-result-object v0

    iput-object v0, p0, Le3/f;->r:Le3/g;

    iget-object v1, p0, Le3/f;->h:Ll2/t;

    invoke-interface {v1, v0}, Ll2/t;->f(Ll2/m0;)V

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    const-string v1, "audio/mpeg"

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v1, p0, Le3/f;->d:Ll2/i0$a;

    iget-object v1, v1, Ll2/i0$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->k0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v1, p0, Le3/f;->d:Ll2/i0$a;

    iget v1, v1, Ll2/i0$a;->e:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v1, p0, Le3/f;->d:Ll2/i0$a;

    iget v1, v1, Ll2/i0$a;->d:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v1, p0, Le3/f;->e:Ll2/e0;

    iget v1, v1, Ll2/e0;->a:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Z(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v1, p0, Le3/f;->e:Ll2/e0;

    iget v1, v1, Ll2/e0;->b:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->a0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Le3/f;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Le3/f;->l:Landroidx/media3/common/x;

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v1, p0, Le3/f;->r:Le3/g;

    invoke-interface {v1}, Le3/g;->g()I

    move-result v1

    const v2, -0x7fffffff

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Le3/f;->r:Le3/g;

    invoke-interface {v1}, Le3/g;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    :cond_2
    iget-object v1, p0, Le3/f;->j:Ll2/s0;

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    invoke-interface {v1, v0}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Le3/f;->o:J

    goto :goto_2

    :cond_3
    iget-wide v0, p0, Le3/f;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Le3/f;->o:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-interface {p1, v0}, Ll2/s;->skipFully(I)V

    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Le3/f;->x(Ll2/s;)I

    move-result p1

    return p1
.end method

.method private x(Ll2/s;)I
    .locals 11

    iget v0, p0, Le3/f;->q:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    invoke-direct {p0, p1}, Le3/f;->v(Ll2/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Le3/f;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v0, p0, Le3/f;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    iget v4, p0, Le3/f;->k:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Le3/f;->p(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Ll2/i0;->j(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Le3/f;->d:Ll2/i0$a;

    invoke-virtual {v4, v0}, Ll2/i0$a;->a(I)Z

    iget-wide v4, p0, Le3/f;->m:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Le3/f;->r:Le3/g;

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Le3/g;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Le3/f;->m:J

    iget-wide v4, p0, Le3/f;->b:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Le3/f;->r:Le3/g;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Le3/g;->getTimeUs(J)J

    move-result-wide v4

    iget-wide v6, p0, Le3/f;->m:J

    iget-wide v8, p0, Le3/f;->b:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Le3/f;->m:J

    :cond_2
    iget-object v0, p0, Le3/f;->d:Ll2/i0$a;

    iget v0, v0, Ll2/i0$a;->c:I

    iput v0, p0, Le3/f;->q:I

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v4

    iget-object v0, p0, Le3/f;->d:Ll2/i0$a;

    iget v6, v0, Ll2/i0$a;->c:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Le3/f;->p:J

    iget-object v4, p0, Le3/f;->r:Le3/g;

    instance-of v5, v4, Le3/b;

    if-eqz v5, :cond_4

    check-cast v4, Le3/b;

    iget-wide v5, p0, Le3/f;->n:J

    iget v0, v0, Ll2/i0$a;->g:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Le3/f;->j(J)J

    move-result-wide v5

    iget-wide v7, p0, Le3/f;->p:J

    invoke-virtual {v4, v5, v6, v7, v8}, Le3/b;->c(JJ)V

    iget-boolean v0, p0, Le3/f;->t:Z

    if-eqz v0, :cond_4

    iget-wide v5, p0, Le3/f;->u:J

    invoke-virtual {v4, v5, v6}, Le3/b;->b(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Le3/f;->t:Z

    iget-object v0, p0, Le3/f;->i:Ll2/s0;

    iput-object v0, p0, Le3/f;->j:Ll2/s0;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Ll2/s;->skipFully(I)V

    iput v3, p0, Le3/f;->k:I

    return v3

    :cond_4
    :goto_1
    iget-object v0, p0, Le3/f;->j:Ll2/s0;

    iget v4, p0, Le3/f;->q:I

    invoke-interface {v0, p1, v4, v1}, Ll2/s0;->e(Landroidx/media3/common/j;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    :cond_5
    iget v0, p0, Le3/f;->q:I

    sub-int/2addr v0, p1

    iput v0, p0, Le3/f;->q:I

    if-lez v0, :cond_6

    return v3

    :cond_6
    iget-object v4, p0, Le3/f;->j:Ll2/s0;

    iget-wide v0, p0, Le3/f;->n:J

    invoke-direct {p0, v0, v1}, Le3/f;->j(J)J

    move-result-wide v5

    iget-object p1, p0, Le3/f;->d:Ll2/i0$a;

    iget v8, p1, Ll2/i0$a;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Ll2/s0;->d(JIIILl2/s0$a;)V

    iget-wide v0, p0, Le3/f;->n:J

    iget-object p1, p0, Le3/f;->d:Ll2/i0$a;

    iget p1, p1, Ll2/i0$a;->g:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Le3/f;->n:J

    iput v3, p0, Le3/f;->q:I

    return v3
.end method

.method private y(Ll2/s;Z)Z
    .locals 10

    if-eqz p2, :cond_0

    const v0, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    :goto_0
    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget v1, p0, Le3/f;->a:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    sget-object v1, Le3/f;->w:Lz2/h$a;

    :goto_1
    iget-object v3, p0, Le3/f;->f:Ll2/g0;

    invoke-virtual {v3, p1, v1}, Ll2/g0;->a(Ll2/s;Lz2/h$a;)Landroidx/media3/common/x;

    move-result-object v1

    iput-object v1, p0, Le3/f;->l:Landroidx/media3/common/x;

    if-eqz v1, :cond_2

    iget-object v3, p0, Le3/f;->e:Ll2/e0;

    invoke-virtual {v3, v1}, Ll2/e0;->c(Landroidx/media3/common/x;)Z

    :cond_2
    invoke-interface {p1}, Ll2/s;->getPeekPosition()J

    move-result-wide v3

    long-to-int v1, v3

    if-nez p2, :cond_3

    invoke-interface {p1, v1}, Ll2/s;->skipFully(I)V

    :cond_3
    move v3, v2

    :goto_2
    move v4, v3

    move v5, v4

    goto :goto_3

    :cond_4
    move v1, v2

    move v3, v1

    goto :goto_2

    :goto_3
    invoke-direct {p0, p1}, Le3/f;->v(Ll2/s;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    if-lez v4, :cond_5

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Le3/f;->u()V

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_6
    iget-object v6, p0, Le3/f;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v6, v2}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v6, p0, Le3/f;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->q()I

    move-result v6

    if-eqz v3, :cond_7

    int-to-long v8, v3

    invoke-static {v6, v8, v9}, Le3/f;->p(IJ)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    invoke-static {v6}, Ll2/i0;->j(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_c

    :cond_8
    add-int/lit8 v3, v5, 0x1

    if-ne v5, v0, :cond_a

    if-eqz p2, :cond_9

    return v2

    :cond_9
    invoke-direct {p0}, Le3/f;->u()V

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_a
    if-eqz p2, :cond_b

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    add-int v4, v1, v3

    invoke-interface {p1, v4}, Ll2/s;->advancePeekPosition(I)V

    goto :goto_4

    :cond_b
    invoke-interface {p1, v7}, Ll2/s;->skipFully(I)V

    :goto_4
    move v4, v2

    move v5, v3

    move v3, v4

    goto :goto_3

    :cond_c
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_d

    iget-object v3, p0, Le3/f;->d:Ll2/i0$a;

    invoke-virtual {v3, v6}, Ll2/i0$a;->a(I)Z

    move v3, v6

    goto :goto_7

    :cond_d
    const/4 v6, 0x4

    if-ne v4, v6, :cond_f

    :goto_5
    if-eqz p2, :cond_e

    add-int/2addr v1, v5

    invoke-interface {p1, v1}, Ll2/s;->skipFully(I)V

    goto :goto_6

    :cond_e
    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    :goto_6
    iput v3, p0, Le3/f;->k:I

    return v7

    :cond_f
    :goto_7
    add-int/lit8 v8, v8, -0x4

    invoke-interface {p1, v8}, Ll2/s;->advancePeekPosition(I)V

    goto :goto_3
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 2

    iput-object p1, p0, Le3/f;->h:Ll2/t;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p1

    iput-object p1, p0, Le3/f;->i:Ll2/s0;

    iput-object p1, p0, Le3/f;->j:Ll2/s0;

    iget-object p1, p0, Le3/f;->h:Ll2/t;

    invoke-interface {p1}, Ll2/t;->endTracks()V

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 4

    invoke-direct {p0}, Le3/f;->h()V

    invoke-direct {p0, p1}, Le3/f;->w(Ll2/s;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Le3/f;->r:Le3/g;

    instance-of p2, p2, Le3/b;

    if-eqz p2, :cond_0

    iget-wide v0, p0, Le3/f;->n:J

    invoke-direct {p0, v0, v1}, Le3/f;->j(J)J

    move-result-wide v0

    iget-object p2, p0, Le3/f;->r:Le3/g;

    invoke-interface {p2}, Ll2/m0;->getDurationUs()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    iget-object p2, p0, Le3/f;->r:Le3/g;

    check-cast p2, Le3/b;

    invoke-virtual {p2, v0, v1}, Le3/b;->d(J)V

    iget-object p2, p0, Le3/f;->h:Ll2/t;

    iget-object v0, p0, Le3/f;->r:Le3/g;

    invoke-interface {p2, v0}, Ll2/t;->f(Ll2/m0;)V

    iget-object p2, p0, Le3/f;->i:Ll2/s0;

    iget-object v0, p0, Le3/f;->r:Le3/g;

    invoke-interface {v0}, Ll2/m0;->getDurationUs()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Ll2/s0;->f(J)V

    :cond_0
    return p1
.end method

.method public d(Ll2/s;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Le3/f;->y(Ll2/s;Z)Z

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

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le3/f;->s:Z

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Le3/f;->k:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Le3/f;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le3/f;->n:J

    iput p1, p0, Le3/f;->q:I

    iput-wide p3, p0, Le3/f;->u:J

    iget-object p1, p0, Le3/f;->r:Le3/g;

    instance-of p2, p1, Le3/b;

    if-eqz p2, :cond_0

    check-cast p1, Le3/b;

    invoke-virtual {p1, p3, p4}, Le3/b;->b(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Le3/f;->t:Z

    iget-object p1, p0, Le3/f;->g:Ll2/s0;

    iput-object p1, p0, Le3/f;->j:Ll2/s0;

    :cond_0
    return-void
.end method
