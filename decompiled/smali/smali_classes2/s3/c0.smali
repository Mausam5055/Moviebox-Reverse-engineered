.class public final Ls3/c0;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/c0$a;
    }
.end annotation


# static fields
.field public static final l:Ll2/x;


# instance fields
.field private final a:Landroidx/media3/common/util/p0;

.field private final b:Landroid/util/SparseArray;

.field private final c:Landroidx/media3/common/util/j0;

.field private final d:Ls3/a0;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:Ls3/z;

.field private j:Ll2/t;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls3/b0;

    invoke-direct {v0}, Ls3/b0;-><init>()V

    sput-object v0, Ls3/c0;->l:Ll2/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroidx/media3/common/util/p0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/p0;-><init>(J)V

    invoke-direct {p0, v0}, Ls3/c0;-><init>(Landroidx/media3/common/util/p0;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/p0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/c0;->a:Landroidx/media3/common/util/p0;

    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls3/c0;->b:Landroid/util/SparseArray;

    new-instance p1, Ls3/a0;

    invoke-direct {p1}, Ls3/a0;-><init>()V

    iput-object p1, p0, Ls3/c0;->d:Ls3/a0;

    return-void
.end method

.method public static synthetic a()[Ll2/r;
    .locals 1

    invoke-static {}, Ls3/c0;->g()[Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic g()[Ll2/r;
    .locals 3

    new-instance v0, Ls3/c0;

    invoke-direct {v0}, Ls3/c0;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ll2/r;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private h(J)V
    .locals 7

    iget-boolean v0, p0, Ls3/c0;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls3/c0;->k:Z

    iget-object v0, p0, Ls3/c0;->d:Ls3/a0;

    invoke-virtual {v0}, Ls3/a0;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ls3/z;

    iget-object v1, p0, Ls3/c0;->d:Ls3/a0;

    invoke-virtual {v1}, Ls3/a0;->d()Landroidx/media3/common/util/p0;

    move-result-object v2

    iget-object v1, p0, Ls3/c0;->d:Ls3/a0;

    invoke-virtual {v1}, Ls3/a0;->c()J

    move-result-wide v3

    move-object v1, v0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Ls3/z;-><init>(Landroidx/media3/common/util/p0;JJ)V

    iput-object v0, p0, Ls3/c0;->i:Ls3/z;

    iget-object p1, p0, Ls3/c0;->j:Ll2/t;

    invoke-virtual {v0}, Ll2/e;->b()Ll2/m0;

    move-result-object p2

    invoke-interface {p1, p2}, Ll2/t;->f(Ll2/m0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ls3/c0;->j:Ll2/t;

    new-instance p2, Ll2/m0$b;

    iget-object v0, p0, Ls3/c0;->d:Ls3/a0;

    invoke-virtual {v0}, Ls3/a0;->c()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ll2/m0$b;-><init>(J)V

    invoke-interface {p1, p2}, Ll2/t;->f(Ll2/m0;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 0

    iput-object p1, p0, Ls3/c0;->j:Ll2/t;

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 10

    iget-object v0, p0, Ls3/c0;->j:Ll2/t;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v5, p0, Ls3/c0;->d:Ls3/a0;

    invoke-virtual {v5}, Ls3/a0;->e()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v0, p0, Ls3/c0;->d:Ls3/a0;

    invoke-virtual {v0, p1, p2}, Ls3/a0;->g(Ll2/s;Ll2/l0;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, v0, v1}, Ls3/c0;->h(J)V

    iget-object v5, p0, Ls3/c0;->i:Ls3/z;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ll2/e;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Ls3/c0;->i:Ls3/z;

    invoke-virtual {v0, p1, p2}, Ll2/e;->c(Ll2/s;Ll2/l0;)I

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ll2/s;->getPeekPosition()J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :goto_0
    cmp-long p2, v0, v2

    const/4 v2, -0x1

    if-eqz p2, :cond_3

    const-wide/16 v3, 0x4

    cmp-long p2, v0, v3

    if-gez p2, :cond_3

    return v2

    :cond_3
    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, p2, v1, v0, v3}, Ll2/s;->peekFully([BIIZ)Z

    move-result p2

    if-nez p2, :cond_4

    return v2

    :cond_4
    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, v1}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->q()I

    move-result p2

    const/16 v0, 0x1b9

    if-ne p2, v0, :cond_5

    return v2

    :cond_5
    const/16 v0, 0x1ba

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    const/16 v0, 0xa

    invoke-interface {p1, p2, v1, v0}, Ll2/s;->peekFully([BII)V

    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->H()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    invoke-interface {p1, p2}, Ll2/s;->skipFully(I)V

    return v1

    :cond_6
    const/16 v0, 0x1bb

    const/4 v2, 0x2

    const/4 v4, 0x6

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Ll2/s;->peekFully([BII)V

    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, v1}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->P()I

    move-result p2

    add-int/2addr p2, v4

    invoke-interface {p1, p2}, Ll2/s;->skipFully(I)V

    return v1

    :cond_7
    and-int/lit16 v0, p2, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v3, :cond_8

    invoke-interface {p1, v3}, Ll2/s;->skipFully(I)V

    return v1

    :cond_8
    and-int/lit16 v0, p2, 0xff

    iget-object v5, p0, Ls3/c0;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls3/c0$a;

    iget-boolean v6, p0, Ls3/c0;->e:Z

    if-nez v6, :cond_e

    if-nez v5, :cond_c

    const/16 v6, 0xbd

    const-string v7, "video/mp2p"

    if-ne v0, v6, :cond_9

    new-instance p2, Ls3/c;

    invoke-direct {p2, v7}, Ls3/c;-><init>(Ljava/lang/String;)V

    iput-boolean v3, p0, Ls3/c0;->f:Z

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Ls3/c0;->h:J

    goto :goto_1

    :cond_9
    and-int/lit16 v6, p2, 0xe0

    const/16 v8, 0xc0

    if-ne v6, v8, :cond_a

    new-instance p2, Ls3/t;

    invoke-direct {p2, v7}, Ls3/t;-><init>(Ljava/lang/String;)V

    iput-boolean v3, p0, Ls3/c0;->f:Z

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Ls3/c0;->h:J

    goto :goto_1

    :cond_a
    and-int/lit16 p2, p2, 0xf0

    const/16 v6, 0xe0

    if-ne p2, v6, :cond_b

    new-instance p2, Ls3/n;

    invoke-direct {p2, v7}, Ls3/n;-><init>(Ljava/lang/String;)V

    iput-boolean v3, p0, Ls3/c0;->g:Z

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Ls3/c0;->h:J

    goto :goto_1

    :cond_b
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_c

    new-instance v5, Ls3/l0$d;

    const/16 v6, 0x100

    invoke-direct {v5, v0, v6}, Ls3/l0$d;-><init>(II)V

    iget-object v6, p0, Ls3/c0;->j:Ll2/t;

    invoke-interface {p2, v6, v5}, Ls3/m;->d(Ll2/t;Ls3/l0$d;)V

    new-instance v5, Ls3/c0$a;

    iget-object v6, p0, Ls3/c0;->a:Landroidx/media3/common/util/p0;

    invoke-direct {v5, p2, v6}, Ls3/c0$a;-><init>(Ls3/m;Landroidx/media3/common/util/p0;)V

    iget-object p2, p0, Ls3/c0;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    iget-boolean p2, p0, Ls3/c0;->f:Z

    if-eqz p2, :cond_d

    iget-boolean p2, p0, Ls3/c0;->g:Z

    if-eqz p2, :cond_d

    iget-wide v6, p0, Ls3/c0;->h:J

    const-wide/16 v8, 0x2000

    add-long/2addr v6, v8

    goto :goto_2

    :cond_d
    const-wide/32 v6, 0x100000

    :goto_2
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_e

    iput-boolean v3, p0, Ls3/c0;->e:Z

    iget-object p2, p0, Ls3/c0;->j:Ll2/t;

    invoke-interface {p2}, Ll2/t;->endTracks()V

    :cond_e
    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Ll2/s;->peekFully([BII)V

    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2, v1}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p2, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->P()I

    move-result p2

    add-int/2addr p2, v4

    if-nez v5, :cond_f

    invoke-interface {p1, p2}, Ll2/s;->skipFully(I)V

    goto :goto_3

    :cond_f
    iget-object v0, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v0, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, p2}, Ll2/s;->readFully([BII)V

    iget-object p1, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object p1, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v5, p1}, Ls3/c0$a;->a(Landroidx/media3/common/util/j0;)V

    iget-object p1, p0, Ls3/c0;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->V(I)V

    :goto_3
    return v1
.end method

.method public d(Ll2/s;)Z
    .locals 9

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Ll2/s;->peekFully([BII)V

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    invoke-interface {p1, v0}, Ll2/s;->advancePeekPosition(I)V

    invoke-interface {p1, v1, v2, v5}, Ll2/s;->peekFully([BII)V

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    move v2, v3

    :cond_6
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
    .locals 5

    iget-object p1, p0, Ls3/c0;->a:Landroidx/media3/common/util/p0;

    invoke-virtual {p1}, Landroidx/media3/common/util/p0;->f()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Ls3/c0;->a:Landroidx/media3/common/util/p0;

    invoke-virtual {p1}, Landroidx/media3/common/util/p0;->d()J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    cmp-long p1, v3, p3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    move p1, v2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Ls3/c0;->a:Landroidx/media3/common/util/p0;

    invoke-virtual {p1, p3, p4}, Landroidx/media3/common/util/p0;->i(J)V

    :cond_3
    iget-object p1, p0, Ls3/c0;->i:Ls3/z;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p3, p4}, Ll2/e;->h(J)V

    :cond_4
    :goto_2
    iget-object p1, p0, Ls3/c0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p2, p1, :cond_5

    iget-object p1, p0, Ls3/c0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls3/c0$a;

    invoke-virtual {p1}, Ls3/c0$a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
