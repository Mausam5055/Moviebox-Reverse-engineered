.class final Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MinimalEncoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;,
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    }
.end annotation


# instance fields
.field private a:[[I

.field private b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/oned/Code128Writer$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;Ljava/lang/String;)[Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->e(Ljava/lang/String;)[Z

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/Collection;I[I[II)V
    .locals 1

    sget-object v0, Lcom/google/zxing/oned/a;->a:[[I

    aget-object v0, v0, p1

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    if-eqz p4, :cond_0

    aget p4, p3, p0

    add-int/lit8 p4, p4, 0x1

    aput p4, p3, p0

    :cond_0
    aget p4, p2, p0

    aget p3, p3, p0

    mul-int/2addr p1, p3

    add-int/2addr p4, p1

    aput p4, p2, p0

    return-void
.end method

.method private c(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z
    .locals 8

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/16 v1, 0xf4

    const/16 v2, 0xf3

    const/16 v3, 0xf2

    const/16 v4, 0xf1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p2, v6, :cond_6

    const/4 v7, 0x2

    if-eq p2, v7, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    return v5

    :cond_0
    if-eq v0, v4, :cond_1

    add-int/2addr p3, v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge p3, p2, :cond_2

    invoke-static {v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->f(C)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->f(C)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    return v5

    :cond_3
    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_4

    const-string p1, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u00ff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    return v5

    :cond_6
    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_7

    const-string p1, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00ff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_8

    :cond_7
    move v5, v6

    :cond_8
    return v5
.end method

.method private d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    aget v3, v3, p3

    if-lez v3, :cond_0

    return v3

    :cond_0
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    add-int/lit8 v4, p3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v4, v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    new-array v6, v0, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v7, v6, v1

    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    aput-object v7, v6, v2

    const v7, 0x7fffffff

    move v8, v7

    :goto_1
    if-gt v1, v2, :cond_7

    aget-object v9, v6, v1

    invoke-direct {p0, p1, v9, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->c(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    aget-object v10, v6, v1

    if-eq p2, v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move-result-object v9

    move v10, v0

    goto :goto_2

    :cond_2
    move v10, v2

    :goto_2
    if-nez v5, :cond_3

    aget-object v11, v6, v1

    invoke-direct {p0, p1, v11, v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v11

    add-int/2addr v10, v11

    :cond_3
    if-ge v10, v8, :cond_4

    move-object v3, v9

    move v8, v10

    :cond_4
    add-int/lit8 v9, v1, 0x1

    rem-int/2addr v9, v0

    aget-object v9, v6, v9

    if-ne p2, v9, :cond_6

    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-nez v5, :cond_5

    invoke-direct {p0, p1, p2, v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v10

    add-int/2addr v10, v0

    goto :goto_3

    :cond_5
    move v10, v0

    :goto_3
    if-ge v10, v8, :cond_6

    move-object v3, v9

    move v8, v10

    :cond_6
    add-int/2addr v1, v2

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {p0, p1, v1, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->c(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-eq p2, v1, :cond_8

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move v5, v0

    goto :goto_4

    :cond_8
    move v5, v2

    :goto_4
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v9, 0xf1

    if-ne v6, v9, :cond_9

    move v0, v2

    :cond_9
    add-int/2addr v0, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_a

    invoke-direct {p0, p1, v1, v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v0

    add-int/2addr v5, v0

    :cond_a
    if-ge v5, v8, :cond_b

    move-object v3, v4

    move v8, v5

    :cond_b
    if-eq v8, v7, :cond_c

    iget-object p1, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    aput v8, p1, p3

    iget-object p1, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    aput-object v3, p1, p3

    return v8

    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad character in input: ASCII value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private e(Ljava/lang/String;)[Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v2, 0x0

    const/4 v6, 0x4

    aput v6, v4, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v7, v3, [I

    aput v4, v7, v5

    aput v6, v7, v2

    const-class v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    iput-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v2}, [I

    move-result-object v8

    filled-new-array {v5}, [I

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    move v11, v2

    :goto_0
    if-ge v11, v10, :cond_10

    iget-object v12, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget-object v12, v12, v13

    aget-object v12, v12, v11

    sget-object v13, Lcom/google/zxing/oned/Code128Writer$a;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    const/16 v14, 0x65

    const/16 v15, 0x64

    if-eq v13, v5, :cond_5

    if-eq v13, v3, :cond_3

    const/4 v3, 0x3

    if-eq v13, v3, :cond_1

    if-eq v13, v6, :cond_0

    goto :goto_5

    :cond_0
    const/16 v3, 0x62

    invoke-static {v7, v3, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    goto :goto_5

    :cond_1
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_2

    const/16 v4, 0x69

    goto :goto_1

    :cond_2
    const/16 v4, 0x63

    :goto_1
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    :goto_2
    move-object v4, v3

    goto :goto_5

    :cond_3
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_4

    const/16 v4, 0x68

    goto :goto_3

    :cond_4
    move v4, v15

    :goto_3
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v11, :cond_6

    const/16 v4, 0x67

    goto :goto_4

    :cond_6
    move v4, v14

    :goto_4
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    goto :goto_2

    :goto_5
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    const/16 v13, 0x66

    if-ne v4, v3, :cond_8

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v12, 0xf1

    if-ne v3, v12, :cond_7

    invoke-static {v7, v13, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v11, 0x2

    invoke-virtual {v1, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v7, v3, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    add-int/lit8 v3, v11, 0x1

    if-ge v3, v10, :cond_f

    move v11, v3

    goto :goto_7

    :cond_8
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v14, v3, -0x20

    goto :goto_6

    :pswitch_0
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_9

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_b

    :cond_9
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_a

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_a

    goto :goto_6

    :cond_a
    move v14, v15

    goto :goto_6

    :pswitch_1
    const/16 v14, 0x60

    goto :goto_6

    :pswitch_2
    const/16 v14, 0x61

    goto :goto_6

    :pswitch_3
    move v14, v13

    :cond_b
    :goto_6
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_c

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_d

    :cond_c
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v4, v3, :cond_e

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v12, v3, :cond_e

    :cond_d
    if-gez v14, :cond_e

    add-int/lit8 v14, v14, 0x60

    :cond_e
    invoke-static {v7, v14, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    :cond_f
    :goto_7
    add-int/2addr v11, v5

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    iput-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    aget v1, v8, v2

    invoke-static {v7, v1}, Lcom/google/zxing/oned/Code128Writer;->m(Ljava/util/Collection;I)[Z

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static f(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
