.class abstract Landroidx/datastore/preferences/protobuf/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/e$a;
    }
.end annotation


# static fields
.field private static volatile a:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static A(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    check-cast p4, Landroidx/datastore/preferences/protobuf/v;

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/i;->c(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/i;->c(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static B(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    check-cast p4, Landroidx/datastore/preferences/protobuf/f0;

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget-wide v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/i;->d(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget-wide v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/i;->d(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static C([BILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 3

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget v0, p2, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Landroidx/datastore/preferences/protobuf/w;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static D(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 4

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ltz v0, :cond_5

    const-string v1, ""

    if-nez v0, :cond_0

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroidx/datastore/preferences/protobuf/w;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_4

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v2, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ltz v0, :cond_3

    if-nez v0, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroidx/datastore/preferences/protobuf/w;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_2
    return p2

    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static E(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 5

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ltz v0, :cond_7

    const-string v1, ""

    if-nez v0, :cond_0

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Landroidx/datastore/preferences/protobuf/Utf8;->s([BII)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroidx/datastore/preferences/protobuf/w;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move p2, v2

    :goto_1
    if-ge p2, p3, :cond_5

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v2, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ltz v0, :cond_4

    if-nez v0, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Landroidx/datastore/preferences/protobuf/Utf8;->s([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroidx/datastore/preferences/protobuf/w;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return p2

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static F([BILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 1

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget v0, p2, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Utf8;->h([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static G(I[BIILandroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 10

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/e;->h([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->k()Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v0

    and-int/lit8 v2, p0, -0x8

    or-int/lit8 v8, v2, 0x4

    iget v2, p5, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    add-int/2addr v2, v1

    iput v2, p5, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/e;->a(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v4

    iget p2, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ne p2, v8, :cond_2

    move v2, p2

    move p2, v4

    goto :goto_1

    :cond_2
    move v2, p2

    move-object v3, p1

    move v5, p3

    move-object v6, v0

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/e;->G(I[BIILandroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/e$a;)I

    move-result v2

    move v9, v2

    move v2, p2

    move p2, v9

    goto :goto_0

    :cond_3
    :goto_1
    iget p1, p5, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    sub-int/2addr p1, v1

    iput p1, p5, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    if-gt p2, p3, :cond_4

    if-ne v2, v8, :cond_4

    invoke-virtual {p4, p0, v0}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    return p2

    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget p3, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ltz p3, :cond_8

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    sget-object p1, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p4, p0, p1}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr p2, p3

    return p2

    :cond_7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/e;->j([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_a
    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget-wide p2, p5, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Landroidx/datastore/preferences/protobuf/i1;->n(ILjava/lang/Object;)V

    return p1

    :cond_b
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static H(I[BILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    if-ltz v1, :cond_0

    shl-int/lit8 p1, v1, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    return v0

    :cond_0
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    return v1

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v1

    if-ltz v1, :cond_2

    shl-int/lit8 p1, v1, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    return v0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr p0, v1

    add-int/lit8 p2, p2, 0x4

    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    iput p0, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    return v0
.end method

.method static I([BILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Landroidx/datastore/preferences/protobuf/e;->H(I[BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p0

    return p0
.end method

.method static J(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    check-cast p4, Landroidx/datastore/preferences/protobuf/v;

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    invoke-virtual {p4, v0}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    invoke-virtual {p4, v0}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static K(J[BILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 7

    const-wide/16 v0, 0x7f

    and-long/2addr p0, v0

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    and-int/lit8 v1, p3, 0x7f

    int-to-long v1, v1

    const/4 v3, 0x7

    shl-long/2addr v1, v3

    or-long/2addr p0, v1

    move v1, v3

    :goto_0
    if-gez p3, :cond_0

    add-int/lit8 p3, v0, 0x1

    aget-byte v0, p2, v0

    add-int/2addr v1, v3

    and-int/lit8 v2, v0, 0x7f

    int-to-long v4, v2

    shl-long/2addr v4, v1

    or-long/2addr p0, v4

    move v6, v0

    move v0, p3

    move p3, v6

    goto :goto_0

    :cond_0
    iput-wide p0, p4, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    return v0
.end method

.method static L([BILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 5

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    iput-wide v1, p2, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    return v0

    :cond_0
    invoke-static {v1, v2, p0, v0, p2}, Landroidx/datastore/preferences/protobuf/e;->K(J[BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p0

    return p0
.end method

.method static M(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    check-cast p4, Landroidx/datastore/preferences/protobuf/f0;

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget-wide v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    invoke-virtual {p4, v0, v1}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget-wide v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    invoke-virtual {p4, v0, v1}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static N(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;[BIIILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 7

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/q0;

    iget p1, p6, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p6, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/e;->a(I)V

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/q0;->X(Ljava/lang/Object;[BIIILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget p2, p6, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p6, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    iput-object p0, p6, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    return p1
.end method

.method static O(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;[BIILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 6

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_0

    invoke-static {p3, p2, v0, p5}, Landroidx/datastore/preferences/protobuf/e;->H(I[BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget p3, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    :cond_0
    move v3, v0

    if-ltz p3, :cond_1

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_1

    iget p4, p5, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p5, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    invoke-static {p4}, Landroidx/datastore/preferences/protobuf/e;->a(I)V

    add-int/2addr p3, v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/b1;->c(Ljava/lang/Object;[BIILandroidx/datastore/preferences/protobuf/e$a;)V

    iget p1, p5, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p5, Landroidx/datastore/preferences/protobuf/e$a;->e:I

    iput-object p0, p5, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    return p3

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static P(I[BIILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p4}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p4, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/e;->P(I[BIILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v0, p0, :cond_4

    return p2

    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p4}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p0

    iget p1, p4, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_6
    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_7
    invoke-static {p1, p2, p4}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p0

    return p0

    :cond_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method private static a(I)V
    .locals 1

    sget v0, Landroidx/datastore/preferences/protobuf/e;->a:I

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static b(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 7

    check-cast p4, Landroidx/datastore/preferences/protobuf/f;

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget-wide v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p4, v0}, Landroidx/datastore/preferences/protobuf/f;->addBoolean(Z)V

    :goto_1
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v5, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p1, v0, p5}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget-wide v5, p5, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p4, v0}, Landroidx/datastore/preferences/protobuf/f;->addBoolean(Z)V

    goto :goto_1

    :cond_3
    :goto_3
    return p2
.end method

.method static c([BILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget v0, p2, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    iput-object p0, p2, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p0

    iput-object p0, p2, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static d(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ltz v0, :cond_7

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_6

    if-nez v0, :cond_0

    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_5

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p2

    iget v0, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-ltz v0, :cond_4

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_3

    if-nez v0, :cond_2

    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return p2

    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static e([BI)D
    .locals 0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/e;->j([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static f(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 3

    check-cast p4, Landroidx/datastore/preferences/protobuf/l;

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/e;->e([BI)D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroidx/datastore/preferences/protobuf/l;->addDouble(D)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/e;->e([BI)D

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Landroidx/datastore/preferences/protobuf/l;->addDouble(D)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static g(I[BIILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n0;Landroidx/datastore/preferences/protobuf/h1;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 7

    ushr-int/lit8 p6, p0, 0x3

    iget-object v0, p7, Landroidx/datastore/preferences/protobuf/e$a;->d:Landroidx/datastore/preferences/protobuf/o;

    invoke-virtual {v0, p5, p6}, Landroidx/datastore/preferences/protobuf/o;->a(Landroidx/datastore/preferences/protobuf/n0;I)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$d;

    invoke-static {p4}, Landroidx/datastore/preferences/protobuf/q0;->q(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/i1;

    move-result-object v5

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/e;->G(I[BIILandroidx/datastore/preferences/protobuf/i1;Landroidx/datastore/preferences/protobuf/e$a;)I

    move-result p0

    return p0
.end method

.method static h([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static i(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    check-cast p4, Landroidx/datastore/preferences/protobuf/v;

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/e;->h([BI)I

    move-result v0

    invoke-virtual {p4, v0}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/e;->h([BI)I

    move-result p2

    invoke-virtual {p4, p2}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static j([BI)J
    .locals 7

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static k(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 3

    check-cast p4, Landroidx/datastore/preferences/protobuf/f0;

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/e;->j([BI)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/e;->j([BI)J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static l([BI)F
    .locals 0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/e;->h([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method static m(I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    check-cast p4, Landroidx/datastore/preferences/protobuf/t;

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/e;->l([BI)F

    move-result v0

    invoke-virtual {p4, v0}, Landroidx/datastore/preferences/protobuf/t;->addFloat(F)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v1, p5, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/e;->l([BI)F

    move-result p2

    invoke-virtual {p4, p2}, Landroidx/datastore/preferences/protobuf/t;->addFloat(F)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static n(Landroidx/datastore/preferences/protobuf/b1;[BIIILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 8

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/b1;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/e;->N(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;[BIIILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    invoke-interface {p0, v7}, Landroidx/datastore/preferences/protobuf/b1;->makeImmutable(Ljava/lang/Object;)V

    iput-object v7, p5, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    return p1
.end method

.method static o(Landroidx/datastore/preferences/protobuf/b1;I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 7

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/e;->n(Landroidx/datastore/preferences/protobuf/b1;[BIIILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p3

    iget-object v1, p6, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v3

    iget v1, p6, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/e;->n(Landroidx/datastore/preferences/protobuf/b1;[BIIILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p3

    iget-object v1, p6, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method static p(Landroidx/datastore/preferences/protobuf/b1;[BIILandroidx/datastore/preferences/protobuf/e$a;)I
    .locals 7

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/b1;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/e;->O(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/b1;[BIILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    invoke-interface {p0, v6}, Landroidx/datastore/preferences/protobuf/b1;->makeImmutable(Ljava/lang/Object;)V

    iput-object v6, p4, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    return p1
.end method

.method static q(Landroidx/datastore/preferences/protobuf/b1;I[BIILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    invoke-static {p0, p2, p3, p4, p6}, Landroidx/datastore/preferences/protobuf/e;->p(Landroidx/datastore/preferences/protobuf/b1;[BIILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p3

    iget-object v0, p6, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result v0

    iget v1, p6, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Landroidx/datastore/preferences/protobuf/e;->p(Landroidx/datastore/preferences/protobuf/b1;[BIILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p3

    iget-object v0, p6, Landroidx/datastore/preferences/protobuf/e$a;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method static r([BILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 5

    check-cast p2, Landroidx/datastore/preferences/protobuf/f;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget v0, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget-wide v1, p3, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/f;->addBoolean(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static s([BILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    check-cast p2, Landroidx/datastore/preferences/protobuf/l;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget p3, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/e;->e([BI)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/l;->addDouble(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static t([BILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 1

    check-cast p2, Landroidx/datastore/preferences/protobuf/v;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget p3, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/e;->h([BI)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static u([BILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    check-cast p2, Landroidx/datastore/preferences/protobuf/f0;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget p3, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/e;->j([BI)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static v([BILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 1

    check-cast p2, Landroidx/datastore/preferences/protobuf/t;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget p3, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/e;->l([BI)F

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/t;->addFloat(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static w([BILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    check-cast p2, Landroidx/datastore/preferences/protobuf/v;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget v0, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget v1, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/i;->c(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static x([BILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 3

    check-cast p2, Landroidx/datastore/preferences/protobuf/f0;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget v0, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget-wide v1, p3, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/i;->d(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static y([BILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 2

    check-cast p2, Landroidx/datastore/preferences/protobuf/v;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget v0, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget v1, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/v;->addInt(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static z([BILandroidx/datastore/preferences/protobuf/w$d;Landroidx/datastore/preferences/protobuf/e$a;)I
    .locals 3

    check-cast p2, Landroidx/datastore/preferences/protobuf/f0;

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->I([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget v0, p3, Landroidx/datastore/preferences/protobuf/e$a;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/e;->L([BILandroidx/datastore/preferences/protobuf/e$a;)I

    move-result p1

    iget-wide v1, p3, Landroidx/datastore/preferences/protobuf/e$a;->b:J

    invoke-virtual {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/f0;->addLong(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method
