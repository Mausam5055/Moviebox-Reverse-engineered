.class abstract Landroidx/datastore/preferences/protobuf/Utf8$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static j(Ljava/nio/ByteBuffer;II)I
    .locals 7

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->e(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gez v1, :cond_e

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_5

    if-lt v0, p2, :cond_2

    return v1

    :cond_2
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_4
    :goto_1
    return v3

    :cond_5
    const/16 v5, -0x10

    if-ge v1, v5, :cond_b

    add-int/lit8 v5, p2, -0x1

    if-lt v0, v5, :cond_6

    sub-int/2addr p2, v0

    invoke-static {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->f(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    :cond_6
    add-int/lit8 v5, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v4, :cond_a

    const/16 v6, -0x60

    if-ne v1, v2, :cond_7

    if-lt v0, v6, :cond_a

    :cond_7
    const/16 v2, -0x13

    if-ne v1, v2, :cond_8

    if-ge v0, v6, :cond_a

    :cond_8
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_a
    :goto_2
    return v3

    :cond_b
    add-int/lit8 v2, p2, -0x2

    if-lt v0, v2, :cond_c

    sub-int/2addr p2, v0

    invoke-static {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->f(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    :cond_c
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v4, :cond_d

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_d

    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gt v1, v4, :cond_d

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_0

    :cond_d
    return v3

    :cond_e
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3}, Landroidx/datastore/preferences/protobuf/Utf8$b;->b([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$b;->d(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$b;->c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method abstract b([BII)Ljava/lang/String;
.end method

.method final c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    or-int v4, p2, p3

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v5

    sub-int/2addr v5, p2

    sub-int/2addr v5, p3

    or-int/2addr v4, v5

    if-ltz v4, :cond_b

    add-int v4, p2, p3

    new-array p3, p3, [C

    move v5, v0

    :goto_0
    if-ge p2, v4, :cond_1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/Utf8$a;->b(B)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr p2, v3

    add-int/lit8 v7, v5, 0x1

    invoke-static {v6, p3, v5}, Landroidx/datastore/preferences/protobuf/Utf8$a;->c(B[CI)V

    move v5, v7

    goto :goto_0

    :cond_1
    :goto_1
    move v11, v5

    :goto_2
    if-ge p2, v4, :cond_a

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/Utf8$a;->b(B)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 p2, v11, 0x1

    invoke-static {v6, p3, v11}, Landroidx/datastore/preferences/protobuf/Utf8$a;->c(B[CI)V

    :goto_3
    if-ge v5, v4, :cond_3

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/Utf8$a;->b(B)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_4

    :cond_2
    add-int/2addr v5, v3

    add-int/lit8 v7, p2, 0x1

    invoke-static {v6, p3, p2}, Landroidx/datastore/preferences/protobuf/Utf8$a;->c(B[CI)V

    move p2, v7

    goto :goto_3

    :cond_3
    :goto_4
    move v11, p2

    move p2, v5

    goto :goto_2

    :cond_4
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/Utf8$a;->d(B)Z

    move-result v7

    if-eqz v7, :cond_6

    if-ge v5, v4, :cond_5

    add-int/2addr p2, v2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/lit8 v7, v11, 0x1

    invoke-static {v6, v5, p3, v11}, Landroidx/datastore/preferences/protobuf/Utf8$a;->e(BB[CI)V

    move v11, v7

    goto :goto_2

    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/Utf8$a;->f(B)Z

    move-result v7

    if-eqz v7, :cond_8

    add-int/lit8 v7, v4, -0x1

    if-ge v5, v7, :cond_7

    add-int/lit8 v7, p2, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/2addr p2, v1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v8, v11, 0x1

    invoke-static {v6, v5, v7, p3, v11}, Landroidx/datastore/preferences/protobuf/Utf8$a;->g(BBB[CI)V

    move v11, v8

    goto :goto_2

    :cond_7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    add-int/lit8 v7, v4, -0x2

    if-ge v5, v7, :cond_9

    add-int/lit8 v7, p2, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    add-int/lit8 v5, p2, 0x3

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    move v5, v6

    move v6, v8

    move v8, v9

    move-object v9, p3

    move v10, v11

    invoke-static/range {v5 .. v10}, Landroidx/datastore/preferences/protobuf/Utf8$a;->a(BBBB[CI)V

    add-int/2addr v11, v2

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v0, v11}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_b
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v3

    aput-object p3, v1, v2

    const-string p1, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method abstract d(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
.end method

.method abstract e(Ljava/lang/String;[BII)I
.end method

.method final f(Ljava/nio/ByteBuffer;II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$b;->h(ILjava/nio/ByteBuffer;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final g([BII)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$b;->i(I[BII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final h(ILjava/nio/ByteBuffer;II)I
    .locals 1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    add-int/2addr p3, v0

    add-int/2addr v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/datastore/preferences/protobuf/Utf8$b;->i(I[BII)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/Utf8$b;->l(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/Utf8$b;->k(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method abstract i(I[BII)I
.end method

.method final k(ILjava/nio/ByteBuffer;II)I
    .locals 6

    if-eqz p1, :cond_f

    if-lt p3, p4, :cond_0

    return p1

    :cond_0
    int-to-byte v0, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_3

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_2

    add-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1

    goto :goto_0

    :cond_1
    move p3, p1

    goto/16 :goto_2

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/16 v4, -0x10

    if-ge v0, v4, :cond_9

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-lt p1, p4, :cond_4

    invoke-static {v0, p3}, Landroidx/datastore/preferences/protobuf/Utf8;->a(II)I

    move-result p1

    return p1

    :cond_4
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_5
    if-gt p1, v3, :cond_8

    const/16 v4, -0x60

    if-ne v0, v1, :cond_6

    if-lt p1, v4, :cond_8

    :cond_6
    const/16 v1, -0x13

    if-ne v0, v1, :cond_7

    if-ge p1, v4, :cond_8

    :cond_7
    add-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1

    :cond_8
    return v2

    :cond_9
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    if-nez v1, :cond_b

    add-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-lt p1, p4, :cond_a

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8;->a(II)I

    move-result p1

    return p1

    :cond_a
    const/4 p3, 0x0

    goto :goto_1

    :cond_b
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v5, p3

    move p3, p1

    move p1, v5

    :goto_1
    if-nez p3, :cond_d

    add-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-lt p3, p4, :cond_c

    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/Utf8;->b(III)I

    move-result p1

    return p1

    :cond_c
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_d
    if-gt v1, v3, :cond_e

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_e

    if-gt p3, v3, :cond_e

    add-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_f

    :cond_e
    return v2

    :cond_f
    :goto_2
    invoke-static {p2, p3, p4}, Landroidx/datastore/preferences/protobuf/Utf8$b;->j(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method abstract l(ILjava/nio/ByteBuffer;II)I
.end method
