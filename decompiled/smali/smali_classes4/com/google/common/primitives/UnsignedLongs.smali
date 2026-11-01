.class public abstract Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;,
        Lcom/google/common/primitives/UnsignedLongs$a;
    }
.end annotation


# direct methods
.method public static a(JJ)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->c(J)J

    move-result-wide p0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->c(J)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Longs;->c(JJ)I

    move-result p0

    return p0
.end method

.method public static b(JJ)J
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result p0

    if-gez p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_1
    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    div-long/2addr p0, p2

    return-wide p0

    :cond_2
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    div-long/2addr v1, p2

    shl-long/2addr v1, v0

    mul-long v3, v1, p2

    sub-long/2addr p0, v3

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result p0

    if-ltz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    int-to-long p0, v0

    add-long/2addr v1, p0

    return-wide v1
.end method

.method private static c(J)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static d(Ljava/lang/String;I)J
    .locals 7

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    const/16 v0, 0x24

    if-gt p1, v0, :cond_4

    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$a;->c:[I

    aget v0, v0, p1

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    if-le v3, v0, :cond_1

    invoke-static {v1, v2, v4, p1}, Lcom/google/common/primitives/UnsignedLongs$a;->a(JII)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too large for unsigned long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    int-to-long v5, p1

    mul-long/2addr v1, v5

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-wide v1

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal radix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "empty string"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(JJ)J
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v0

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    sub-long/2addr p0, p2

    return-wide p0

    :cond_1
    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    rem-long/2addr p0, p2

    return-wide p0

    :cond_2
    const/4 v2, 0x1

    ushr-long v3, p0, v2

    div-long/2addr v3, p2

    shl-long v2, v3, v2

    mul-long/2addr v2, p2

    sub-long/2addr p0, v2

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    move-result v2

    if-ltz v2, :cond_3

    goto :goto_0

    :cond_3
    move-wide p2, v0

    :goto_0
    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static f(J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->g(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(JI)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x24

    if-gt p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    invoke-static {v0, v2, p2}, Lcom/google/common/base/m;->f(ZLjava/lang/String;I)V

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    const-string p0, "0"

    return-object p0

    :cond_1
    if-lez v0, :cond_2

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x40

    new-array v4, v0, [C

    add-int/lit8 v5, p2, -0x1

    and-int v6, p2, v5

    if-nez v6, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    :cond_3
    add-int/lit8 v0, v0, -0x1

    long-to-int v1, p0

    and-int/2addr v1, v5

    invoke-static {v1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, v4, v0

    ushr-long/2addr p0, v6

    cmp-long v1, p0, v2

    if-nez v1, :cond_3

    goto :goto_3

    :cond_4
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_5

    ushr-long v0, p0, v1

    ushr-int/lit8 v5, p2, 0x1

    int-to-long v5, v5

    div-long/2addr v0, v5

    goto :goto_1

    :cond_5
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->b(JJ)J

    move-result-wide v0

    :goto_1
    int-to-long v5, p2

    mul-long v7, v0, v5

    sub-long/2addr p0, v7

    long-to-int p0, p0

    invoke-static {p0, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    const/16 p1, 0x3f

    aput-char p0, v4, p1

    :goto_2
    cmp-long p0, v0, v2

    if-lez p0, :cond_6

    add-int/lit8 p1, p1, -0x1

    rem-long v7, v0, v5

    long-to-int p0, v7

    invoke-static {p0, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    aput-char p0, v4, p1

    div-long/2addr v0, v5

    goto :goto_2

    :cond_6
    move v0, p1

    :goto_3
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 p1, v0, 0x40

    invoke-direct {p0, v4, v0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method
