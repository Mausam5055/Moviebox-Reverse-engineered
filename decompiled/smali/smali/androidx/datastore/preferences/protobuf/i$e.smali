.class final Landroidx/datastore/preferences/protobuf/i$e;
.super Landroidx/datastore/preferences/protobuf/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final g:Ljava/nio/ByteBuffer;

.field private final h:Z

.field private final i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:I

.field private o:Z

.field private p:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;-><init>(Landroidx/datastore/preferences/protobuf/i$a;)V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->p:I

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/i$e;->g:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/k1;->k(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->i:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->l:J

    iput-boolean p2, p0, Landroidx/datastore/preferences/protobuf/i$e;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ZLandroidx/datastore/preferences/protobuf/i$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/i$e;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private J(J)I
    .locals 2

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->i:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method static K()Z
    .locals 1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/k1;->J()Z

    move-result v0

    return v0
.end method

.method private R()V
    .locals 4

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->m:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->l:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iget v3, p0, Landroidx/datastore/preferences/protobuf/i$e;->p:I

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->m:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->m:I

    :goto_0
    return-void
.end method

.method private S()I
    .locals 4

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private U()V
    .locals 2

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$e;->S()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$e;->V()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$e;->W()V

    :goto_0
    return-void
.end method

.method private V()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->malformedVarint()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private W()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->L()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->malformedVarint()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private X(JJ)Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->g:Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/i$e;->J(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p3, p4}, Landroidx/datastore/preferences/protobuf/i$e;->J(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i$e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    throw p1
.end method


# virtual methods
.method public A()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->O()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/i;->c(I)I

    move-result v0

    return v0
.end method

.method public B()J
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->P()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/i;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public C()Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->O()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$e;->S()I

    move-result v1

    if-gt v0, v1, :cond_0

    new-array v1, v0, [B

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    int-to-long v9, v0

    const-wide/16 v5, 0x0

    move-object v4, v1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Landroidx/datastore/preferences/protobuf/k1;->p(J[BJJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Landroidx/datastore/preferences/protobuf/w;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public D()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->O()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$e;->S()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    invoke-direct {p0, v1, v2}, Landroidx/datastore/preferences/protobuf/i$e;->J(J)I

    move-result v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->g:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8;->g(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public E()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->n:I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->O()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->n:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->n:I

    return v0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public F()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->O()I

    move-result v0

    return v0
.end method

.method public G()J
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->P()J

    move-result-wide v0

    return-wide v0
.end method

.method public H(I)Z
    .locals 4

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/i$e;->T(I)V

    return v1

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i;->I()V

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$e;->a(I)V

    return v1

    :cond_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->O()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$e;->T(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$e;->T(I)V

    return v1

    :cond_5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$e;->U()V

    return v1
.end method

.method public L()B
    .locals 4

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public M()I
    .locals 6

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public N()J
    .locals 9

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public O()I
    .locals 9

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v4

    if-ltz v4, :cond_1

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    return v4

    :cond_1
    iget-wide v5, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x9

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const-wide/16 v5, 0x2

    add-long/2addr v5, v0

    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_3

    xor-int/lit8 v0, v2, -0x80

    goto/16 :goto_2

    :cond_3
    const-wide/16 v3, 0x3

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0xe

    xor-int/2addr v2, v5

    if-ltz v2, :cond_4

    xor-int/lit16 v0, v2, 0x3f80

    :goto_0
    move-wide v5, v3

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x4

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v2, v3

    if-gez v2, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x5

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v5

    shl-int/lit8 v6, v5, 0x1c

    xor-int/2addr v2, v6

    const v6, 0xfe03f80

    xor-int/2addr v2, v6

    if-gez v5, :cond_7

    const-wide/16 v5, 0x6

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v3

    if-gez v3, :cond_6

    const-wide/16 v3, 0x7

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v5

    if-gez v5, :cond_7

    const-wide/16 v5, 0x8

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v3

    if-gez v3, :cond_6

    add-long v3, v0, v7

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v5

    if-gez v5, :cond_7

    const-wide/16 v5, 0xa

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v0

    if-gez v0, :cond_6

    :goto_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->Q()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_0

    :goto_2
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    return v0
.end method

.method public P()J
    .locals 13

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v4

    if-ltz v4, :cond_1

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    int-to-long v0, v4

    return-wide v0

    :cond_1
    iget-wide v5, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x9

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    goto/16 :goto_3

    :cond_2
    const-wide/16 v5, 0x2

    add-long/2addr v5, v0

    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_3

    xor-int/lit8 v0, v2, -0x80

    :goto_0
    int-to-long v0, v0

    goto/16 :goto_4

    :cond_3
    const-wide/16 v3, 0x3

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0xe

    xor-int/2addr v2, v5

    if-ltz v2, :cond_4

    xor-int/lit16 v0, v2, 0x3f80

    int-to-long v0, v0

    move-wide v5, v3

    goto/16 :goto_4

    :cond_4
    const-wide/16 v5, 0x4

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v2, v3

    if-gez v2, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_5
    int-to-long v2, v2

    const-wide/16 v9, 0x5

    add-long/2addr v9, v0

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_6

    const-wide/32 v0, 0xfe03f80

    :goto_1
    xor-long/2addr v0, v2

    move-wide v5, v9

    goto/16 :goto_4

    :cond_6
    const-wide/16 v11, 0x6

    add-long/2addr v11, v0

    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v9, v6

    const/16 v6, 0x23

    shl-long/2addr v9, v6

    xor-long/2addr v2, v9

    cmp-long v6, v2, v4

    if-gez v6, :cond_7

    const-wide v0, -0x7f01fc080L

    :goto_2
    xor-long/2addr v0, v2

    move-wide v5, v11

    goto :goto_4

    :cond_7
    const-wide/16 v9, 0x7

    add-long/2addr v9, v0

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v11, v6

    const/16 v6, 0x2a

    shl-long/2addr v11, v6

    xor-long/2addr v2, v11

    cmp-long v6, v2, v4

    if-ltz v6, :cond_8

    const-wide v0, 0x3f80fe03f80L

    goto :goto_1

    :cond_8
    const-wide/16 v11, 0x8

    add-long/2addr v11, v0

    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v9, v6

    const/16 v6, 0x31

    shl-long/2addr v9, v6

    xor-long/2addr v2, v9

    cmp-long v6, v2, v4

    if-gez v6, :cond_9

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_2

    :cond_9
    add-long v6, v0, v7

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v2, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v2, v8

    cmp-long v8, v2, v4

    if-gez v8, :cond_b

    const-wide/16 v8, 0xa

    add-long/2addr v0, v8

    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v6, v4

    if-gez v4, :cond_a

    :goto_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->Q()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move-wide v5, v0

    move-wide v0, v2

    goto :goto_4

    :cond_b
    move-wide v0, v2

    move-wide v5, v6

    :goto_4
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    return-wide v0
.end method

.method Q()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->L()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->malformedVarint()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public T(I)V
    .locals 4

    if-ltz p1, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$e;->S()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    return-void

    :cond_0
    if-gez p1, :cond_1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->n:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidEndTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public e()I
    .locals 4

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->l:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public f()Z
    .locals 4

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$e;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$e;->p:I

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$e;->R()V

    return-void
.end method

.method public o(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->e()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->p:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$e;->p:I

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$e;->R()V

    return v0

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public p()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->P()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 11

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->O()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$e;->S()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->h:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->o:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    int-to-long v3, v0

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Landroidx/datastore/preferences/protobuf/i$e;->X(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v8, v0, [B

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    int-to-long v9, v0

    const-wide/16 v4, 0x0

    move-object v3, v8

    move-wide v6, v9

    invoke-static/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/k1;->p(J[BJJ)V

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$e;->k:J

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap([B)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public r()D
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->N()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public s()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->O()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->M()I

    move-result v0

    return v0
.end method

.method public u()J
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method public v()F
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->M()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public w()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->O()I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->P()J

    move-result-wide v0

    return-wide v0
.end method

.method public y()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->M()I

    move-result v0

    return v0
.end method

.method public z()J
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$e;->N()J

    move-result-wide v0

    return-wide v0
.end method
