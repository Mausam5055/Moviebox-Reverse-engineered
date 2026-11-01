.class public Lh10/q;
.super Ljava/lang/Object;


# static fields
.field static final n:Lh10/q;


# instance fields
.field a:S

.field private b:S

.field private c:[I

.field d:I

.field private e:[I

.field f:S

.field g:S

.field h:S

.field i:S

.field j:Lh10/n;

.field k:Lh10/q;

.field l:Lh10/k;

.field m:Lh10/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh10/q;

    invoke-direct {v0}, Lh10/q;-><init>()V

    sput-object v0, Lh10/q;->n:Lh10/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(III)V
    .locals 6

    iget-object v0, p0, Lh10/q;->e:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lh10/q;->e:[I

    :cond_0
    iget-object v0, p0, Lh10/q;->e:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit8 v4, v3, 0x2

    array-length v5, v0

    if-lt v4, v5, :cond_1

    array-length v4, v0

    add-int/2addr v4, v1

    new-array v1, v4, [I

    array-length v4, v0

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lh10/q;->e:[I

    :cond_1
    iget-object v0, p0, Lh10/q;->e:[I

    add-int/lit8 v1, v3, 0x1

    aput p1, v0, v1

    add-int/lit8 v3, v3, 0x2

    or-int p1, p2, p3

    aput p1, v0, v3

    aput v3, v0, v2

    return-void
.end method

.method private g(Lh10/q;)Lh10/q;
    .locals 3

    iget-object v0, p0, Lh10/q;->l:Lh10/k;

    :goto_0
    if-eqz v0, :cond_2

    iget-short v1, p0, Lh10/q;->a:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh10/q;->l:Lh10/k;

    iget-object v1, v1, Lh10/k;->c:Lh10/k;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lh10/k;->b:Lh10/q;

    iget-object v2, v1, Lh10/q;->m:Lh10/q;

    if-nez v2, :cond_1

    iput-object p1, v1, Lh10/q;->m:Lh10/q;

    move-object p1, v1

    :cond_1
    :goto_1
    iget-object v0, v0, Lh10/k;->c:Lh10/k;

    goto :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method final a(Lh10/r;Z)V
    .locals 2

    invoke-virtual {p1, p0}, Lh10/r;->o(Lh10/q;)V

    if-eqz p2, :cond_0

    iget-short p2, p0, Lh10/q;->b:S

    if-eqz p2, :cond_0

    const v0, 0xffff

    and-int/2addr p2, v0

    invoke-virtual {p1, p2, p0}, Lh10/r;->q(ILh10/q;)V

    iget-object p2, p0, Lh10/q;->c:[I

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    :goto_0
    iget-object v0, p0, Lh10/q;->c:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-gt p2, v1, :cond_0

    aget v0, v0, p2

    invoke-virtual {p1, v0, p0}, Lh10/r;->q(ILh10/q;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final c(I)V
    .locals 5

    iget-short v0, p0, Lh10/q;->b:S

    if-nez v0, :cond_0

    int-to-short p1, p1

    iput-short p1, p0, Lh10/q;->b:S

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh10/q;->c:[I

    const/4 v1, 0x4

    if-nez v0, :cond_1

    new-array v0, v1, [I

    iput-object v0, p0, Lh10/q;->c:[I

    :cond_1
    iget-object v0, p0, Lh10/q;->c:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    array-length v4, v0

    if-lt v3, v4, :cond_2

    array-length v4, v0

    add-int/2addr v4, v1

    new-array v1, v4, [I

    array-length v4, v0

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lh10/q;->c:[I

    :cond_2
    iget-object v0, p0, Lh10/q;->c:[I

    aput p1, v0, v3

    :goto_0
    return-void
.end method

.method final d(Lh10/q;)V
    .locals 7

    sget-object v0, Lh10/q;->n:Lh10/q;

    iput-object v0, p0, Lh10/q;->m:Lh10/q;

    move-object v1, v0

    move-object v0, p0

    :goto_0
    sget-object v2, Lh10/q;->n:Lh10/q;

    if-eq v0, v2, :cond_1

    iget-object v2, v0, Lh10/q;->m:Lh10/q;

    iput-object v1, v0, Lh10/q;->m:Lh10/q;

    iget-short v1, v0, Lh10/q;->a:S

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    iget-short v1, v0, Lh10/q;->i:S

    iget-short v3, p1, Lh10/q;->i:S

    if-eq v1, v3, :cond_0

    new-instance v1, Lh10/k;

    iget-short v3, v0, Lh10/q;->g:S

    iget-object v4, p1, Lh10/q;->l:Lh10/k;

    iget-object v4, v4, Lh10/k;->b:Lh10/q;

    iget-object v5, v0, Lh10/q;->l:Lh10/k;

    invoke-direct {v1, v3, v4, v5}, Lh10/k;-><init>(ILh10/q;Lh10/k;)V

    iput-object v1, v0, Lh10/q;->l:Lh10/k;

    :cond_0
    invoke-direct {v0, v2}, Lh10/q;->g(Lh10/q;)Lh10/q;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p1, Lh10/q;->n:Lh10/q;

    if-eq v1, p1, :cond_2

    iget-object p1, v1, Lh10/q;->m:Lh10/q;

    const/4 v0, 0x0

    iput-object v0, v1, Lh10/q;->m:Lh10/q;

    move-object v1, p1

    goto :goto_1

    :cond_2
    return-void
.end method

.method final e()Lh10/q;
    .locals 1

    iget-object v0, p0, Lh10/q;->j:Lh10/n;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lh10/n;->a:Lh10/q;

    :goto_0
    return-object v0
.end method

.method final f(S)V
    .locals 3

    sget-object v0, Lh10/q;->n:Lh10/q;

    iput-object v0, p0, Lh10/q;->m:Lh10/q;

    move-object v0, p0

    :goto_0
    sget-object v1, Lh10/q;->n:Lh10/q;

    if-eq v0, v1, :cond_1

    iget-object v1, v0, Lh10/q;->m:Lh10/q;

    const/4 v2, 0x0

    iput-object v2, v0, Lh10/q;->m:Lh10/q;

    iget-short v2, v0, Lh10/q;->i:S

    if-nez v2, :cond_0

    iput-short p1, v0, Lh10/q;->i:S

    invoke-direct {v0, v1}, Lh10/q;->g(Lh10/q;)Lh10/q;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final h(Lh10/d;IZ)V
    .locals 2

    iget-short v0, p0, Lh10/q;->a:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    iget p3, p1, Lh10/d;->b:I

    const/high16 v1, 0x20000000

    invoke-direct {p0, p2, v1, p3}, Lh10/q;->b(III)V

    invoke-virtual {p1, v0}, Lh10/d;->i(I)Lh10/d;

    goto :goto_0

    :cond_0
    iget p3, p1, Lh10/d;->b:I

    const/high16 v1, 0x10000000

    invoke-direct {p0, p2, v1, p3}, Lh10/q;->b(III)V

    invoke-virtual {p1, v0}, Lh10/d;->k(I)Lh10/d;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget p3, p0, Lh10/q;->d:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lh10/d;->i(I)Lh10/d;

    goto :goto_0

    :cond_2
    iget p3, p0, Lh10/q;->d:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lh10/d;->k(I)Lh10/d;

    :goto_0
    return-void
.end method

.method final i([BI)Z
    .locals 7

    iget-short v0, p0, Lh10/q;->a:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lh10/q;->a:S

    iput p2, p0, Lh10/q;->d:I

    iget-object v0, p0, Lh10/q;->e:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget v0, v0, v1

    :goto_0
    if-lez v0, :cond_5

    iget-object v2, p0, Lh10/q;->e:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    aget v2, v2, v0

    sub-int v4, p2, v3

    const v5, 0xfffffff

    and-int/2addr v5, v2

    const/high16 v6, -0x10000000

    and-int/2addr v2, v6

    const/high16 v6, 0x10000000

    if-ne v2, v6, :cond_4

    const/16 v2, -0x8000

    if-lt v4, v2, :cond_1

    const/16 v2, 0x7fff

    if-le v4, v2, :cond_3

    :cond_1
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc6

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x31

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x14

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    :goto_1
    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v5

    int-to-byte v3, v4

    aput-byte v3, p1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v3, v4, 0x18

    int-to-byte v3, v3

    aput-byte v3, p1, v5

    add-int/lit8 v3, v5, 0x2

    ushr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    add-int/lit8 v5, v5, 0x3

    ushr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    int-to-byte v2, v4

    aput-byte v2, p1, v5

    :goto_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
