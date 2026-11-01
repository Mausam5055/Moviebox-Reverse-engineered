.class public Lv9/i;
.super Ljava/lang/Object;

# interfaces
.implements Lt9/s;
.implements Lcom/google/android/exoplayer2/source/b0;
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv9/i$a;,
        Lv9/i$b;
    }
.end annotation


# instance fields
.field public final a:I

.field private final b:[I

.field private final c:[Lcom/google/android/exoplayer2/o1;

.field private final d:[Z

.field private final e:Lv9/j;

.field private final f:Lcom/google/android/exoplayer2/source/b0$a;

.field private final g:Lcom/google/android/exoplayer2/source/p$a;

.field private final h:Lcom/google/android/exoplayer2/upstream/z;

.field private final i:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final j:Lv9/h;

.field private final k:Ljava/util/ArrayList;

.field private final l:Ljava/util/List;

.field private final m:Lcom/google/android/exoplayer2/source/a0;

.field private final n:[Lcom/google/android/exoplayer2/source/a0;

.field private final o:Lv9/c;

.field private p:Lv9/f;

.field private q:Lcom/google/android/exoplayer2/o1;

.field private r:Lv9/i$b;

.field private s:J

.field private t:J

.field private u:I

.field private v:Lv9/a;

.field w:Z


# direct methods
.method public constructor <init>(I[I[Lcom/google/android/exoplayer2/o1;Lv9/j;Lcom/google/android/exoplayer2/source/b0$a;Lcom/google/android/exoplayer2/upstream/b;JLcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv9/i;->a:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [I

    :cond_0
    iput-object p2, p0, Lv9/i;->b:[I

    if-nez p3, :cond_1

    new-array p3, v0, [Lcom/google/android/exoplayer2/o1;

    :cond_1
    iput-object p3, p0, Lv9/i;->c:[Lcom/google/android/exoplayer2/o1;

    iput-object p4, p0, Lv9/i;->e:Lv9/j;

    iput-object p5, p0, Lv9/i;->f:Lcom/google/android/exoplayer2/source/b0$a;

    iput-object p12, p0, Lv9/i;->g:Lcom/google/android/exoplayer2/source/p$a;

    iput-object p11, p0, Lv9/i;->h:Lcom/google/android/exoplayer2/upstream/z;

    new-instance p3, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p4, "ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance p3, Lv9/h;

    invoke-direct {p3}, Lv9/h;-><init>()V

    iput-object p3, p0, Lv9/i;->j:Lv9/h;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lv9/i;->l:Ljava/util/List;

    array-length p2, p2

    new-array p3, p2, [Lcom/google/android/exoplayer2/source/a0;

    iput-object p3, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    new-array p3, p2, [Z

    iput-object p3, p0, Lv9/i;->d:[Z

    add-int/lit8 p3, p2, 0x1

    new-array p4, p3, [I

    new-array p3, p3, [Lcom/google/android/exoplayer2/source/a0;

    invoke-static {p6, p9, p10}, Lcom/google/android/exoplayer2/source/a0;->k(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;)Lcom/google/android/exoplayer2/source/a0;

    move-result-object p5

    iput-object p5, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    aput p1, p4, v0

    aput-object p5, p3, v0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-static {p6}, Lcom/google/android/exoplayer2/source/a0;->l(Lcom/google/android/exoplayer2/upstream/b;)Lcom/google/android/exoplayer2/source/a0;

    move-result-object p1

    iget-object p5, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    aput-object p1, p5, v0

    add-int/lit8 p5, v0, 0x1

    aput-object p1, p3, p5

    iget-object p1, p0, Lv9/i;->b:[I

    aget p1, p1, v0

    aput p1, p4, p5

    move v0, p5

    goto :goto_0

    :cond_2
    new-instance p1, Lv9/c;

    invoke-direct {p1, p4, p3}, Lv9/c;-><init>([I[Lcom/google/android/exoplayer2/source/a0;)V

    iput-object p1, p0, Lv9/i;->o:Lv9/c;

    iput-wide p7, p0, Lv9/i;->s:J

    iput-wide p7, p0, Lv9/i;->t:J

    return-void
.end method

.method private A(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv9/a;->g(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    iget-object p1, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private D()V
    .locals 4

    iget-object v0, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->V()V

    iget-object v0, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->V()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lv9/i;)Lv9/a;
    .locals 0

    iget-object p0, p0, Lv9/i;->v:Lv9/a;

    return-object p0
.end method

.method static synthetic f(Lv9/i;)[Z
    .locals 0

    iget-object p0, p0, Lv9/i;->d:[Z

    return-object p0
.end method

.method static synthetic g(Lv9/i;)[I
    .locals 0

    iget-object p0, p0, Lv9/i;->b:[I

    return-object p0
.end method

.method static synthetic h(Lv9/i;)[Lcom/google/android/exoplayer2/o1;
    .locals 0

    iget-object p0, p0, Lv9/i;->c:[Lcom/google/android/exoplayer2/o1;

    return-object p0
.end method

.method static synthetic i(Lv9/i;)J
    .locals 2

    iget-wide v0, p0, Lv9/i;->t:J

    return-wide v0
.end method

.method static synthetic k(Lv9/i;)Lcom/google/android/exoplayer2/source/p$a;
    .locals 0

    iget-object p0, p0, Lv9/i;->g:Lcom/google/android/exoplayer2/source/p$a;

    return-object p0
.end method

.method private m(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lv9/i;->A(II)I

    move-result p1

    iget v1, p0, Lv9/i;->u:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v1, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/p0;->M0(Ljava/util/List;II)V

    iget v0, p0, Lv9/i;->u:I

    sub-int/2addr v0, p1

    iput v0, p0, Lv9/i;->u:I

    :cond_0
    return-void
.end method

.method private o(I)V
    .locals 7

    iget-object v0, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    invoke-direct {p0, p1}, Lv9/i;->s(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lv9/i;->r()Lv9/a;

    move-result-object v0

    iget-wide v5, v0, Lv9/f;->h:J

    invoke-direct {p0, p1}, Lv9/i;->p(I)Lv9/a;

    move-result-object p1

    iget-object v0, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lv9/i;->t:J

    iput-wide v0, p0, Lv9/i;->s:J

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv9/i;->w:Z

    iget-object v1, p0, Lv9/i;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget v2, p0, Lv9/i;->a:I

    iget-wide v3, p1, Lv9/f;->g:J

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/p$a;->D(IJJ)V

    return-void
.end method

.method private p(I)Lv9/a;
    .locals 3

    iget-object v0, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9/a;

    iget-object v1, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer2/util/p0;->M0(Ljava/util/List;II)V

    iget p1, p0, Lv9/i;->u:I

    iget-object v1, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lv9/i;->u:I

    iget-object p1, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv9/a;->g(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/a0;->u(I)V

    :goto_0
    iget-object p1, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lv9/a;->g(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/a0;->u(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private r()Lv9/a;
    .locals 2

    iget-object v0, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9/a;

    return-object v0
.end method

.method private s(I)Z
    .locals 5

    iget-object v0, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv9/a;

    iget-object v0, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lv9/a;->g(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    move v0, v1

    :cond_1
    iget-object v2, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lv9/a;->g(I)I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method private t(Lv9/f;)Z
    .locals 0

    instance-of p1, p1, Lv9/a;

    return p1
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result v0

    iget v1, p0, Lv9/i;->u:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lv9/i;->A(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lv9/i;->u:I

    if-gt v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lv9/i;->u:I

    invoke-direct {p0, v1}, Lv9/i;->w(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private w(I)V
    .locals 8

    iget-object v0, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv9/a;

    iget-object v7, p1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget-object v0, p0, Lv9/i;->q:Lcom/google/android/exoplayer2/o1;

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/o1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv9/i;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget v1, p0, Lv9/i;->a:I

    iget v3, p1, Lv9/f;->e:I

    iget-object v4, p1, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v5, p1, Lv9/f;->g:J

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/p$a;->i(ILcom/google/android/exoplayer2/o1;ILjava/lang/Object;J)V

    :cond_0
    iput-object v7, p0, Lv9/i;->q:Lcom/google/android/exoplayer2/o1;

    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lv9/i;->C(Lv9/i$b;)V

    return-void
.end method

.method public C(Lv9/i$b;)V
    .locals 3

    iput-object p1, p0, Lv9/i;->r:Lv9/i$b;

    iget-object p1, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a0;->R()V

    iget-object p1, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a0;->R()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->l(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    return-void
.end method

.method public E(J)V
    .locals 8

    iput-wide p1, p0, Lv9/i;->t:J

    invoke-virtual {p0}, Lv9/i;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lv9/i;->s:J

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv9/a;

    iget-wide v3, v2, Lv9/f;->g:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    iget-wide v4, v2, Lv9/a;->k:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    const/4 v1, 0x1

    if-eqz v2, :cond_4

    iget-object v3, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v2, v0}, Lv9/a;->g(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/a0;->Y(I)Z

    move-result v2

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {p0}, Lv9/i;->getNextLoadPositionUs()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    invoke-virtual {v2, p1, p2, v3}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_6

    iget-object v2, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lv9/i;->A(II)I

    move-result v2

    iput v2, p0, Lv9/i;->u:I

    iget-object v2, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    array-length v3, v2

    :goto_5
    if-ge v0, v3, :cond_9

    aget-object v4, v2, v0

    invoke-virtual {v4, p1, p2, v1}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iput-wide p1, p0, Lv9/i;->s:J

    iput-boolean v0, p0, Lv9/i;->w:Z

    iget-object p1, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lv9/i;->u:I

    iget-object p1, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a0;->r()V

    iget-object p1, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    array-length p2, p1

    :goto_6
    if-ge v0, p2, :cond_7

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/a0;->r()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    goto :goto_7

    :cond_8
    iget-object p1, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->f()V

    invoke-direct {p0}, Lv9/i;->D()V

    :cond_9
    :goto_7
    return-void
.end method

.method public F(JI)Lv9/i$a;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lv9/i;->b:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    iget-object p3, p0, Lv9/i;->d:[Z

    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object p3, p0, Lv9/i;->d:[Z

    aput-boolean v1, p3, v0

    iget-object p3, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1}, Lcom/google/android/exoplayer2/source/a0;->Z(JZ)Z

    new-instance p1, Lv9/i$a;

    iget-object p2, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lv9/i$a;-><init>(Lv9/i;Lv9/i;Lcom/google/android/exoplayer2/source/a0;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(JLcom/google/android/exoplayer2/c3;)J
    .locals 1

    iget-object v0, p0, Lv9/i;->e:Lv9/j;

    invoke-interface {v0, p1, p2, p3}, Lv9/j;->a(JLcom/google/android/exoplayer2/c3;)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 3

    invoke-virtual {p0}, Lv9/i;->u()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lv9/i;->v:Lv9/a;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lv9/a;->g(I)I

    move-result v0

    iget-object v2, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lv9/i;->v()V

    iget-object v0, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    iget-boolean v1, p0, Lv9/i;->w:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/source/a0;->S(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public continueLoading(J)Z
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lv9/i;->w:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, v0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lv9/i;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iget-wide v4, v0, Lv9/i;->s:J

    :goto_0
    move-object v11, v3

    move-wide v9, v4

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lv9/i;->l:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lv9/i;->r()Lv9/a;

    move-result-object v4

    iget-wide v4, v4, Lv9/f;->h:J

    goto :goto_0

    :goto_1
    iget-object v6, v0, Lv9/i;->e:Lv9/j;

    iget-object v12, v0, Lv9/i;->j:Lv9/h;

    move-wide/from16 v7, p1

    invoke-interface/range {v6 .. v12}, Lv9/j;->f(JJLjava/util/List;Lv9/h;)V

    iget-object v3, v0, Lv9/i;->j:Lv9/h;

    iget-boolean v4, v3, Lv9/h;->b:Z

    iget-object v5, v3, Lv9/h;->a:Lv9/f;

    invoke-virtual {v3}, Lv9/h;->a()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v4, :cond_2

    iput-wide v6, v0, Lv9/i;->s:J

    iput-boolean v3, v0, Lv9/i;->w:Z

    return v3

    :cond_2
    if-nez v5, :cond_3

    return v2

    :cond_3
    iput-object v5, v0, Lv9/i;->p:Lv9/f;

    invoke-direct {v0, v5}, Lv9/i;->t(Lv9/f;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v5

    check-cast v4, Lv9/a;

    if-eqz v1, :cond_5

    iget-wide v8, v4, Lv9/f;->g:J

    iget-wide v10, v0, Lv9/i;->s:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_4

    iget-object v1, v0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v1, v10, v11}, Lcom/google/android/exoplayer2/source/a0;->b0(J)V

    iget-object v1, v0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    array-length v8, v1

    :goto_2
    if-ge v2, v8, :cond_4

    aget-object v9, v1, v2

    iget-wide v10, v0, Lv9/i;->s:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/exoplayer2/source/a0;->b0(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iput-wide v6, v0, Lv9/i;->s:J

    :cond_5
    iget-object v1, v0, Lv9/i;->o:Lv9/c;

    invoke-virtual {v4, v1}, Lv9/a;->i(Lv9/c;)V

    iget-object v1, v0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    instance-of v1, v5, Lv9/m;

    if-eqz v1, :cond_7

    move-object v1, v5

    check-cast v1, Lv9/m;

    iget-object v2, v0, Lv9/i;->o:Lv9/c;

    invoke-virtual {v1, v2}, Lv9/m;->e(Lv9/g$b;)V

    :cond_7
    :goto_3
    iget-object v1, v0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, v0, Lv9/i;->h:Lcom/google/android/exoplayer2/upstream/z;

    iget v4, v5, Lv9/f;->c:I

    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/upstream/z;->a(I)I

    move-result v2

    invoke-virtual {v1, v5, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->m(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    move-result-wide v10

    iget-object v12, v0, Lv9/i;->g:Lcom/google/android/exoplayer2/source/p$a;

    new-instance v13, Lt9/h;

    iget-wide v7, v5, Lv9/f;->a:J

    iget-object v9, v5, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;J)V

    iget v14, v5, Lv9/f;->c:I

    iget v15, v0, Lv9/i;->a:I

    iget-object v1, v5, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget v2, v5, Lv9/f;->e:I

    iget-object v4, v5, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v6, v5, Lv9/f;->g:J

    iget-wide v8, v5, Lv9/f;->h:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-virtual/range {v12 .. v22}, Lcom/google/android/exoplayer2/source/p$a;->A(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return v3

    :cond_8
    :goto_4
    return v2
.end method

.method public discardBuffer(JZ)V
    .locals 4

    invoke-virtual {p0}, Lv9/i;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->x()I

    move-result v0

    iget-object v1, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/exoplayer2/source/a0;->q(JZZ)V

    iget-object p1, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a0;->x()I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object p2, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/a0;->y()J

    move-result-wide v0

    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    array-length v3, v2

    if-ge p2, v3, :cond_1

    aget-object v2, v2, p2

    iget-object v3, p0, Lv9/i;->d:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v0, v1, p3, v3}, Lcom/google/android/exoplayer2/source/a0;->q(JZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lv9/i;->m(I)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 4

    iget-boolean v0, p0, Lv9/i;->w:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lv9/i;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lv9/i;->s:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lv9/i;->t:J

    invoke-direct {p0}, Lv9/i;->r()Lv9/a;

    move-result-object v2

    invoke-virtual {v2}, Lv9/n;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv9/a;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Lv9/f;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-object v2, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a0;->z()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lv9/i;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lv9/i;->s:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lv9/i;->w:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lv9/i;->r()Lv9/a;

    move-result-object v0

    iget-wide v0, v0, Lv9/f;->h:J

    :goto_0
    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    invoke-virtual {p0}, Lv9/i;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    iget-boolean v1, p0, Lv9/i;->w:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/a0;->K(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic j(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Lv9/f;

    invoke-virtual/range {p0 .. p6}, Lv9/i;->x(Lv9/f;JJZ)V

    return-void
.end method

.method public bridge synthetic l(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Lv9/f;

    invoke-virtual/range {p0 .. p5}, Lv9/i;->y(Lv9/f;JJ)V

    return-void
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    iget-object v0, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->N()V

    iget-object v0, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv9/i;->e:Lv9/j;

    invoke-interface {v0}, Lv9/j;->maybeThrowError()V

    :cond_0
    return-void
.end method

.method public bridge synthetic n(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    check-cast p1, Lv9/f;

    invoke-virtual/range {p0 .. p7}, Lv9/i;->z(Lv9/f;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .locals 4

    iget-object v0, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->T()V

    iget-object v0, p0, Lv9/i;->n:[Lcom/google/android/exoplayer2/source/a0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a0;->T()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv9/i;->e:Lv9/j;

    invoke-interface {v0}, Lv9/j;->release()V

    iget-object v0, p0, Lv9/i;->r:Lv9/i$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lv9/i$b;->c(Lv9/i;)V

    :cond_1
    return-void
.end method

.method public q()Lv9/j;
    .locals 1

    iget-object v0, p0, Lv9/i;->e:Lv9/j;

    return-object v0
.end method

.method public reevaluateBuffer(J)V
    .locals 3

    iget-object v0, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lv9/i;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv9/i;->p:Lv9/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9/f;

    invoke-direct {p0, v0}, Lv9/i;->t(Lv9/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lv9/i;->s(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lv9/i;->e:Lv9/j;

    iget-object v2, p0, Lv9/i;->l:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0, v2}, Lv9/j;->h(JLv9/f;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lv9/i;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    invoke-direct {p0, v0}, Lv9/i;->t(Lv9/f;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v0, Lv9/a;

    iput-object v0, p0, Lv9/i;->v:Lv9/a;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lv9/i;->e:Lv9/j;

    iget-object v1, p0, Lv9/i;->l:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Lv9/j;->getPreferredQueueSize(JLjava/util/List;)I

    move-result p1

    iget-object p2, p0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    invoke-direct {p0, p1}, Lv9/i;->o(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public skipData(J)I
    .locals 3

    invoke-virtual {p0}, Lv9/i;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    iget-boolean v2, p0, Lv9/i;->w:Z

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/exoplayer2/source/a0;->E(JZ)I

    move-result p1

    iget-object p2, p0, Lv9/i;->v:Lv9/a;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lv9/a;->g(I)I

    move-result p2

    iget-object v0, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    iget-object p2, p0, Lv9/i;->m:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/a0;->e0(I)V

    invoke-direct {p0}, Lv9/i;->v()V

    return p1
.end method

.method u()Z
    .locals 4

    iget-wide v0, p0, Lv9/i;->s:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x(Lv9/f;JJZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lv9/i;->p:Lv9/f;

    iput-object v2, v0, Lv9/i;->v:Lv9/a;

    new-instance v2, Lt9/h;

    iget-wide v4, v1, Lv9/f;->a:J

    iget-object v6, v1, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-virtual/range {p1 .. p1}, Lv9/f;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lv9/f;->c()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lv9/f;->a()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Lv9/i;->h:Lcom/google/android/exoplayer2/upstream/z;

    iget-wide v4, v1, Lv9/f;->a:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    iget-object v3, v0, Lv9/i;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget v5, v1, Lv9/f;->c:I

    iget v6, v0, Lv9/i;->a:I

    iget-object v7, v1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget v8, v1, Lv9/f;->e:I

    iget-object v9, v1, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lv9/f;->g:J

    iget-wide v12, v1, Lv9/f;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/p$a;->r(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-virtual {p0}, Lv9/i;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lv9/i;->D()V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p1}, Lv9/i;->t(Lv9/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lv9/i;->p(I)Lv9/a;

    iget-object v1, v0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lv9/i;->t:J

    iput-wide v1, v0, Lv9/i;->s:J

    :cond_1
    :goto_0
    iget-object v1, v0, Lv9/i;->f:Lcom/google/android/exoplayer2/source/b0$a;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    :cond_2
    return-void
.end method

.method public y(Lv9/f;JJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lv9/i;->p:Lv9/f;

    iget-object v2, v0, Lv9/i;->e:Lv9/j;

    invoke-interface {v2, v1}, Lv9/j;->g(Lv9/f;)V

    new-instance v2, Lt9/h;

    iget-wide v4, v1, Lv9/f;->a:J

    iget-object v6, v1, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-virtual/range {p1 .. p1}, Lv9/f;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lv9/f;->c()Ljava/util/Map;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lv9/f;->a()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Lv9/i;->h:Lcom/google/android/exoplayer2/upstream/z;

    iget-wide v4, v1, Lv9/f;->a:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    iget-object v3, v0, Lv9/i;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget v5, v1, Lv9/f;->c:I

    iget v6, v0, Lv9/i;->a:I

    iget-object v7, v1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget v8, v1, Lv9/f;->e:I

    iget-object v9, v1, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lv9/f;->g:J

    iget-wide v12, v1, Lv9/f;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/p$a;->u(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lv9/i;->f:Lcom/google/android/exoplayer2/source/b0$a;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    return-void
.end method

.method public z(Lv9/f;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lv9/f;->a()J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lv9/i;->t(Lv9/f;)Z

    move-result v14

    iget-object v2, v0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x1

    add-int/lit8 v10, v2, -0x1

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    if-eqz v14, :cond_1

    invoke-direct {v0, v10}, Lv9/i;->s(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v15

    :goto_1
    new-instance v17, Lt9/h;

    iget-wide v3, v1, Lv9/f;->a:J

    iget-object v5, v1, Lv9/f;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-virtual/range {p1 .. p1}, Lv9/f;->d()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lv9/f;->c()Ljava/util/Map;

    move-result-object v7

    move-object/from16 v2, v17

    move v15, v8

    move-object/from16 v30, v17

    move/from16 v17, v14

    move-object/from16 v14, v30

    move-wide/from16 v8, p2

    move/from16 v29, v10

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v2, Lt9/i;

    iget v3, v1, Lv9/f;->c:I

    iget v4, v0, Lv9/i;->a:I

    iget-object v5, v1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget v6, v1, Lv9/f;->e:I

    iget-object v7, v1, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v8, v1, Lv9/f;->g:J

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v24

    iget-wide v8, v1, Lv9/f;->h:J

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v26

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    invoke-direct/range {v18 .. v27}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    new-instance v3, Lcom/google/android/exoplayer2/upstream/z$c;

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct {v3, v14, v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/z$c;-><init>(Lt9/h;Lt9/i;Ljava/io/IOException;I)V

    iget-object v2, v0, Lv9/i;->e:Lv9/j;

    iget-object v5, v0, Lv9/i;->h:Lcom/google/android/exoplayer2/upstream/z;

    invoke-interface {v2, v1, v15, v3, v5}, Lv9/j;->d(Lv9/f;ZLcom/google/android/exoplayer2/upstream/z$c;Lcom/google/android/exoplayer2/upstream/z;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v15, :cond_3

    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->f:Lcom/google/android/exoplayer2/upstream/Loader$c;

    if-eqz v17, :cond_5

    move/from16 v6, v29

    invoke-direct {v0, v6}, Lv9/i;->p(I)Lv9/a;

    move-result-object v6

    if-ne v6, v1, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v6, v0, Lv9/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v6, v0, Lv9/i;->t:J

    iput-wide v6, v0, Lv9/i;->s:J

    goto :goto_3

    :cond_3
    const-string v2, "ChunkSampleStream"

    const-string v6, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v2, v6}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    if-nez v2, :cond_7

    iget-object v2, v0, Lv9/i;->h:Lcom/google/android/exoplayer2/upstream/z;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/z;->c(Lcom/google/android/exoplayer2/upstream/z$c;)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    invoke-static {v6, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->g(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object v2

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    :cond_7
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader$c;->c()Z

    move-result v3

    xor-int/lit8 v28, v3, 0x1

    iget-object v6, v0, Lv9/i;->g:Lcom/google/android/exoplayer2/source/p$a;

    iget v7, v1, Lv9/f;->c:I

    iget v8, v0, Lv9/i;->a:I

    iget-object v9, v1, Lv9/f;->d:Lcom/google/android/exoplayer2/o1;

    iget v10, v1, Lv9/f;->e:I

    iget-object v11, v1, Lv9/f;->f:Ljava/lang/Object;

    iget-wide v12, v1, Lv9/f;->g:J

    iget-wide v4, v1, Lv9/f;->h:J

    move-object/from16 v16, v6

    move-object/from16 v17, v14

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v22, v11

    move-wide/from16 v23, v12

    move-wide/from16 v25, v4

    move-object/from16 v27, p6

    invoke-virtual/range {v16 .. v28}, Lcom/google/android/exoplayer2/source/p$a;->w(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v3, :cond_8

    const/4 v3, 0x0

    iput-object v3, v0, Lv9/i;->p:Lv9/f;

    iget-object v3, v0, Lv9/i;->h:Lcom/google/android/exoplayer2/upstream/z;

    iget-wide v4, v1, Lv9/f;->a:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    iget-object v1, v0, Lv9/i;->f:Lcom/google/android/exoplayer2/source/b0$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    :cond_8
    return-object v2
.end method
