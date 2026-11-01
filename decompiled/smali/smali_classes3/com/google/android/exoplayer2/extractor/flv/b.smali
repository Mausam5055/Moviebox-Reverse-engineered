.class public final Lcom/google/android/exoplayer2/extractor/flv/b;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/l;


# static fields
.field public static final q:Lg9/r;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/d0;

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Lcom/google/android/exoplayer2/util/d0;

.field private final d:Lcom/google/android/exoplayer2/util/d0;

.field private final e:Lcom/google/android/exoplayer2/extractor/flv/c;

.field private f:Lg9/n;

.field private g:I

.field private h:Z

.field private i:J

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:Z

.field private o:Lcom/google/android/exoplayer2/extractor/flv/a;

.field private p:Lcom/google/android/exoplayer2/extractor/flv/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk9/a;

    invoke-direct {v0}, Lk9/a;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flv/b;->q:Lg9/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/d0;

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/d0;

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/d0;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/extractor/flv/c;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:I

    return-void
.end method

.method public static synthetic a()[Lg9/l;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/flv/b;->g()[Lg9/l;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lg9/n;

    new-instance v1, Lg9/b0$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lg9/b0$b;-><init>(J)V

    invoke-interface {v0, v1}, Lg9/n;->d(Lg9/b0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->n:Z

    :cond_0
    return-void
.end method

.method private f()J
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->i:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/extractor/flv/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/flv/c;->d()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:J

    :goto_0
    return-wide v0
.end method

.method private static synthetic g()[Lg9/l;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/b;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lg9/l;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private h(Lg9/m;)Lcom/google/android/exoplayer2/util/d0;
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->l:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->b()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->l:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/d0;->N([BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/d0;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->l:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->O(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->l:I

    invoke-interface {p1, v0, v2, v1}, Lg9/m;->readFully([BII)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:Lcom/google/android/exoplayer2/util/d0;

    return-object p1
.end method

.method private i(Lg9/m;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lg9/m;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/d0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result p1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    move v1, v3

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->o:Lcom/google/android/exoplayer2/extractor/flv/a;

    if-nez p1, :cond_3

    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lg9/n;

    const/16 v4, 0x8

    invoke-interface {v0, v4, v3}, Lg9/n;->track(II)Lg9/e0;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/flv/a;-><init>(Lg9/e0;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->o:Lcom/google/android/exoplayer2/extractor/flv/a;

    :cond_3
    const/4 p1, 0x2

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->p:Lcom/google/android/exoplayer2/extractor/flv/d;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lg9/n;

    invoke-interface {v1, v2, p1}, Lg9/n;->track(II)Lg9/e0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/d;-><init>(Lg9/e0;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->p:Lcom/google/android/exoplayer2/extractor/flv/d;

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lg9/n;

    invoke-interface {v0}, Lg9/n;->endTracks()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->j:I

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:I

    return v3
.end method

.method private j(Lg9/m;)Z
    .locals 9

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/b;->f()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->k:I

    const/16 v3, 0x8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->o:Lcom/google/android/exoplayer2/extractor/flv/a;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/b;->e()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->o:Lcom/google/android/exoplayer2/extractor/flv/a;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/b;->h(Lg9/m;)Lcom/google/android/exoplayer2/util/d0;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lcom/google/android/exoplayer2/util/d0;J)Z

    move-result p1

    :cond_0
    :goto_0
    move v0, v6

    goto :goto_1

    :cond_1
    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->p:Lcom/google/android/exoplayer2/extractor/flv/d;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flv/b;->e()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->p:Lcom/google/android/exoplayer2/extractor/flv/d;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/b;->h(Lg9/m;)Lcom/google/android/exoplayer2/util/d0;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lcom/google/android/exoplayer2/util/d0;J)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->n:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/extractor/flv/c;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/b;->h(Lg9/m;)Lcom/google/android/exoplayer2/util/d0;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lcom/google/android/exoplayer2/util/d0;J)Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/extractor/flv/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/flv/c;->d()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lg9/n;

    new-instance v3, Lg9/z;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/extractor/flv/c;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/extractor/flv/c;->e()[J

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/extractor/flv/c;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/extractor/flv/c;->f()[J

    move-result-object v8

    invoke-direct {v3, v7, v8, v0, v1}, Lg9/z;-><init>([J[JJ)V

    invoke-interface {v2, v3}, Lg9/n;->d(Lg9/b0;)V

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->n:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->l:I

    invoke-interface {p1, v0}, Lg9/m;->skipFully(I)V

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:Z

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Lcom/google/android/exoplayer2/extractor/flv/c;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/flv/c;->d()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-nez p1, :cond_4

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:J

    neg-long v1, v1

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    :goto_2
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->i:J

    :cond_5
    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->j:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:I

    return v0
.end method

.method private k(Lg9/m;)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lg9/m;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->k:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->G()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->l:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->G()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->m:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lcom/google/android/exoplayer2/util/d0;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:I

    return v3
.end method

.method private l(Lg9/m;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->j:I

    invoke-interface {p1, v0}, Lg9/m;->skipFully(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->j:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:I

    return-void
.end method


# virtual methods
.method public b(Lg9/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lg9/n;

    return-void
.end method

.method public c(Lg9/m;Lg9/a0;)I
    .locals 2

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Lg9/n;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/b;->j(Lg9/m;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/b;->k(Lg9/m;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/b;->l(Lg9/m;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/b;->i(Lg9/m;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1
.end method

.method public d(Lg9/m;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lg9/m;->peekFully([BII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->G()I

    move-result v0

    const v1, 0x464c56

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v2, v1}, Lg9/m;->peekFully([BII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lg9/m;->peekFully([BII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v0

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    invoke-interface {p1, v0}, Lg9/m;->advancePeekPosition(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Lg9/m;->peekFully([BII)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->a:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:I

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->h:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:I

    :goto_0
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->j:I

    return-void
.end method
