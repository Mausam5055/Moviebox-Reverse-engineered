.class public final Ln2/b;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/b$c;,
        Ln2/b$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:Ln2/b$c;

.field private final c:Z

.field private final d:Li3/s$a;

.field private e:I

.field private f:Ll2/t;

.field private g:Ln2/c;

.field private h:J

.field private i:[Ln2/e;

.field private j:J

.field private k:Ln2/e;

.field private l:I

.field private m:J

.field private n:J

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    sget-object v1, Li3/s$a;->a:Li3/s$a;

    invoke-direct {p0, v0, v1}, Ln2/b;-><init>(ILi3/s$a;)V

    return-void
.end method

.method public constructor <init>(ILi3/s$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln2/b;->d:Li3/s$a;

    const/4 p2, 0x1

    and-int/2addr p1, p2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Ln2/b;->c:Z

    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    new-instance p1, Ln2/b$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ln2/b$c;-><init>(Ln2/b$a;)V

    iput-object p1, p0, Ln2/b;->b:Ln2/b$c;

    new-instance p1, Ll2/j0;

    invoke-direct {p1}, Ll2/j0;-><init>()V

    iput-object p1, p0, Ln2/b;->f:Ll2/t;

    new-array p1, v0, [Ln2/e;

    iput-object p1, p0, Ln2/b;->i:[Ln2/e;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ln2/b;->m:J

    iput-wide p1, p0, Ln2/b;->n:J

    const/4 p1, -0x1

    iput p1, p0, Ln2/b;->l:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ln2/b;->h:J

    return-void
.end method

.method static synthetic a(Ln2/b;)[Ln2/e;
    .locals 0

    iget-object p0, p0, Ln2/b;->i:[Ln2/e;

    return-object p0
.end method

.method private static g(Ll2/s;)V
    .locals 4

    invoke-interface {p0}, Ll2/s;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ll2/s;->skipFully(I)V

    :cond_0
    return-void
.end method

.method private h(I)Ln2/e;
    .locals 5

    iget-object v0, p0, Ln2/b;->i:[Ln2/e;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ln2/e;->j(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private i(Landroidx/media3/common/util/j0;)V
    .locals 6

    const v0, 0x6c726468

    invoke-static {v0, p1}, Ln2/f;->c(ILandroidx/media3/common/util/j0;)Ln2/f;

    move-result-object p1

    invoke-virtual {p1}, Ln2/f;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_4

    const-class v0, Ln2/c;

    invoke-virtual {p1, v0}, Ln2/f;->b(Ljava/lang/Class;)Ln2/a;

    move-result-object v0

    check-cast v0, Ln2/c;

    if-eqz v0, :cond_3

    iput-object v0, p0, Ln2/b;->g:Ln2/c;

    iget v1, v0, Ln2/c;->c:I

    int-to-long v1, v1

    iget v0, v0, Ln2/c;->a:I

    int-to-long v3, v0

    mul-long/2addr v1, v3

    iput-wide v1, p0, Ln2/b;->h:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Ln2/f;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/r4;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln2/a;

    invoke-interface {v3}, Ln2/a;->getType()I

    move-result v4

    const v5, 0x6c727473

    if-ne v4, v5, :cond_0

    check-cast v3, Ln2/f;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v3, v2}, Ln2/b;->l(Ln2/f;I)Ln2/e;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ln2/e;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln2/e;

    iput-object p1, p0, Ln2/b;->i:[Ln2/e;

    iget-object p1, p0, Ln2/b;->f:Ll2/t;

    invoke-interface {p1}, Ll2/t;->endTracks()V

    return-void

    :cond_3
    const-string p1, "AviHeader not found"

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected header list type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ln2/f;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private j(Landroidx/media3/common/util/j0;)V
    .locals 10

    invoke-direct {p0, p1}, Ln2/b;->k(Landroidx/media3/common/util/j0;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x10

    if-lt v2, v5, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->u()I

    move-result v2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->u()I

    move-result v6

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->u()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v0

    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-direct {p0, v2}, Ln2/b;->h(I)Ln2/e;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    and-int/2addr v6, v5

    if-ne v6, v5, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v2, v7, v8, v3}, Ln2/e;->b(JZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ln2/b;->i:[Ln2/e;

    array-length v0, p1

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ln2/e;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v4, p0, Ln2/b;->p:Z

    iget-object p1, p0, Ln2/b;->i:[Ln2/e;

    array-length p1, p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ln2/b;->f:Ll2/t;

    new-instance v0, Ll2/m0$b;

    iget-wide v1, p0, Ln2/b;->h:J

    invoke-direct {v0, v1, v2}, Ll2/m0$b;-><init>(J)V

    invoke-interface {p1, v0}, Ll2/t;->f(Ll2/m0;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Ln2/b;->f:Ll2/t;

    new-instance v0, Ln2/b$b;

    iget-wide v1, p0, Ln2/b;->h:J

    invoke-direct {v0, p0, v1, v2}, Ln2/b$b;-><init>(Ln2/b;J)V

    invoke-interface {p1, v0}, Ll2/t;->f(Ll2/m0;)V

    :goto_2
    return-void
.end method

.method private k(Landroidx/media3/common/util/j0;)J
    .locals 8

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->u()I

    move-result v1

    int-to-long v4, v1

    iget-wide v6, p0, Ln2/b;->m:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x8

    add-long v2, v6, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-wide v2
.end method

.method private l(Ln2/f;I)Ln2/e;
    .locals 7

    const-class v0, Ln2/d;

    invoke-virtual {p1, v0}, Ln2/f;->b(Ljava/lang/Class;)Ln2/a;

    move-result-object v0

    check-cast v0, Ln2/d;

    const-class v1, Ln2/g;

    invoke-virtual {p1, v1}, Ln2/f;->b(Ljava/lang/Class;)Ln2/a;

    move-result-object v1

    check-cast v1, Ln2/g;

    const-string v2, "AviExtractor"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p1, "Missing Stream Header"

    invoke-static {v2, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    if-nez v1, :cond_1

    const-string p1, "Missing Stream Format"

    invoke-static {v2, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-virtual {v0}, Ln2/d;->a()J

    move-result-wide v4

    iget-object v1, v1, Ln2/g;->a:Landroidx/media3/common/r;

    invoke-virtual {v1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    iget v6, v0, Ln2/d;->f:I

    if-eqz v6, :cond_2

    invoke-virtual {v2, v6}, Landroidx/media3/common/r$b;->k0(I)Landroidx/media3/common/r$b;

    :cond_2
    const-class v6, Ln2/h;

    invoke-virtual {p1, v6}, Ln2/f;->b(Ljava/lang/Class;)Ln2/a;

    move-result-object p1

    check-cast p1, Ln2/h;

    if-eqz p1, :cond_3

    iget-object p1, p1, Ln2/h;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    :cond_3
    iget-object p1, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    return-object v3

    :cond_5
    :goto_0
    iget-object v1, p0, Ln2/b;->f:Ll2/t;

    invoke-interface {v1, p2, p1}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p1

    invoke-virtual {v2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v1

    invoke-interface {p1, v1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    invoke-interface {p1, v4, v5}, Ll2/s0;->f(J)V

    iget-wide v1, p0, Ln2/b;->h:J

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Ln2/b;->h:J

    new-instance v1, Ln2/e;

    invoke-direct {v1, p2, v0, p1}, Ln2/e;-><init>(ILn2/d;Ll2/s0;)V

    return-object v1
.end method

.method private m(Ll2/s;)I
    .locals 7

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Ln2/b;->n:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Ln2/b;->k:Ln2/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ln2/e;->m(Ll2/s;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, p0, Ln2/b;->k:Ln2/e;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ln2/b;->g(Ll2/s;)V

    iget-object v0, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/16 v2, 0xc

    invoke-interface {p1, v0, v1, v2}, Ll2/s;->peekFully([BII)V

    iget-object v0, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v0, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->u()I

    move-result v0

    const v3, 0x5453494c

    const/16 v4, 0x8

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v0, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->u()I

    move-result v0

    const v3, 0x69766f6d

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-interface {p1, v2}, Ll2/s;->skipFully(I)V

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    return v1

    :cond_3
    iget-object v2, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->u()I

    move-result v2

    const v3, 0x4b4e554a    # 1.352225E7f

    if-ne v0, v3, :cond_4

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    iput-wide v3, p0, Ln2/b;->j:J

    return v1

    :cond_4
    invoke-interface {p1, v4}, Ll2/s;->skipFully(I)V

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    invoke-direct {p0, v0}, Ln2/b;->h(I)Ln2/e;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Ln2/b;->j:J

    return v1

    :cond_5
    invoke-virtual {v0, v2}, Ln2/e;->n(I)V

    iput-object v0, p0, Ln2/b;->k:Ln2/e;

    :cond_6
    :goto_1
    return v1
.end method

.method private n(Ll2/s;Ll2/l0;)Z
    .locals 8

    iget-wide v0, p0, Ln2/b;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Ln2/b;->j:J

    cmp-long v6, v4, v0

    if-ltz v6, :cond_1

    const-wide/32 v6, 0x40000

    add-long/2addr v6, v0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v4, v0

    long-to-int p2, v4

    invoke-interface {p1, p2}, Ll2/s;->skipFully(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-wide v4, p2, Ll2/l0;->a:J

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    iput-wide v2, p0, Ln2/b;->j:J

    return p1
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ln2/b;->e:I

    iget-boolean v0, p0, Ln2/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Li3/t;

    iget-object v1, p0, Ln2/b;->d:Li3/s$a;

    invoke-direct {v0, p1, v1}, Li3/t;-><init>(Ll2/t;Li3/s$a;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Ln2/b;->f:Ll2/t;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ln2/b;->j:J

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 12

    invoke-direct {p0, p1, p2}, Ln2/b;->n(Ll2/s;Ll2/l0;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget p2, p0, Ln2/b;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/16 v4, 0xc

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    invoke-direct {p0, p1}, Ln2/b;->m(Ll2/s;)I

    move-result p1

    return p1

    :pswitch_1
    new-instance p2, Landroidx/media3/common/util/j0;

    iget v0, p0, Ln2/b;->o:I

    invoke-direct {p2, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    iget v1, p0, Ln2/b;->o:I

    invoke-interface {p1, v0, v5, v1}, Ll2/s;->readFully([BII)V

    invoke-direct {p0, p2}, Ln2/b;->j(Landroidx/media3/common/util/j0;)V

    iput v3, p0, Ln2/b;->e:I

    iget-wide p1, p0, Ln2/b;->m:J

    iput-wide p1, p0, Ln2/b;->j:J

    return v5

    :pswitch_2
    iget-object p2, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    const/16 v0, 0x8

    invoke-interface {p1, p2, v5, v0}, Ll2/s;->readFully([BII)V

    iget-object p2, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, v5}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p2, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->u()I

    move-result p2

    iget-object v0, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->u()I

    move-result v0

    const v1, 0x31786469

    if-ne p2, v1, :cond_1

    const/4 p1, 0x5

    iput p1, p0, Ln2/b;->e:I

    iput v0, p0, Ln2/b;->o:I

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide p1

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Ln2/b;->j:J

    :goto_0
    return v5

    :pswitch_3
    iget-wide v6, p0, Ln2/b;->m:J

    const-wide/16 v8, -0x1

    cmp-long p2, v6, v8

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Ln2/b;->m:J

    cmp-long p2, v6, v8

    if-eqz p2, :cond_2

    iput-wide v8, p0, Ln2/b;->j:J

    return v5

    :cond_2
    iget-object p2, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v4}, Ll2/s;->peekFully([BII)V

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    iget-object p2, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, v5}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p2, p0, Ln2/b;->b:Ln2/b$c;

    iget-object v1, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, v1}, Ln2/b$c;->a(Landroidx/media3/common/util/j0;)V

    iget-object p2, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->u()I

    move-result p2

    iget-object v1, p0, Ln2/b;->b:Ln2/b$c;

    iget v1, v1, Ln2/b$c;->a:I

    const v6, 0x46464952

    if-ne v1, v6, :cond_3

    invoke-interface {p1, v4}, Ll2/s;->skipFully(I)V

    return v5

    :cond_3
    const v4, 0x5453494c

    const-wide/16 v6, 0x8

    if-ne v1, v4, :cond_7

    const v1, 0x69766f6d

    if-eq p2, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v8

    iput-wide v8, p0, Ln2/b;->m:J

    iget-object p2, p0, Ln2/b;->b:Ln2/b$c;

    iget p2, p2, Ln2/b$c;->b:I

    int-to-long v10, p2

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    iput-wide v8, p0, Ln2/b;->n:J

    iget-boolean p2, p0, Ln2/b;->p:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Ln2/b;->g:Ln2/c;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln2/c;

    invoke-virtual {p2}, Ln2/c;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    iput v2, p0, Ln2/b;->e:I

    iget-wide p1, p0, Ln2/b;->n:J

    iput-wide p1, p0, Ln2/b;->j:J

    return v5

    :cond_5
    iget-object p2, p0, Ln2/b;->f:Ll2/t;

    new-instance v1, Ll2/m0$b;

    iget-wide v6, p0, Ln2/b;->h:J

    invoke-direct {v1, v6, v7}, Ll2/m0$b;-><init>(J)V

    invoke-interface {p2, v1}, Ll2/t;->f(Ll2/m0;)V

    iput-boolean v0, p0, Ln2/b;->p:Z

    :cond_6
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide p1

    const-wide/16 v0, 0xc

    add-long/2addr p1, v0

    iput-wide p1, p0, Ln2/b;->j:J

    iput v3, p0, Ln2/b;->e:I

    return v5

    :cond_7
    :goto_1
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide p1

    iget-object v0, p0, Ln2/b;->b:Ln2/b$c;

    iget v0, v0, Ln2/b$c;->b:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    add-long/2addr p1, v6

    iput-wide p1, p0, Ln2/b;->j:J

    return v5

    :pswitch_4
    iget p2, p0, Ln2/b;->l:I

    sub-int/2addr p2, v2

    new-instance v0, Landroidx/media3/common/util/j0;

    invoke-direct {v0, p2}, Landroidx/media3/common/util/j0;-><init>(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, p2}, Ll2/s;->readFully([BII)V

    invoke-direct {p0, v0}, Ln2/b;->i(Landroidx/media3/common/util/j0;)V

    const/4 p1, 0x3

    iput p1, p0, Ln2/b;->e:I

    return v5

    :pswitch_5
    iget-object p2, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v4}, Ll2/s;->readFully([BII)V

    iget-object p1, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, v5}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Ln2/b;->b:Ln2/b$c;

    iget-object p2, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, p2}, Ln2/b$c;->b(Landroidx/media3/common/util/j0;)V

    iget-object p1, p0, Ln2/b;->b:Ln2/b$c;

    iget p2, p1, Ln2/b$c;->c:I

    const v0, 0x6c726468

    if-ne p2, v0, :cond_8

    iget p1, p1, Ln2/b$c;->b:I

    iput p1, p0, Ln2/b;->l:I

    const/4 p1, 0x2

    iput p1, p0, Ln2/b;->e:I

    return v5

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hdrl expected, found: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ln2/b;->b:Ln2/b$c;

    iget p2, p2, Ln2/b$c;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :pswitch_6
    invoke-virtual {p0, p1}, Ln2/b;->d(Ll2/s;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1, v4}, Ll2/s;->skipFully(I)V

    iput v0, p0, Ln2/b;->e:I

    return v5

    :cond_9
    const-string p1, "AVI Header List not found"

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ll2/s;)Z
    .locals 3

    iget-object v0, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->peekFully([BII)V

    iget-object p1, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->u()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    iget-object p1, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->X(I)V

    iget-object p1, p0, Ln2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->u()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
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
    .locals 3

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Ln2/b;->j:J

    const/4 p3, 0x0

    iput-object p3, p0, Ln2/b;->k:Ln2/e;

    iget-object p3, p0, Ln2/b;->i:[Ln2/e;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {v2, p1, p2}, Ln2/e;->o(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_2

    iget-object p1, p0, Ln2/b;->i:[Ln2/e;

    array-length p1, p1

    if-nez p1, :cond_1

    iput v0, p0, Ln2/b;->e:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    iput p1, p0, Ln2/b;->e:I

    :goto_1
    return-void

    :cond_2
    const/4 p1, 0x6

    iput p1, p0, Ln2/b;->e:I

    return-void
.end method
