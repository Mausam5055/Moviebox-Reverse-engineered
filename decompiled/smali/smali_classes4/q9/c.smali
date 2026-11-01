.class public final Lq9/c;
.super Ljava/lang/Object;

# interfaces
.implements Lq9/m;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/c0;

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lg9/e0;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/exoplayer2/o1;

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq9/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    iput-object v0, p0, Lq9/c;->a:Lcom/google/android/exoplayer2/util/c0;

    new-instance v1, Lcom/google/android/exoplayer2/util/d0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/c0;->a:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    iput-object v1, p0, Lq9/c;->b:Lcom/google/android/exoplayer2/util/d0;

    const/4 v0, 0x0

    iput v0, p0, Lq9/c;->f:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lq9/c;->l:J

    iput-object p1, p0, Lq9/c;->c:Ljava/lang/String;

    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/util/d0;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    iget v1, p0, Lq9/c;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lq9/c;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    iget p1, p0, Lq9/c;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lq9/c;->g:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lq9/c;->a:Lcom/google/android/exoplayer2/util/c0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->p(I)V

    iget-object v0, p0, Lq9/c;->a:Lcom/google/android/exoplayer2/util/c0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b;->e(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/audio/b$b;

    move-result-object v0

    iget-object v1, p0, Lq9/c;->j:Lcom/google/android/exoplayer2/o1;

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->d:I

    iget v3, v1, Lcom/google/android/exoplayer2/o1;->y:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->c:I

    iget v3, v1, Lcom/google/android/exoplayer2/o1;->z:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    iget-object v2, p0, Lq9/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->d:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->H(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->c:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->f0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    iget-object v2, p0, Lq9/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    iput-object v1, p0, Lq9/c;->j:Lcom/google/android/exoplayer2/o1;

    iget-object v2, p0, Lq9/c;->e:Lg9/e0;

    invoke-interface {v2, v1}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/audio/b$b;->e:I

    iput v1, p0, Lq9/c;->k:I

    iget v0, v0, Lcom/google/android/exoplayer2/audio/b$b;->f:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lq9/c;->j:Lcom/google/android/exoplayer2/o1;

    iget v2, v2, Lcom/google/android/exoplayer2/o1;->z:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lq9/c;->i:J

    return-void
.end method

.method private f(Lcom/google/android/exoplayer2/util/d0;)Z
    .locals 5

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lq9/c;->h:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lq9/c;->h:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    iput-boolean v1, p0, Lq9/c;->h:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lq9/c;->h:Z

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 10

    iget-object v0, p0, Lq9/c;->e:Lg9/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lq9/c;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    iget v2, p0, Lq9/c;->k:I

    iget v3, p0, Lq9/c;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lq9/c;->e:Lg9/e0;

    invoke-interface {v2, p1, v0}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iget v2, p0, Lq9/c;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lq9/c;->g:I

    iget v7, p0, Lq9/c;->k:I

    if-ne v2, v7, :cond_0

    iget-wide v4, p0, Lq9/c;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lq9/c;->e:Lg9/e0;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lg9/e0;->d(JIIILg9/e0$a;)V

    iget-wide v2, p0, Lq9/c;->l:J

    iget-wide v4, p0, Lq9/c;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lq9/c;->l:J

    :cond_2
    iput v1, p0, Lq9/c;->f:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lq9/c;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Lq9/c;->d(Lcom/google/android/exoplayer2/util/d0;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lq9/c;->e()V

    iget-object v0, p0, Lq9/c;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    iget-object v0, p0, Lq9/c;->e:Lg9/e0;

    iget-object v1, p0, Lq9/c;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-interface {v0, v1, v3}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    iput v2, p0, Lq9/c;->f:I

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lq9/c;->f(Lcom/google/android/exoplayer2/util/d0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lq9/c;->f:I

    iget-object v0, p0, Lq9/c;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    iget-object v0, p0, Lq9/c;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    iput v2, p0, Lq9/c;->g:I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public b(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lq9/c;->l:J

    :cond_0
    return-void
.end method

.method public c(Lg9/n;Lq9/i0$d;)V
    .locals 1

    invoke-virtual {p2}, Lq9/i0$d;->a()V

    invoke-virtual {p2}, Lq9/i0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq9/c;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lq9/i0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lg9/n;->track(II)Lg9/e0;

    move-result-object p1

    iput-object p1, p0, Lq9/c;->e:Lg9/e0;

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lq9/c;->f:I

    iput v0, p0, Lq9/c;->g:I

    iput-boolean v0, p0, Lq9/c;->h:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lq9/c;->l:J

    return-void
.end method
