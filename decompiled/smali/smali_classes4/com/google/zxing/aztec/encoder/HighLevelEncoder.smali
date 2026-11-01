.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;


# static fields
.field static final c:[Ljava/lang/String;

.field static final d:[[I

.field private static final e:[[I

.field static final f:[[I


# instance fields
.field private final a:[B

.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v1, 0xc

    const/16 v2, 0x2c

    const/16 v5, 0xd

    const/16 v6, 0x2e

    const-string v7, "MIXED"

    const-string v8, "PUNCT"

    const-string v9, "UPPER"

    const-string v10, "LOWER"

    const-string v11, "DIGIT"

    filled-new-array {v9, v10, v11, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->c:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x5

    new-array v9, v8, [[I

    const v10, 0x5001c

    const v11, 0x5001e

    const v12, 0x5001d

    const v13, 0xa03be

    filled-new-array {v7, v10, v11, v12, v13}, [I

    move-result-object v14

    aput-object v14, v9, v7

    const v14, 0x901ee

    filled-new-array {v14, v7, v11, v12, v13}, [I

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v9, v15

    const v14, 0x4000e

    const v0, 0x901dc

    const v3, 0x901dd

    const v4, 0xe3bbe

    filled-new-array {v14, v0, v7, v3, v4}, [I

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v9, v3

    filled-new-array {v12, v10, v13, v7, v11}, [I

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v9, v4

    const v0, 0x5001f

    const v10, 0xa03fc

    const v11, 0xa03fe

    const v12, 0xa03fd

    filled-new-array {v0, v10, v11, v12, v7}, [I

    move-result-object v0

    const/4 v10, 0x4

    aput-object v0, v9, v10

    sput-object v9, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    new-array v0, v3, [I

    const/16 v9, 0x100

    aput v9, v0, v15

    aput v8, v0, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    aget-object v0, v0, v7

    const/16 v8, 0x20

    aput v15, v0, v8

    const/16 v0, 0x41

    :goto_0
    const/16 v9, 0x5a

    if-gt v0, v9, :cond_0

    sget-object v9, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    aget-object v9, v9, v7

    add-int/lit8 v11, v0, -0x3f

    aput v11, v9, v0

    add-int/2addr v0, v15

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    aget-object v0, v0, v15

    aput v15, v0, v8

    const/16 v0, 0x61

    :goto_1
    const/16 v9, 0x7a

    if-gt v0, v9, :cond_1

    sget-object v9, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    aget-object v9, v9, v15

    add-int/lit8 v11, v0, -0x5f

    aput v11, v9, v0

    add-int/2addr v0, v15

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    aget-object v0, v0, v3

    aput v15, v0, v8

    const/16 v0, 0x30

    :goto_2
    const/16 v8, 0x39

    if-gt v0, v8, :cond_2

    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    aget-object v8, v8, v3

    add-int/lit8 v9, v0, -0x2e

    aput v9, v8, v0

    add-int/2addr v0, v15

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    aget-object v0, v0, v3

    aput v1, v0, v2

    aput v5, v0, v6

    const/16 v0, 0x1c

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    move v2, v7

    :goto_3
    if-ge v2, v0, :cond_3

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    aget-object v0, v0, v4

    aget v5, v1, v2

    aput v2, v0, v5

    add-int/2addr v2, v15

    const/16 v0, 0x1c

    goto :goto_3

    :cond_3
    const/16 v0, 0x1f

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    move v2, v7

    :goto_4
    if-ge v2, v0, :cond_5

    aget v5, v1, v2

    if-lez v5, :cond_4

    sget-object v6, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    aget-object v6, v6, v10

    aput v2, v6, v5

    :cond_4
    add-int/2addr v2, v15

    goto :goto_4

    :cond_5
    new-array v0, v3, [I

    const/4 v1, 0x6

    aput v1, v0, v15

    aput v1, v0, v7

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->f:[[I

    array-length v1, v0

    move v2, v7

    :goto_5
    if-ge v2, v1, :cond_6

    aget-object v5, v0, v2

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    add-int/2addr v2, v15

    goto :goto_5

    :cond_6
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->f:[[I

    aget-object v1, v0, v7

    aput v7, v1, v10

    aget-object v1, v0, v15

    aput v7, v1, v10

    const/16 v2, 0x1c

    aput v2, v1, v7

    aget-object v1, v0, v4

    aput v7, v1, v10

    aget-object v0, v0, v3

    aput v7, v0, v10

    const/16 v1, 0xf

    aput v1, v0, v7

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->a:[B

    iput-object p2, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method private static b(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/e;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/e;

    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/encoder/e;->h(Lcom/google/zxing/aztec/encoder/e;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lcom/google/zxing/aztec/encoder/e;->h(Lcom/google/zxing/aztec/encoder/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private c(Lcom/google/zxing/aztec/encoder/e;ILjava/util/Collection;)V
    .locals 7

    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->a:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/e;->g()I

    move-result v2

    aget-object v1, v1, v2

    aget v1, v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x4

    if-gt v2, v4, :cond_5

    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    aget-object v4, v4, v2

    aget v4, v4, v0

    if-lez v4, :cond_4

    if-nez v3, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/e;->d(I)Lcom/google/zxing/aztec/encoder/e;

    move-result-object v3

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/e;->g()I

    move-result v5

    if-eq v2, v5, :cond_2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    :cond_2
    invoke-virtual {v3, v2, v4}, Lcom/google/zxing/aztec/encoder/e;->i(II)Lcom/google/zxing/aztec/encoder/e;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v1, :cond_4

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->f:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/e;->g()I

    move-result v6

    aget-object v5, v5, v6

    aget v5, v5, v2

    if-ltz v5, :cond_4

    invoke-virtual {v3, v2, v4}, Lcom/google/zxing/aztec/encoder/e;->j(II)Lcom/google/zxing/aztec/encoder/e;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/e;->e()I

    move-result v1

    if-gtz v1, :cond_6

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/e;->g()I

    move-result v2

    aget-object v1, v1, v2

    aget v0, v1, v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/e;->a(I)Lcom/google/zxing/aztec/encoder/e;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private static d(Lcom/google/zxing/aztec/encoder/e;IILjava/util/Collection;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/e;->d(I)Lcom/google/zxing/aztec/encoder/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/e;->i(II)Lcom/google/zxing/aztec/encoder/e;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/e;->g()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/e;->j(II)Lcom/google/zxing/aztec/encoder/e;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_2

    :cond_1
    rsub-int/lit8 p2, p2, 0x10

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/e;->i(II)Lcom/google/zxing/aztec/encoder/e;

    move-result-object p2

    invoke-virtual {p2, v1, v3}, Lcom/google/zxing/aztec/encoder/e;->i(II)Lcom/google/zxing/aztec/encoder/e;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/e;->e()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/e;->a(I)Lcom/google/zxing/aztec/encoder/e;

    move-result-object p0

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/e;->a(I)Lcom/google/zxing/aztec/encoder/e;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private e(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/e;

    invoke-direct {p0, v1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->c(Lcom/google/zxing/aztec/encoder/e;ILjava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->b(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method private static f(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/e;

    invoke-static {v1, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d(Lcom/google/zxing/aztec/encoder/e;IILjava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->b(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lid/a;
    .locals 8

    sget-object v0, Lcom/google/zxing/aztec/encoder/e;->f:Lcom/google/zxing/aztec/encoder/e;

    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->b:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/aztec/encoder/e;->b(I)Lcom/google/zxing/aztec/encoder/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ECI code for character set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->a:[B

    array-length v4, v3

    if-ge v2, v4, :cond_9

    add-int/lit8 v4, v2, 0x1

    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-byte v5, v3, v4

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    aget-byte v3, v3, v2

    const/16 v6, 0xd

    if-eq v3, v6, :cond_7

    const/16 v6, 0x2c

    const/16 v7, 0x20

    if-eq v3, v6, :cond_6

    const/16 v6, 0x2e

    if-eq v3, v6, :cond_5

    const/16 v6, 0x3a

    if-eq v3, v6, :cond_4

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    if-ne v5, v7, :cond_3

    const/4 v3, 0x5

    goto :goto_3

    :cond_5
    if-ne v5, v7, :cond_3

    const/4 v3, 0x3

    goto :goto_3

    :cond_6
    if-ne v5, v7, :cond_3

    const/4 v3, 0x4

    goto :goto_3

    :cond_7
    const/16 v3, 0xa

    if-ne v5, v3, :cond_3

    const/4 v3, 0x2

    :goto_3
    if-lez v3, :cond_8

    invoke-static {v0, v2, v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->f(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v0

    move v2, v4

    goto :goto_4

    :cond_8
    invoke-direct {p0, v0, v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->e(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    new-instance v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v1, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/aztec/encoder/e;

    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->a:[B

    invoke-virtual {v0, v1}, Lcom/google/zxing/aztec/encoder/e;->k([B)Lid/a;

    move-result-object v0

    return-object v0
.end method
