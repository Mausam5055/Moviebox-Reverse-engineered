.class final Ld3/a;
.super Ljava/lang/Object;

# interfaces
.implements Ld3/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/a$b;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/util/ArrayDeque;

.field private final c:Ld3/g;

.field private d:Ld3/b;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ld3/a;->a:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ld3/a;->b:Ljava/util/ArrayDeque;

    new-instance v0, Ld3/g;

    invoke-direct {v0}, Ld3/g;-><init>()V

    iput-object v0, p0, Ld3/a;->c:Ld3/g;

    return-void
.end method

.method private c(Ll2/s;)J
    .locals 4

    invoke-interface {p1}, Ll2/s;->resetPeekPosition()V

    :goto_0
    iget-object v0, p0, Ld3/a;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Ll2/s;->peekFully([BII)V

    iget-object v0, p0, Ld3/a;->a:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Ld3/g;->c(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Ld3/a;->a:[B

    invoke-static {v2, v0, v1}, Ld3/g;->a([BIZ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Ld3/a;->d:Ld3/b;

    invoke-interface {v2, v1}, Ld3/b;->isLevel1Element(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ll2/s;->skipFully(I)V

    int-to-long v0, v1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ll2/s;->skipFully(I)V

    goto :goto_0
.end method

.method private d(Ll2/s;I)D
    .locals 2

    invoke-direct {p0, p1, p2}, Ld3/a;->e(Ll2/s;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private e(Ll2/s;I)J
    .locals 6

    iget-object v0, p0, Ld3/a;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Ll2/s;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Ld3/a;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static f(Ll2/s;I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Ll2/s;->readFully([BII)V

    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 p0, p1, -0x1

    aget-byte p0, v0, p0

    if-nez p0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method


# virtual methods
.method public a(Ll2/s;)Z
    .locals 12

    iget-object v0, p0, Ld3/a;->d:Ld3/b;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Ld3/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/a$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v2

    invoke-static {v0}, Ld3/a$b;->a(Ld3/a$b;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-object p1, p0, Ld3/a;->d:Ld3/b;

    iget-object v0, p0, Ld3/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/a$b;

    invoke-static {v0}, Ld3/a$b;->b(Ld3/a$b;)I

    move-result v0

    invoke-interface {p1, v0}, Ld3/b;->endMasterElement(I)V

    return v1

    :cond_0
    iget v0, p0, Ld3/a;->e:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Ld3/a;->c:Ld3/g;

    invoke-virtual {v0, p1, v1, v3, v2}, Ld3/g;->d(Ll2/s;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Ld3/a;->c(Ll2/s;)J

    move-result-wide v4

    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    return v3

    :cond_2
    long-to-int v0, v4

    iput v0, p0, Ld3/a;->f:I

    iput v1, p0, Ld3/a;->e:I

    :cond_3
    iget v0, p0, Ld3/a;->e:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Ld3/a;->c:Ld3/g;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v3, v1, v5}, Ld3/g;->d(Ll2/s;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Ld3/a;->g:J

    iput v4, p0, Ld3/a;->e:I

    :cond_4
    iget-object v0, p0, Ld3/a;->d:Ld3/b;

    iget v5, p0, Ld3/a;->f:I

    invoke-interface {v0, v5}, Ld3/b;->getElementType(I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v5, 0x0

    if-eq v0, v1, :cond_d

    const-wide/16 v6, 0x8

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    if-eq v0, v2, :cond_8

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    iget-wide v8, p0, Ld3/a;->g:J

    const-wide/16 v10, 0x4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_6

    cmp-long v0, v8, v6

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid float size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Ld3/a;->g:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_1
    iget-object v0, p0, Ld3/a;->d:Ld3/b;

    iget v2, p0, Ld3/a;->f:I

    long-to-int v4, v8

    invoke-direct {p0, p1, v4}, Ld3/a;->d(Ll2/s;I)D

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Ld3/b;->floatElement(ID)V

    iput v3, p0, Ld3/a;->e:I

    return v1

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid element type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_8
    iget-object v0, p0, Ld3/a;->d:Ld3/b;

    iget v2, p0, Ld3/a;->f:I

    iget-wide v4, p0, Ld3/a;->g:J

    long-to-int v4, v4

    invoke-interface {v0, v2, v4, p1}, Ld3/b;->a(IILl2/s;)V

    iput v3, p0, Ld3/a;->e:I

    return v1

    :cond_9
    iget-wide v6, p0, Ld3/a;->g:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v6, v8

    if-gtz v0, :cond_a

    iget-object v0, p0, Ld3/a;->d:Ld3/b;

    iget v2, p0, Ld3/a;->f:I

    long-to-int v4, v6

    invoke-static {p1, v4}, Ld3/a;->f(Ll2/s;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ld3/b;->stringElement(ILjava/lang/String;)V

    iput v3, p0, Ld3/a;->e:I

    return v1

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "String element size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Ld3/a;->g:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_b
    iget-wide v8, p0, Ld3/a;->g:J

    cmp-long v0, v8, v6

    if-gtz v0, :cond_c

    iget-object v0, p0, Ld3/a;->d:Ld3/b;

    iget v2, p0, Ld3/a;->f:I

    long-to-int v4, v8

    invoke-direct {p0, p1, v4}, Ld3/a;->e(Ll2/s;I)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Ld3/b;->integerElement(IJ)V

    iput v3, p0, Ld3/a;->e:I

    return v1

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid integer size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Ld3/a;->g:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_d
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Ld3/a;->g:J

    add-long/2addr v8, v6

    iget-object p1, p0, Ld3/a;->b:Ljava/util/ArrayDeque;

    new-instance v0, Ld3/a$b;

    iget v2, p0, Ld3/a;->f:I

    invoke-direct {v0, v2, v8, v9, v5}, Ld3/a$b;-><init>(IJLd3/a$a;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v4, p0, Ld3/a;->d:Ld3/b;

    iget v5, p0, Ld3/a;->f:I

    iget-wide v8, p0, Ld3/a;->g:J

    invoke-interface/range {v4 .. v9}, Ld3/b;->startMasterElement(IJJ)V

    iput v3, p0, Ld3/a;->e:I

    return v1

    :cond_e
    iget-wide v0, p0, Ld3/a;->g:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Ll2/s;->skipFully(I)V

    iput v3, p0, Ld3/a;->e:I

    goto/16 :goto_0
.end method

.method public b(Ld3/b;)V
    .locals 0

    iput-object p1, p0, Ld3/a;->d:Ld3/b;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld3/a;->e:I

    iget-object v0, p0, Ld3/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Ld3/a;->c:Ld3/g;

    invoke-virtual {v0}, Ld3/g;->e()V

    return-void
.end method
