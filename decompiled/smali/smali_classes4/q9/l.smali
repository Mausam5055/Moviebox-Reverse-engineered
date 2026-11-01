.class public final Lq9/l;
.super Ljava/lang/Object;

# interfaces
.implements Lq9/m;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:[Lg9/e0;

.field private c:Z

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/l;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lg9/e0;

    iput-object p1, p0, Lq9/l;->b:[Lg9/e0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lq9/l;->f:J

    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/util/d0;I)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result p1

    if-eq p1, p2, :cond_1

    iput-boolean v1, p0, Lq9/l;->c:Z

    :cond_1
    iget p1, p0, Lq9/l;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lq9/l;->d:I

    iget-boolean p1, p0, Lq9/l;->c:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 6

    iget-boolean v0, p0, Lq9/l;->c:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lq9/l;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lq9/l;->d(Lcom/google/android/exoplayer2/util/d0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lq9/l;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Lq9/l;->d(Lcom/google/android/exoplayer2/util/d0;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v2

    iget-object v3, p0, Lq9/l;->b:[Lg9/e0;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-interface {v5, p1, v2}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lq9/l;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lq9/l;->e:I

    :cond_3
    return-void
.end method

.method public b(JI)V
    .locals 2

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lq9/l;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lq9/l;->f:J

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lq9/l;->e:I

    const/4 p1, 0x2

    iput p1, p0, Lq9/l;->d:I

    return-void
.end method

.method public c(Lg9/n;Lq9/i0$d;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lq9/l;->b:[Lg9/e0;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lq9/l;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq9/i0$a;

    invoke-virtual {p2}, Lq9/i0$d;->a()V

    invoke-virtual {p2}, Lq9/i0$d;->c()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lg9/n;->track(II)Lg9/e0;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {p2}, Lq9/i0$d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    const-string v4, "application/dvbsubs"

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    iget-object v4, v1, Lq9/i0$a;->c:[B

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    iget-object v1, v1, Lq9/i0$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    invoke-interface {v2, v1}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    iget-object v1, p0, Lq9/l;->b:[Lg9/e0;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public packetFinished()V
    .locals 11

    iget-boolean v0, p0, Lq9/l;->c:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lq9/l;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq9/l;->b:[Lg9/e0;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-wide v5, p0, Lq9/l;->f:J

    iget v8, p0, Lq9/l;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lg9/e0;->d(JIIILg9/e0$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lq9/l;->c:Z

    :cond_1
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq9/l;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lq9/l;->f:J

    return-void
.end method
