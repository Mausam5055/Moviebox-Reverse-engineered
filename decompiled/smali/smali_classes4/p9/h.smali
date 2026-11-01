.class final Lp9/h;
.super Lp9/i;


# static fields
.field private static final o:[B

.field private static final p:[B


# instance fields
.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lp9/h;->o:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lp9/h;->p:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp9/i;-><init>()V

    return-void
.end method

.method private n([B)J
    .locals 6

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_1

    aget-byte p1, p1, v3

    and-int/lit8 v4, p1, 0x3f

    goto :goto_0

    :cond_0
    move v4, v3

    :cond_1
    :goto_0
    shr-int/lit8 p1, v1, 0x3

    and-int/lit8 v0, p1, 0x3

    const/16 v1, 0x10

    if-lt p1, v1, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xc

    const/16 v5, 0x2710

    if-lt p1, v1, :cond_3

    and-int/2addr p1, v3

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v0

    :goto_1
    int-to-long v0, v4

    int-to-long v2, p1

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static o(Lcom/google/android/exoplayer2/util/d0;[B)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    array-length v1, p1

    new-array v1, v1, [B

    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static p(Lcom/google/android/exoplayer2/util/d0;)Z
    .locals 1

    sget-object v0, Lp9/h;->o:[B

    invoke-static {p0, v0}, Lp9/h;->o(Lcom/google/android/exoplayer2/util/d0;[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected f(Lcom/google/android/exoplayer2/util/d0;)J
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lp9/h;->n([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lp9/i;->c(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected h(Lcom/google/android/exoplayer2/util/d0;JLp9/i$b;)Z
    .locals 2

    sget-object p2, Lp9/h;->o:[B

    invoke-static {p1, p2}, Lp9/h;->o(Lcom/google/android/exoplayer2/util/d0;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->c([B)I

    move-result p2

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->a([B)Ljava/util/List;

    move-result-object p1

    iget-object v0, p4, Lp9/i$b;->a:Lcom/google/android/exoplayer2/o1;

    if-eqz v0, :cond_0

    return p3

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    const-string v1, "audio/opus"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/o1$b;->H(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p2

    const v0, 0xbb80

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/o1$b;->f0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    iput-object p1, p4, Lp9/i$b;->a:Lcom/google/android/exoplayer2/o1;

    return p3

    :cond_1
    sget-object p2, Lp9/h;->p:[B

    invoke-static {p1, p2}, Lp9/h;->o(Lcom/google/android/exoplayer2/util/d0;[B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p4, Lp9/i$b;->a:Lcom/google/android/exoplayer2/o1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lp9/h;->n:Z

    if-eqz v0, :cond_2

    return p3

    :cond_2
    iput-boolean p3, p0, Lp9/h;->n:Z

    array-length p2, p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-static {p1, v1, v1}, Lg9/h0;->j(Lcom/google/android/exoplayer2/util/d0;ZZ)Lg9/h0$b;

    move-result-object p1

    iget-object p1, p1, Lg9/h0$b;->b:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lg9/h0;->c(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    if-nez p1, :cond_3

    return p3

    :cond_3
    iget-object p2, p4, Lp9/i$b;->a:Lcom/google/android/exoplayer2/o1;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object p2

    iget-object v0, p4, Lp9/i$b;->a:Lcom/google/android/exoplayer2/o1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/o1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    iput-object p1, p4, Lp9/i$b;->a:Lcom/google/android/exoplayer2/o1;

    return p3

    :cond_4
    iget-object p1, p4, Lp9/i$b;->a:Lcom/google/android/exoplayer2/o1;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method protected l(Z)V
    .locals 0

    invoke-super {p0, p1}, Lp9/i;->l(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lp9/h;->n:Z

    :cond_0
    return-void
.end method
