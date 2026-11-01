.class abstract Lcom/warkiz/widget/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "0."

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "0.0"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "0.00"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "0.000"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "0.0000"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-string v5, "0.00000"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const-string v6, "0.000000"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const-string v7, "0.0000000"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const-string v8, "0.00000000"

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const-string v9, "0.000000000"

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const-string v10, "0.0000000000"

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    const-string v11, "0.00000000000"

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    const-string v12, "0.000000000000"

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    const-string v13, "0.0000000000000"

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    const-string v14, "0.00000000000000"

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    const-string v15, "0.000000000000000"

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    move-object/from16 v16, v15

    const/16 v15, 0x10

    new-array v15, v15, [[C

    const/16 v17, 0x0

    aput-object v0, v15, v17

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    aput-object v2, v15, v0

    const/4 v0, 0x3

    aput-object v3, v15, v0

    const/4 v0, 0x4

    aput-object v4, v15, v0

    const/4 v0, 0x5

    aput-object v5, v15, v0

    const/4 v0, 0x6

    aput-object v6, v15, v0

    const/4 v0, 0x7

    aput-object v7, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v9, v15, v0

    const/16 v0, 0xa

    aput-object v10, v15, v0

    const/16 v0, 0xb

    aput-object v11, v15, v0

    const/16 v0, 0xc

    aput-object v12, v15, v0

    const/16 v0, 0xd

    aput-object v13, v15, v0

    const/16 v0, 0xe

    aput-object v14, v15, v0

    const/16 v0, 0xf

    aput-object v16, v15, v0

    sput-object v15, Lcom/warkiz/widget/c;->a:[[C

    return-void
.end method

.method private static a(DI)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x30

    if-ne p2, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method static b(DI)Ljava/lang/String;
    .locals 6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide v2, 0x430c6bf52633fff8L    # 9.99999999999999E14

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_7

    const/16 v2, 0x10

    if-le p2, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-string p0, "0"

    return-object p0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x30

    const/4 v3, 0x0

    if-le v1, p2, :cond_4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    array-length v4, v0

    sub-int/2addr v4, p2

    :goto_0
    if-lt v1, v4, :cond_2

    aget-char p2, v0, v1

    if-ne p2, v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-lt v1, v4, :cond_3

    add-int/lit8 p2, v1, 0x2

    new-array p2, p2, [C

    invoke-static {v0, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x2e

    aput-char v2, p2, v4

    add-int/lit8 v2, v4, 0x1

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v4, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    new-array p2, v4, [C

    invoke-static {v0, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    aget-char v4, v0, v1

    if-ne v4, v2, :cond_5

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/warkiz/widget/c;->a:[[C

    array-length v4, v0

    sub-int/2addr p2, v4

    aget-object p2, v2, p2

    array-length v2, p2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v2

    array-length p2, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v3, v2, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v2

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_6

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_7
    :goto_4
    invoke-static {p0, p1, p2}, Lcom/warkiz/widget/c;->a(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
