.class public abstract Lcom/tencent/tinker/android/dex/r;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Z)J
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    const-wide/16 v4, 0x1

    :goto_1
    add-long/2addr v1, v4

    goto :goto_2

    :cond_0
    const/16 v5, 0x7ff

    if-gt v4, v5, :cond_1

    const-wide/16 v4, 0x2

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x3

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_3

    const-wide/32 v4, 0xffff

    cmp-long v4, v1, v4

    if-gtz v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "String more than 65535 UTF bytes long"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-wide v1
.end method

.method public static b(Lgf/a;[C)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lgf/a;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_0
    aput-char v2, p1, v1

    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v4, v2, 0xe0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_3

    invoke-interface {p0}, Lgf/a;->readByte()B

    move-result v4

    and-int/lit16 v5, v4, 0xc0

    if-ne v5, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, p1, v1

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "bad second byte"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    and-int/lit16 v4, v2, 0xf0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_5

    invoke-interface {p0}, Lgf/a;->readByte()B

    move-result v4

    invoke-interface {p0}, Lgf/a;->readByte()B

    move-result v5

    and-int/lit16 v6, v4, 0xc0

    if-ne v6, v3, :cond_4

    and-int/lit16 v6, v5, 0xc0

    if-ne v6, v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    and-int/lit8 v4, v5, 0x3f

    or-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, p1, v1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "bad second or third byte"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "bad byte"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([BILjava/lang/String;)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v3

    goto :goto_1

    :cond_0
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 p1, p1, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 v4, p1, 0x2

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    add-int/lit8 p1, p1, 0x3

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p0, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/tinker/android/dex/r;->a(Ljava/lang/String;Z)J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    invoke-static {v1, v0, p0}, Lcom/tencent/tinker/android/dex/r;->c([BILjava/lang/String;)V

    return-object v1
.end method
