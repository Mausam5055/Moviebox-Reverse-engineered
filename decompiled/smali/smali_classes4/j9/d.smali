.class public final Lj9/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/l;


# static fields
.field public static final o:Lg9/r;


# instance fields
.field private final a:[B

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Z

.field private final d:Lg9/s$a;

.field private e:Lg9/n;

.field private f:Lg9/e0;

.field private g:I

.field private h:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private i:Lg9/v;

.field private j:I

.field private k:I

.field private l:Lj9/b;

.field private m:I

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj9/c;

    invoke-direct {v0}, Lj9/c;-><init>()V

    sput-object v0, Lj9/d;->o:Lg9/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj9/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lj9/d;->a:[B

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/d0;-><init>([BI)V

    iput-object v0, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lj9/d;->c:Z

    new-instance p1, Lg9/s$a;

    invoke-direct {p1}, Lg9/s$a;-><init>()V

    iput-object p1, p0, Lj9/d;->d:Lg9/s$a;

    iput v2, p0, Lj9/d;->g:I

    return-void
.end method

.method public static synthetic a()[Lg9/l;
    .locals 1

    invoke-static {}, Lj9/d;->i()[Lg9/l;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/google/android/exoplayer2/util/d0;Z)J
    .locals 4

    iget-object v0, p0, Lj9/d;->i:Lg9/v;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v1, p0, Lj9/d;->i:Lg9/v;

    iget v2, p0, Lj9/d;->k:I

    iget-object v3, p0, Lj9/d;->d:Lg9/s$a;

    invoke-static {p1, v1, v2, v3}, Lg9/s;->d(Lcom/google/android/exoplayer2/util/d0;Lg9/v;ILg9/s$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object p1, p0, Lj9/d;->d:Lg9/s$a;

    iget-wide p1, p1, Lg9/s$a;->a:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result p2

    iget v1, p0, Lj9/d;->j:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const/4 p2, 0x0

    :try_start_0
    iget-object v1, p0, Lj9/d;->i:Lg9/v;

    iget v2, p0, Lj9/d;->k:I

    iget-object v3, p0, Lj9/d;->d:Lg9/s$a;

    invoke-static {p1, v1, v2, v3}, Lg9/s;->d(Lcom/google/android/exoplayer2/util/d0;Lg9/v;ILg9/s$a;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v1, p2

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_3

    :cond_2
    move p2, v1

    :goto_3
    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object p1, p0, Lj9/d;->d:Lg9/s$a;

    iget-wide p1, p1, Lg9/s$a;->a:J

    return-wide p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private f(Lg9/m;)V
    .locals 5

    invoke-static {p1}, Lg9/t;->b(Lg9/m;)I

    move-result v0

    iput v0, p0, Lj9/d;->k:I

    iget-object v0, p0, Lj9/d;->e:Lg9/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/n;

    invoke-interface {p1}, Lg9/m;->getPosition()J

    move-result-wide v1

    invoke-interface {p1}, Lg9/m;->getLength()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lj9/d;->g(JJ)Lg9/b0;

    move-result-object p1

    invoke-interface {v0, p1}, Lg9/n;->d(Lg9/b0;)V

    const/4 p1, 0x5

    iput p1, p0, Lj9/d;->g:I

    return-void
.end method

.method private g(JJ)Lg9/b0;
    .locals 8

    iget-object v0, p0, Lj9/d;->i:Lg9/v;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lj9/d;->i:Lg9/v;

    iget-object v0, v2, Lg9/v;->k:Lg9/v$a;

    if-eqz v0, :cond_0

    new-instance p3, Lg9/u;

    invoke-direct {p3, v2, p1, p2}, Lg9/u;-><init>(Lg9/v;J)V

    return-object p3

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    iget-wide v0, v2, Lg9/v;->j:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    new-instance v0, Lj9/b;

    iget v3, p0, Lj9/d;->k:I

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lj9/b;-><init>(Lg9/v;IJJ)V

    iput-object v0, p0, Lj9/d;->l:Lj9/b;

    invoke-virtual {v0}, Lg9/a;->b()Lg9/b0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lg9/b0$b;

    invoke-virtual {v2}, Lg9/v;->f()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lg9/b0$b;-><init>(J)V

    return-object p1
.end method

.method private h(Lg9/m;)V
    .locals 3

    iget-object v0, p0, Lj9/d;->a:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lg9/m;->peekFully([BII)V

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    const/4 p1, 0x2

    iput p1, p0, Lj9/d;->g:I

    return-void
.end method

.method private static synthetic i()[Lg9/l;
    .locals 3

    new-instance v0, Lj9/d;

    invoke-direct {v0}, Lj9/d;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lg9/l;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private j()V
    .locals 11

    iget-wide v0, p0, Lj9/d;->n:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lj9/d;->i:Lg9/v;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg9/v;

    iget v2, v2, Lg9/v;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v0, p0, Lj9/d;->f:Lg9/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lg9/e0;

    iget v8, p0, Lj9/d;->m:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lg9/e0;->d(JIIILg9/e0$a;)V

    return-void
.end method

.method private k(Lg9/m;Lg9/a0;)I
    .locals 6

    iget-object v0, p0, Lj9/d;->f:Lg9/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lj9/d;->i:Lg9/v;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lj9/d;->l:Lj9/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg9/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj9/d;->l:Lj9/b;

    invoke-virtual {v0, p1, p2}, Lg9/a;->c(Lg9/m;Lg9/a0;)I

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p0, Lj9/d;->n:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lj9/d;->i:Lg9/v;

    invoke-static {p1, p2}, Lg9/s;->i(Lg9/m;Lg9/v;)J

    move-result-wide p1

    iput-wide p1, p0, Lj9/d;->n:J

    return v0

    :cond_1
    iget-object p2, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result p2

    const v1, 0x8000

    if-ge p2, v1, :cond_4

    iget-object v4, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v4

    sub-int/2addr v1, p2

    invoke-interface {p1, v4, p2, v1}, Lg9/m;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    if-nez v4, :cond_3

    iget-object v1, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/util/d0;->O(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lj9/d;->j()V

    return v1

    :cond_4
    move v4, v0

    :cond_5
    :goto_1
    iget-object p1, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result p1

    iget p2, p0, Lj9/d;->m:I

    iget v1, p0, Lj9/d;->j:I

    if-ge p2, v1, :cond_6

    iget-object v5, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    sub-int/2addr v1, p2

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v5, p2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    :cond_6
    iget-object p2, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {p0, p2, v4}, Lj9/d;->e(Lcom/google/android/exoplayer2/util/d0;Z)J

    move-result-wide v4

    iget-object p2, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result p2

    sub-int/2addr p2, p1

    iget-object v1, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object p1, p0, Lj9/d;->f:Lg9/e0;

    iget-object v1, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-interface {p1, v1, p2}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget p1, p0, Lj9/d;->m:I

    add-int/2addr p1, p2

    iput p1, p0, Lj9/d;->m:I

    cmp-long p1, v4, v2

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lj9/d;->j()V

    iput v0, p0, Lj9/d;->m:I

    iput-wide v4, p0, Lj9/d;->n:J

    :cond_7
    iget-object p1, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_8

    iget-object p1, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result p1

    iget-object p2, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p2

    iget-object v1, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v1

    iget-object v2, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v2

    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object p2, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/d0;->O(I)V

    :cond_8
    return v0
.end method

.method private l(Lg9/m;)V
    .locals 2

    iget-boolean v0, p0, Lj9/d;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lg9/t;->d(Lg9/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    iput-object p1, p0, Lj9/d;->h:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput v1, p0, Lj9/d;->g:I

    return-void
.end method

.method private m(Lg9/m;)V
    .locals 3

    new-instance v0, Lg9/t$a;

    iget-object v1, p0, Lj9/d;->i:Lg9/v;

    invoke-direct {v0, v1}, Lg9/t$a;-><init>(Lg9/v;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lg9/t;->e(Lg9/m;Lg9/t$a;)Z

    move-result v1

    iget-object v2, v0, Lg9/t$a;->a:Lg9/v;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg9/v;

    iput-object v2, p0, Lj9/d;->i:Lg9/v;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj9/d;->i:Lg9/v;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lj9/d;->i:Lg9/v;

    iget p1, p1, Lg9/v;->c:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lj9/d;->j:I

    iget-object p1, p0, Lj9/d;->f:Lg9/e0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg9/e0;

    iget-object v0, p0, Lj9/d;->i:Lg9/v;

    iget-object v1, p0, Lj9/d;->a:[B

    iget-object v2, p0, Lj9/d;->h:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v1, v2}, Lg9/v;->g([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    invoke-interface {p1, v0}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    const/4 p1, 0x4

    iput p1, p0, Lj9/d;->g:I

    return-void
.end method

.method private n(Lg9/m;)V
    .locals 0

    invoke-static {p1}, Lg9/t;->i(Lg9/m;)V

    const/4 p1, 0x3

    iput p1, p0, Lj9/d;->g:I

    return-void
.end method


# virtual methods
.method public b(Lg9/n;)V
    .locals 2

    iput-object p1, p0, Lj9/d;->e:Lg9/n;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lg9/n;->track(II)Lg9/e0;

    move-result-object v0

    iput-object v0, p0, Lj9/d;->f:Lg9/e0;

    invoke-interface {p1}, Lg9/n;->endTracks()V

    return-void
.end method

.method public c(Lg9/m;Lg9/a0;)I
    .locals 3

    iget v0, p0, Lj9/d;->g:I

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

    invoke-direct {p0, p1, p2}, Lj9/d;->k(Lg9/m;Lg9/a0;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lj9/d;->f(Lg9/m;)V

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lj9/d;->m(Lg9/m;)V

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lj9/d;->n(Lg9/m;)V

    return v1

    :cond_4
    invoke-direct {p0, p1}, Lj9/d;->h(Lg9/m;)V

    return v1

    :cond_5
    invoke-direct {p0, p1}, Lj9/d;->l(Lg9/m;)V

    return v1
.end method

.method public d(Lg9/m;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg9/t;->c(Lg9/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {p1}, Lg9/t;->a(Lg9/m;)Z

    move-result p1

    return p1
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

    iput p2, p0, Lj9/d;->g:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj9/d;->l:Lj9/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Lg9/a;->h(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Lj9/d;->n:J

    iput p2, p0, Lj9/d;->m:I

    iget-object p1, p0, Lj9/d;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    return-void
.end method
