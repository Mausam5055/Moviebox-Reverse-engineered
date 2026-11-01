.class public final Lpd/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkd/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkd/c;

    sget-object v1, Lkd/a;->o:Lkd/a;

    invoke-direct {v0, v1}, Lkd/c;-><init>(Lkd/a;)V

    iput-object v0, p0, Lpd/c;->a:Lkd/c;

    return-void
.end method

.method private a([BIIII)I
    .locals 7

    add-int v0, p3, p4

    if-nez p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    div-int v2, v0, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_3

    if-eqz p5, :cond_1

    rem-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, p5, -0x1

    if-ne v5, v6, :cond_2

    :cond_1
    div-int v5, v4, v1

    add-int v6, v4, p2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v0, p0, Lpd/c;->a:Lkd/c;

    div-int/2addr p4, v1

    invoke-virtual {v0, v2, p4}, Lkd/c;->a([II)I

    move-result p4
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-ge v3, p3, :cond_6

    if-eqz p5, :cond_4

    rem-int/lit8 v0, v3, 0x2

    add-int/lit8 v4, p5, -0x1

    if-ne v0, v4, :cond_5

    :cond_4
    add-int v0, v3, p2

    div-int v4, v3, v1

    aget v4, v2, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return p4

    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public b(Lid/b;Ljava/util/Map;)Lid/d;
    .locals 8

    new-instance p2, Lpd/a;

    invoke-direct {p2, p1}, Lpd/a;-><init>(Lid/b;)V

    invoke-virtual {p2}, Lpd/a;->a()[B

    move-result-object p1

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lpd/c;->a([BIIII)I

    move-result p2

    const/4 v6, 0x0

    aget-byte v0, p1, v6

    and-int/lit8 v7, v0, 0xf

    const/4 v0, 0x2

    if-eq v7, v0, :cond_1

    const/4 v0, 0x3

    if-eq v7, v0, :cond_1

    const/4 v0, 0x4

    if-eq v7, v0, :cond_1

    const/4 v0, 0x5

    if-ne v7, v0, :cond_0

    const/16 v4, 0x38

    const/4 v5, 0x1

    const/16 v2, 0x14

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lpd/c;->a([BIIII)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lpd/c;->a([BIIII)I

    move-result v0

    add-int/2addr p2, v0

    const/16 v0, 0x4e

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    :cond_1
    const/16 v4, 0x28

    const/4 v5, 0x1

    const/16 v2, 0x14

    const/16 v3, 0x54

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lpd/c;->a([BIIII)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lpd/c;->a([BIIII)I

    move-result v0

    add-int/2addr p2, v0

    const/16 v0, 0x5e

    new-array v0, v0, [B

    :goto_0
    const/16 v1, 0xa

    invoke-static {p1, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    sub-int/2addr v2, v1

    const/16 v3, 0x14

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v7}, Lpd/b;->a([BI)Lid/d;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lid/d;->n(Ljava/lang/Integer;)V

    return-object p1
.end method
