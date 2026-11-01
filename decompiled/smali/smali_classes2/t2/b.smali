.class final Lt2/b;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private b:Ll2/t;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:La3/a;

.field private h:Ll2/s;

.field private i:Lt2/d;

.field private j:Lf3/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/j0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lt2/b;->f:J

    return-void
.end method

.method private a(Ll2/s;)V
    .locals 3

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->peekFully([BII)V

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->P()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ll2/s;->advancePeekPosition(I)V

    return-void
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lt2/b;->b:Ll2/t;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/t;

    invoke-interface {v0}, Ll2/t;->endTracks()V

    iget-object v0, p0, Lt2/b;->b:Ll2/t;

    new-instance v1, Ll2/m0$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Ll2/m0$b;-><init>(J)V

    invoke-interface {v0, v1}, Ll2/t;->f(Ll2/m0;)V

    const/4 v0, 0x6

    iput v0, p0, Lt2/b;->c:I

    return-void
.end method

.method private static h(Ljava/lang/String;J)La3/a;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lt2/f;->a(Ljava/lang/String;)Lt2/c;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lt2/c;->a(J)La3/a;

    move-result-object p0

    return-object p0
.end method

.method private i(La3/a;)V
    .locals 5

    iget-object v0, p0, Lt2/b;->b:Ll2/t;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/t;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/r$b;

    invoke-direct {v1}, Landroidx/media3/common/r$b;-><init>()V

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/x;

    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/media3/common/x$a;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    invoke-interface {v0, p1}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    return-void
.end method

.method private j(Ll2/s;)I
    .locals 3

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->peekFully([BII)V

    iget-object p1, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    move-result p1

    return p1
.end method

.method private k(Ll2/s;)V
    .locals 4

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->readFully([BII)V

    iget-object p1, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    move-result p1

    iput p1, p0, Lt2/b;->d:I

    const v0, 0xffda

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lt2/b;->f:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Lt2/b;->c:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lt2/b;->g()V

    goto :goto_0

    :cond_1
    const v0, 0xffd0

    if-lt p1, v0, :cond_2

    const v0, 0xffd9

    if-le p1, v0, :cond_3

    :cond_2
    const v0, 0xff01

    if-eq p1, v0, :cond_3

    const/4 p1, 0x1

    iput p1, p0, Lt2/b;->c:I

    :cond_3
    :goto_0
    return-void
.end method

.method private l(Ll2/s;)V
    .locals 5

    iget v0, p0, Lt2/b;->d:I

    const v1, 0xffe1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Landroidx/media3/common/util/j0;

    iget v1, p0, Lt2/b;->e:I

    invoke-direct {v0, v1}, Landroidx/media3/common/util/j0;-><init>(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v1

    iget v3, p0, Lt2/b;->e:I

    invoke-interface {p1, v1, v2, v3}, Ll2/s;->readFully([BII)V

    iget-object v1, p0, Lt2/b;->g:La3/a;

    if-nez v1, :cond_1

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lt2/b;->h(Ljava/lang/String;J)La3/a;

    move-result-object p1

    iput-object p1, p0, Lt2/b;->g:La3/a;

    if-eqz p1, :cond_1

    iget-wide v0, p1, La3/a;->d:J

    iput-wide v0, p0, Lt2/b;->f:J

    goto :goto_0

    :cond_0
    iget v0, p0, Lt2/b;->e:I

    invoke-interface {p1, v0}, Ll2/s;->skipFully(I)V

    :cond_1
    :goto_0
    iput v2, p0, Lt2/b;->c:I

    return-void
.end method

.method private m(Ll2/s;)V
    .locals 3

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->readFully([BII)V

    iget-object p1, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lt2/b;->e:I

    iput v1, p0, Lt2/b;->c:I

    return-void
.end method

.method private n(Ll2/s;)V
    .locals 4

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2, v2}, Ll2/s;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lt2/b;->g()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    iget-object v0, p0, Lt2/b;->j:Lf3/n;

    if-nez v0, :cond_1

    new-instance v0, Lf3/n;

    sget-object v1, Li3/s$a;->a:Li3/s$a;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lf3/n;-><init>(Li3/s$a;I)V

    iput-object v0, p0, Lt2/b;->j:Lf3/n;

    :cond_1
    new-instance v0, Lt2/d;

    iget-wide v1, p0, Lt2/b;->f:J

    invoke-direct {v0, p1, v1, v2}, Lt2/d;-><init>(Ll2/s;J)V

    iput-object v0, p0, Lt2/b;->i:Lt2/d;

    iget-object p1, p0, Lt2/b;->j:Lf3/n;

    invoke-virtual {p1, v0}, Lf3/n;->d(Ll2/s;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lt2/b;->j:Lf3/n;

    new-instance v0, Lt2/e;

    iget-wide v1, p0, Lt2/b;->f:J

    iget-object v3, p0, Lt2/b;->b:Ll2/t;

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2/t;

    invoke-direct {v0, v1, v2, v3}, Lt2/e;-><init>(JLl2/t;)V

    invoke-virtual {p1, v0}, Lf3/n;->b(Ll2/t;)V

    invoke-direct {p0}, Lt2/b;->o()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lt2/b;->g()V

    :goto_0
    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lt2/b;->g:La3/a;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La3/a;

    invoke-direct {p0, v0}, Lt2/b;->i(La3/a;)V

    const/4 v0, 0x5

    iput v0, p0, Lt2/b;->c:I

    return-void
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 0

    iput-object p1, p0, Lt2/b;->b:Ll2/t;

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 7

    iget v0, p0, Lt2/b;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p1, 0x6

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, Lt2/b;->i:Lt2/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt2/b;->h:Ll2/s;

    if-eq p1, v0, :cond_3

    :cond_2
    iput-object p1, p0, Lt2/b;->h:Ll2/s;

    new-instance v0, Lt2/d;

    iget-wide v3, p0, Lt2/b;->f:J

    invoke-direct {v0, p1, v3, v4}, Lt2/d;-><init>(Ll2/s;J)V

    iput-object v0, p0, Lt2/b;->i:Lt2/d;

    :cond_3
    iget-object p1, p0, Lt2/b;->j:Lf3/n;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf3/n;

    iget-object v0, p0, Lt2/b;->i:Lt2/d;

    invoke-virtual {p1, v0, p2}, Lf3/n;->c(Ll2/s;Ll2/l0;)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-wide v0, p2, Ll2/l0;->a:J

    iget-wide v2, p0, Lt2/b;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Ll2/l0;->a:J

    :cond_4
    return p1

    :cond_5
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v3

    iget-wide v5, p0, Lt2/b;->f:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    iput-wide v5, p2, Ll2/l0;->a:J

    return v2

    :cond_6
    invoke-direct {p0, p1}, Lt2/b;->n(Ll2/s;)V

    return v1

    :cond_7
    invoke-direct {p0, p1}, Lt2/b;->l(Ll2/s;)V

    return v1

    :cond_8
    invoke-direct {p0, p1}, Lt2/b;->m(Ll2/s;)V

    return v1

    :cond_9
    invoke-direct {p0, p1}, Lt2/b;->k(Ll2/s;)V

    return v1
.end method

.method public d(Ll2/s;)Z
    .locals 5

    invoke-direct {p0, p1}, Lt2/b;->j(Ll2/s;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lt2/b;->j(Ll2/s;)I

    move-result v0

    iput v0, p0, Lt2/b;->d:I

    const v1, 0xffe0

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lt2/b;->a(Ll2/s;)V

    invoke-direct {p0, p1}, Lt2/b;->j(Ll2/s;)I

    move-result v0

    iput v0, p0, Lt2/b;->d:I

    :cond_1
    iget v0, p0, Lt2/b;->d:I

    const v1, 0xffe1

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ll2/s;->advancePeekPosition(I)V

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v0, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->peekFully([BII)V

    iget-object p1, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v0

    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    cmp-long p1, v0, v3

    if-nez p1, :cond_3

    iget-object p1, p0, Lt2/b;->a:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    move-result p1

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
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
    .locals 1

    iget-object v0, p0, Lt2/b;->j:Lf3/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf3/n;->release()V

    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lt2/b;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lt2/b;->j:Lf3/n;

    goto :goto_0

    :cond_0
    iget v0, p0, Lt2/b;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lt2/b;->j:Lf3/n;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf3/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lf3/n;->seek(JJ)V

    :cond_1
    :goto_0
    return-void
.end method
