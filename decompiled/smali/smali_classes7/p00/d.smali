.class public abstract Lp00/d;
.super Ljava/lang/Object;


# static fields
.field static final a:Lorg/apache/commons/compress/archivers/zip/r;

.field static final b:Lorg/apache/commons/compress/archivers/zip/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/s;->a(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/r;

    move-result-object v0

    sput-object v0, Lp00/d;->a:Lorg/apache/commons/compress/archivers/zip/r;

    new-instance v0, Lp00/d$a;

    invoke-direct {v0}, Lp00/d$a;-><init>()V

    sput-object v0, Lp00/d;->b:Lorg/apache/commons/compress/archivers/zip/r;

    return-void
.end method

.method private static a([BIIIB)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    const-string p0, "\u0000"

    const-string v1, "{NUL}"

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid byte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " at offset "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p3, p1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' len="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b([BIIZ)J
    .locals 4

    add-int/lit8 v0, p2, -0x1

    new-array v1, v0, [B

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    if-eqz p3, :cond_0

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    if-eqz p3, :cond_1

    neg-long p0, p0

    :cond_1
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte binary number exceeds maximum signed long value"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c([BIIZ)J
    .locals 7

    const/16 v0, 0x9

    if-ge p2, v0, :cond_3

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_0

    const/16 v4, 0x8

    shl-long/2addr v1, v4

    add-int v4, p1, v3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-wide/16 p0, 0x1

    sub-long/2addr v1, p0

    sub-int/2addr p2, v0

    int-to-double v3, p2

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    sub-long/2addr v3, p0

    xor-long/2addr v1, v3

    :cond_1
    if-eqz p3, :cond_2

    neg-long v1, v1

    :cond_2
    return-wide v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte binary number exceeds maximum signed long value"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d([BI)Z
    .locals 0

    aget-byte p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static e([BII)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lp00/d;->a:Lorg/apache/commons/compress/archivers/zip/r;

    invoke-static {p0, p1, p2, v0}, Lp00/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :try_start_1
    sget-object v0, Lp00/d;->b:Lorg/apache/commons/compress/archivers/zip/r;

    invoke-static {p0, p1, p2, v0}, Lp00/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    move v2, p1

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-byte v3, p0, v2

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    new-array p2, v1, [B

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p3, p2}, Lorg/apache/commons/compress/archivers/zip/r;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static g([BII)J
    .locals 7

    add-int v0, p1, p2

    const/4 v1, 0x2

    if-lt p2, v1, :cond_6

    aget-byte v1, p0, p1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    move v1, p1

    :goto_0
    const/16 v4, 0x20

    if-ge v1, v0, :cond_1

    aget-byte v5, p0, v1

    if-ne v5, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    :goto_1
    if-ge v1, v0, :cond_3

    if-eqz v5, :cond_2

    if-ne v5, v4, :cond_3

    :cond_2
    add-int/lit8 v5, v0, -0x1

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p0, v0

    move v6, v5

    move v5, v0

    move v0, v6

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v1, v0, :cond_5

    aget-byte v4, p0, v1

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v5, 0x37

    if-gt v4, v5, :cond_4

    const/4 v5, 0x3

    shl-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v1, v4}, Lp00/d;->a([BIIIB)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-wide v2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " must be at least 2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h([BII)J
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    invoke-static {p0, p1, p2}, Lp00/d;->g([BII)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge p2, v1, :cond_2

    invoke-static {p0, p1, p2, v0}, Lp00/d;->c([BIIZ)J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-static {p0, p1, p2, v0}, Lp00/d;->b([BIIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static i([B)Z
    .locals 12

    const/16 v0, 0x8

    const/16 v1, 0x94

    invoke-static {p0, v1, v0}, Lp00/d;->g([BII)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    move v8, v0

    move-wide v6, v4

    :goto_0
    array-length v9, p0

    if-ge v8, v9, :cond_1

    aget-byte v9, p0, v8

    if-gt v1, v8, :cond_0

    const/16 v10, 0x9c

    if-ge v8, v10, :cond_0

    const/16 v9, 0x20

    :cond_0
    and-int/lit16 v10, v9, 0xff

    int-to-long v10, v10

    add-long/2addr v4, v10

    int-to-long v9, v9

    add-long/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    cmp-long p0, v2, v6

    if-nez p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method
