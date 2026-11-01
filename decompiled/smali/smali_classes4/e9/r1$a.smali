.class final Le9/r1$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le9/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Lcom/google/android/exoplayer2/source/o$b;

.field private e:Z

.field private f:Z

.field final synthetic g:Le9/r1;


# direct methods
.method public constructor <init>(Le9/r1;Ljava/lang/String;ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    iput-object p1, p0, Le9/r1$a;->g:Le9/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le9/r1$a;->a:Ljava/lang/String;

    iput p3, p0, Le9/r1$a;->b:I

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    iget-wide p1, p4, Lt9/j;->d:J

    :goto_0
    iput-wide p1, p0, Le9/r1$a;->c:J

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lt9/j;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p4, p0, Le9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    :cond_1
    return-void
.end method

.method static synthetic a(Le9/r1$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le9/r1$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Le9/r1$a;)J
    .locals 2

    iget-wide v0, p0, Le9/r1$a;->c:J

    return-wide v0
.end method

.method static synthetic c(Le9/r1$a;)I
    .locals 0

    iget p0, p0, Le9/r1$a;->b:I

    return p0
.end method

.method static synthetic d(Le9/r1$a;)Z
    .locals 0

    iget-boolean p0, p0, Le9/r1$a;->e:Z

    return p0
.end method

.method static synthetic e(Le9/r1$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Le9/r1$a;->e:Z

    return p1
.end method

.method static synthetic f(Le9/r1$a;)Z
    .locals 0

    iget-boolean p0, p0, Le9/r1$a;->f:Z

    return p0
.end method

.method static synthetic g(Le9/r1$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Le9/r1$a;->f:Z

    return p1
.end method

.method static synthetic h(Le9/r1$a;)Lcom/google/android/exoplayer2/source/o$b;
    .locals 0

    iget-object p0, p0, Le9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    return-object p0
.end method

.method private l(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;I)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v0

    const/4 v1, -0x1

    if-lt p3, v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result p1

    if-ge p3, p1, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    return p3

    :cond_1
    iget-object v0, p0, Le9/r1$a;->g:Le9/r1;

    invoke-static {v0}, Le9/r1;->i(Le9/r1;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    iget-object p3, p0, Le9/r1$a;->g:Le9/r1;

    invoke-static {p3}, Le9/r1;->i(Le9/r1;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object p3

    iget p3, p3, Lcom/google/android/exoplayer2/k3$d;->o:I

    :goto_1
    iget-object v0, p0, Le9/r1$a;->g:Le9/r1;

    invoke-static {v0}, Le9/r1;->i(Le9/r1;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/k3$d;->p:I

    if-gt p3, v0, :cond_3

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/k3;->q(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object p1, p0, Le9/r1$a;->g:Le9/r1;

    invoke-static {p1}, Le9/r1;->j(Le9/r1;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/exoplayer2/k3;->j(ILcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/k3$b;->c:I

    return p1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method


# virtual methods
.method public i(ILcom/google/android/exoplayer2/source/o$b;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Le9/r1$a;->b:I

    if-ne p1, p2, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Le9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lt9/j;->b()Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide p1, p2, Lt9/j;->d:J

    iget-wide v2, p0, Le9/r1$a;->c:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    iget-wide v2, p2, Lt9/j;->d:J

    iget-wide v4, p1, Lt9/j;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p2, Lt9/j;->b:I

    iget v3, p1, Lt9/j;->b:I

    if-ne v2, v3, :cond_4

    iget p2, p2, Lt9/j;->c:I

    iget p1, p1, Lt9/j;->c:I

    if-ne p2, p1, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public j(Le9/c$a;)Z
    .locals 9

    iget-wide v0, p0, Le9/r1$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget v0, p0, Le9/r1$a;->b:I

    iget p1, p1, Le9/c$a;->c:I

    if-eq v0, p1, :cond_1

    move v3, v4

    :cond_1
    return v3

    :cond_2
    iget-wide v5, v2, Lt9/j;->d:J

    cmp-long v0, v5, v0

    if-lez v0, :cond_3

    return v4

    :cond_3
    iget-object v0, p0, Le9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    if-nez v0, :cond_4

    return v3

    :cond_4
    iget-object v0, p1, Le9/c$a;->b:Lcom/google/android/exoplayer2/k3;

    iget-object v1, v2, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p1, Le9/c$a;->b:Lcom/google/android/exoplayer2/k3;

    iget-object v2, p0, Le9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v2, v2, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget-wide v5, v2, Lt9/j;->d:J

    iget-object v7, p0, Le9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget-wide v7, v7, Lt9/j;->d:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_b

    if-ge v0, v1, :cond_5

    goto :goto_0

    :cond_5
    if-le v0, v1, :cond_6

    return v4

    :cond_6
    invoke-virtual {v2}, Lt9/j;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget v0, p1, Lt9/j;->b:I

    iget p1, p1, Lt9/j;->c:I

    iget-object v1, p0, Le9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget v2, v1, Lt9/j;->b:I

    if-gt v0, v2, :cond_7

    if-ne v0, v2, :cond_8

    iget v0, v1, Lt9/j;->c:I

    if-le p1, v0, :cond_8

    :cond_7
    move v3, v4

    :cond_8
    return v3

    :cond_9
    iget-object p1, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget p1, p1, Lt9/j;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Le9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget v0, v0, Lt9/j;->b:I

    if-le p1, v0, :cond_b

    :cond_a
    move v3, v4

    :cond_b
    :goto_0
    return v3
.end method

.method public k(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 4

    iget-wide v0, p0, Le9/r1$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Le9/r1$a;->b:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-wide p1, p2, Lt9/j;->d:J

    iput-wide p1, p0, Le9/r1$a;->c:J

    :cond_0
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;)Z
    .locals 3

    iget v0, p0, Le9/r1$a;->b:I

    invoke-direct {p0, p1, p2, v0}, Le9/r1$a;->l(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;I)I

    move-result p1

    iput p1, p0, Le9/r1$a;->b:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Le9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    return v2

    :cond_1
    iget-object p1, p1, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method
