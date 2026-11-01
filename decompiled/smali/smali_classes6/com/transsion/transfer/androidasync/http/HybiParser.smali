.class abstract Lcom/transsion/transfer/androidasync/http/HybiParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;
    }
.end annotation


# static fields
.field private static final w:Ljava/util/List;

.field private static final x:Ljava/util/List;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[B

.field private l:[B

.field private m:Z

.field private n:Ljava/io/ByteArrayOutputStream;

.field private o:Ljava/util/zip/Inflater;

.field private p:[B

.field q:Lbv/d;

.field r:Lbv/d;

.field s:Lbv/d;

.field t:Lbv/d;

.field u:Lbv/d;

.field private v:Lcom/transsion/transfer/androidasync/r;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Integer;

    aput-object v1, v9, v0

    aput-object v3, v9, v2

    aput-object v5, v9, v4

    const/4 v10, 0x3

    aput-object v6, v9, v10

    const/4 v6, 0x4

    aput-object v7, v9, v6

    const/4 v6, 0x5

    aput-object v8, v9, v6

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lcom/transsion/transfer/androidasync/http/HybiParser;->w:Ljava/util/List;

    new-array v6, v10, [Ljava/lang/Integer;

    aput-object v1, v6, v0

    aput-object v3, v6, v2

    aput-object v5, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/transfer/androidasync/http/HybiParser;->x:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/androidasync/p;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->b:Z

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->k:[B

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->l:[B

    iput-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->m:Z

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->p:[B

    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$a;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/HybiParser$a;-><init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->q:Lbv/d;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$b;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/HybiParser$b;-><init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->r:Lbv/d;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$c;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/HybiParser$c;-><init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->s:Lbv/d;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$d;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/HybiParser$d;-><init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->t:Lbv/d;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$e;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/HybiParser$e;-><init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->u:Lbv/d;

    new-instance v0, Lcom/transsion/transfer/androidasync/r;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/r;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->C()V

    return-void
.end method

.method private D([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->u([B)I

    move-result p1

    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->i:I

    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    return-void
.end method

.method private E(B)V
    .locals 2

    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->e:Z

    and-int/lit8 p1, p1, 0x7f

    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->i:I

    if-ltz p1, :cond_2

    const/16 v1, 0x7d

    if-gt p1, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    :goto_1
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    goto :goto_3

    :cond_2
    const/16 v0, 0x7e

    const/4 v1, 0x2

    if-ne p1, v0, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    :goto_2
    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->h:I

    iput v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    :goto_3
    return-void
.end method

.method private F(B)V
    .locals 6

    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v3, p1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v4, p1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget-boolean v5, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->b:Z

    if-nez v5, :cond_3

    if-nez v0, :cond_8

    :cond_3
    if-nez v3, :cond_8

    if-nez v4, :cond_8

    and-int/lit16 v3, p1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    iput-boolean v3, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->d:Z

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->g:I

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->f:Z

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->k:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->l:[B

    sget-object v0, Lcom/transsion/transfer/androidasync/http/HybiParser;->w:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/transsion/transfer/androidasync/http/HybiParser;->x:Ljava/util/List;

    iget v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->d:Z

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    const-string v0, "Expected non-final packet"

    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_4
    iput v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    return-void

    :cond_7
    new-instance p1, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    const-string v0, "Bad opcode"

    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    const-string v0, "RSV not zero"

    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private I()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->j:I

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method private M([BI)[B
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    new-array v0, v0, [B

    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static bridge synthetic a(Lcom/transsion/transfer/androidasync/http/HybiParser;)I
    .locals 0

    iget p0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->i:I

    return p0
.end method

.method static bridge synthetic b(Lcom/transsion/transfer/androidasync/http/HybiParser;)I
    .locals 0

    iget p0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->h:I

    return p0
.end method

.method static bridge synthetic c(Lcom/transsion/transfer/androidasync/http/HybiParser;)[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->k:[B

    return-object p0
.end method

.method static bridge synthetic d(Lcom/transsion/transfer/androidasync/http/HybiParser;)[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->l:[B

    return-object p0
.end method

.method static bridge synthetic e(Lcom/transsion/transfer/androidasync/http/HybiParser;[B)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->k:[B

    return-void
.end method

.method static bridge synthetic f(Lcom/transsion/transfer/androidasync/http/HybiParser;[B)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->l:[B

    return-void
.end method

.method static bridge synthetic g(Lcom/transsion/transfer/androidasync/http/HybiParser;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    return-void
.end method

.method static bridge synthetic h(Lcom/transsion/transfer/androidasync/http/HybiParser;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->n()V

    return-void
.end method

.method static bridge synthetic i(Lcom/transsion/transfer/androidasync/http/HybiParser;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->D([B)V

    return-void
.end method

.method static bridge synthetic j(Lcom/transsion/transfer/androidasync/http/HybiParser;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->E(B)V

    return-void
.end method

.method static bridge synthetic k(Lcom/transsion/transfer/androidasync/http/HybiParser;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->F(B)V

    return-void
.end method

.method private static l([BII)J
    .locals 5

    array-length v0, p0

    if-lt v0, p2, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x8

    add-int v4, v2, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int v3, v4, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length must be less than or equal to b.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private m(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private n()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->l:[B

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->k:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->w([B[BI)[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->f:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->v([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid deflated data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->g:I

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->j:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->d:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->j:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->o([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->y(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->z([B)V

    :goto_1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->I()V

    goto/16 :goto_3

    :cond_2
    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    const-string v1, "Mode was not set."

    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->d:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->o([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->y(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    iput v3, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->j:I

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    iget-boolean v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->d:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->z([B)V

    goto :goto_3

    :cond_6
    iput v4, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->j:I

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_7
    const/16 v5, 0x8

    if-ne v1, v5, :cond_a

    array-length v1, v0

    if-lt v1, v4, :cond_8

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v1

    :cond_8
    array-length v1, v0

    if-le v1, v4, :cond_9

    invoke-direct {p0, v0, v4}, Lcom/transsion/transfer/androidasync/http/HybiParser;->M([BI)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->o([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->x(ILjava/lang/String;)V

    goto :goto_3

    :cond_a
    const/16 v2, 0x9

    const/16 v3, 0xa

    if-ne v1, v2, :cond_c

    array-length v1, v0

    const/16 v2, 0x7d

    if-gt v1, v2, :cond_b

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->o([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, v3, v0, v2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->q(I[BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->J([B)V

    invoke-virtual {p0, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->A(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    new-instance v0, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    const-string v1, "Ping payload too large"

    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-ne v1, v3, :cond_d

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->o([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->B(Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void
.end method

.method private o([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private p(ILjava/lang/String;I)[B
    .locals 0

    invoke-direct {p0, p2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->m(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/HybiParser;->q(I[BI)[B

    move-result-object p1

    return-object p1
.end method

.method private q(I[BI)[B
    .locals 6

    array-length v5, p2

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/HybiParser;->r(I[BIII)[B

    move-result-object p1

    return-object p1
.end method

.method private r(I[BIII)[B
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    iget-boolean v8, v0, Lcom/transsion/transfer/androidasync/http/HybiParser;->m:Z

    if-eqz v8, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    if-lez v1, :cond_1

    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v5

    :goto_0
    add-int v9, p5, v8

    sub-int/2addr v9, v2

    const v10, 0xffff

    const/16 v11, 0x7d

    if-gt v9, v11, :cond_2

    move v12, v6

    goto :goto_1

    :cond_2
    if-gt v9, v10, :cond_3

    const/4 v12, 0x4

    goto :goto_1

    :cond_3
    const/16 v12, 0xa

    :goto_1
    iget-boolean v13, v0, Lcom/transsion/transfer/androidasync/http/HybiParser;->a:Z

    if-eqz v13, :cond_4

    const/4 v14, 0x4

    goto :goto_2

    :cond_4
    move v14, v5

    :goto_2
    add-int/2addr v14, v12

    if-eqz v13, :cond_5

    const/16 v13, 0x80

    goto :goto_3

    :cond_5
    move v13, v5

    :goto_3
    add-int v15, v9, v14

    new-array v15, v15, [B

    move/from16 v4, p1

    int-to-byte v4, v4

    or-int/lit8 v4, v4, -0x80

    int-to-byte v4, v4

    aput-byte v4, v15, v5

    if-gt v9, v11, :cond_6

    or-int v4, v13, v9

    int-to-byte v4, v4

    aput-byte v4, v15, v7

    :goto_4
    move v13, v8

    goto :goto_5

    :cond_6
    if-gt v9, v10, :cond_7

    or-int/lit8 v4, v13, 0x7e

    int-to-byte v4, v4

    aput-byte v4, v15, v7

    div-int/lit16 v4, v9, 0x100

    int-to-byte v4, v4

    aput-byte v4, v15, v6

    and-int/lit16 v4, v9, 0xff

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    goto :goto_4

    :cond_7
    or-int/lit8 v4, v13, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v15, v7

    int-to-long v10, v9

    const-wide/high16 v16, 0x100000000000000L

    div-long v16, v10, v16

    const-wide/16 v18, 0xff

    move v13, v8

    and-long v7, v16, v18

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v15, v6

    const-wide/high16 v7, 0x1000000000000L

    div-long v7, v10, v7

    and-long v7, v7, v18

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v15, v3

    const-wide v7, 0x10000000000L

    div-long v7, v10, v7

    and-long v7, v7, v18

    long-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x4

    aput-byte v7, v15, v8

    const-wide v7, 0x100000000L

    div-long v7, v10, v7

    and-long v7, v7, v18

    long-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x5

    aput-byte v7, v15, v8

    const-wide/32 v7, 0x1000000

    div-long v7, v10, v7

    and-long v7, v7, v18

    long-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x6

    aput-byte v7, v15, v8

    const-wide/32 v7, 0x10000

    div-long v7, v10, v7

    and-long v7, v7, v18

    long-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x7

    aput-byte v7, v15, v8

    const-wide/16 v7, 0x100

    div-long/2addr v10, v7

    and-long v7, v10, v18

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x8

    aput-byte v7, v15, v8

    and-int/lit16 v7, v9, 0xff

    int-to-byte v7, v7

    const/16 v8, 0x9

    aput-byte v7, v15, v8

    :goto_5
    if-lez v1, :cond_8

    div-int/lit16 v7, v1, 0x100

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v15, v14

    const/4 v4, 0x1

    add-int/lit8 v7, v14, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v15, v7

    :cond_8
    add-int v8, v14, v13

    sub-int v1, p5, v2

    move-object/from16 v7, p2

    invoke-static {v7, v2, v15, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, v0, Lcom/transsion/transfer/androidasync/http/HybiParser;->a:Z

    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    mul-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v2, v9

    int-to-byte v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    int-to-byte v9, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double/2addr v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x4

    new-array v10, v8, [B

    aput-byte v1, v10, v5

    const/4 v1, 0x1

    aput-byte v2, v10, v1

    aput-byte v9, v10, v6

    aput-byte v7, v10, v3

    invoke-static {v10, v5, v15, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v15, v10, v14}, Lcom/transsion/transfer/androidasync/http/HybiParser;->w([B[BI)[B

    :cond_9
    return-object v15
.end method

.method private u([B)I
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser;->l([BII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    long-to-int p1, v0

    return p1

    :cond_0
    new-instance p1, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private v([B)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->p:[B

    invoke-virtual {p1, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result p1

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->p:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Ljava/util/zip/Inflater;->setInput([B)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->p:[B

    invoke-virtual {p1, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result p1

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->p:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private static w([B[BI)[B
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_1

    add-int v1, p2, v0

    aget-byte v2, p0, v1

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected abstract A(Ljava/lang/String;)V
.end method

.method protected abstract B(Ljava/lang/String;)V
.end method

.method C()V
    .locals 3

    iget v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->c:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    iget v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->i:I

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->u:Lbv/d;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/r;->b(ILbv/d;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->t:Lbv/d;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/transfer/androidasync/r;->b(ILbv/d;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    iget v1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->h:I

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->s:Lbv/d;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/r;->b(ILbv/d;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->r:Lbv/d;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/r;->b(ILbv/d;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->v:Lcom/transsion/transfer/androidasync/r;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->q:Lbv/d;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/r;->b(ILbv/d;)V

    :goto_0
    return-void
.end method

.method public G(Ljava/lang/String;)[B
    .locals 2

    const/16 v0, 0x9

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->p(ILjava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method protected abstract H(Ljava/lang/Exception;)V
.end method

.method protected abstract J([B)V
.end method

.method public K(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->b:Z

    return-void
.end method

.method public L(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->a:Z

    return-void
.end method

.method protected finalize()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/HybiParser;->o:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HybiParser"

    const-string v2, "inflater.end failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public s(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->p(ILjava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public t([B)[B
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->q(I[BI)[B

    move-result-object p1

    return-object p1
.end method

.method protected abstract x(ILjava/lang/String;)V
.end method

.method protected abstract y(Ljava/lang/String;)V
.end method

.method protected abstract z([B)V
.end method
