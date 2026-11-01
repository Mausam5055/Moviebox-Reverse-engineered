.class final Landroidx/datastore/preferences/protobuf/i$c;
.super Landroidx/datastore/preferences/protobuf/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final g:Ljava/lang/Iterable;

.field private final h:Ljava/util/Iterator;

.field private i:Ljava/nio/ByteBuffer;

.field private final j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:J

.field private s:J

.field private t:J

.field private u:J


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;-><init>(Landroidx/datastore/preferences/protobuf/i$a;)V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->n:I

    iput p2, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:Ljava/util/Iterator;

    iput-boolean p3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:Z

    const/4 p1, 0x0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->p:I

    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->q:I

    if-nez p2, :cond_0

    sget-object p1, Landroidx/datastore/preferences/protobuf/w;->e:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    iput-wide p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->s:J

    iput-wide p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    iput-wide p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->t:J

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->X()V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;IZLandroidx/datastore/preferences/protobuf/i$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/i$c;-><init>(Ljava/lang/Iterable;IZ)V

    return-void
.end method

.method private J()J
    .locals 4

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private K()V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->X()V

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private M([BII)V
    .locals 11

    if-ltz p3, :cond_2

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->T()I

    move-result v0

    if-gt p3, v0, :cond_2

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->J()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->K()V

    :cond_0
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->J()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    sub-int v4, p3, v0

    add-int/2addr v4, p2

    int-to-long v5, v4

    int-to-long v9, v1

    move-object v4, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Landroidx/datastore/preferences/protobuf/k1;->p(J[BJJ)V

    sub-int/2addr v0, v1

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gtz p3, :cond_4

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private S()V
    .locals 3

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->q:I

    sub-int v1, v0, v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->n:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    :goto_0
    return-void
.end method

.method private T()I
    .locals 4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->p:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->s:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private V()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

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

.method private W(II)Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:Ljava/nio/ByteBuffer;

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
    :try_start_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    throw p1
.end method

.method private X()V
    .locals 6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->p:I

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    iget-wide v4, p0, Landroidx/datastore/preferences/protobuf/i$c;->s:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->p:I

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->s:J

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/k1;->k(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->t:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->s:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->s:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/i;->c(I)I

    move-result v0

    return v0
.end method

.method public B()J
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->Q()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/i;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public C()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v8, v0

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    iget-wide v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    sub-long/2addr v1, v3

    cmp-long v1, v8, v1

    if-gtz v1, :cond_0

    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v1, v3

    move-object v3, v0

    move-wide v4, v5

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/k1;->p(J[BJJ)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Landroidx/datastore/preferences/protobuf/w;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    return-object v1

    :cond_0
    if-lez v0, :cond_1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->T()I

    move-result v1

    if-gt v0, v1, :cond_1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/i$c;->M([BII)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Landroidx/datastore/preferences/protobuf/w;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

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

.method public D()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v1, v0

    iget-wide v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    iget-wide v5, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    sub-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    iget-wide v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->s:J

    sub-long/2addr v5, v3

    long-to-int v3, v5

    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:Ljava/nio/ByteBuffer;

    invoke-static {v4, v3, v0}, Landroidx/datastore/preferences/protobuf/Utf8;->g(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    return-object v0

    :cond_0
    if-ltz v0, :cond_1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->T()I

    move-result v1

    if-gt v0, v1, :cond_1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/i$c;->M([BII)V

    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/Utf8;->h([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gtz v0, :cond_3

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public E()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->o:I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->o:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->o:I

    return v0

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public F()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()I

    move-result v0

    return v0
.end method

.method public G()J
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->Q()J

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

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/i$c;->U(I)V

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

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->a(I)V

    return v1

    :cond_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->U(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->U(I)V

    return v1

    :cond_5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->V()V

    return v1
.end method

.method public L()B
    .locals 4

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->J()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->K()V

    :cond_0
    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v0

    return v0
.end method

.method public N()I
    .locals 5

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->J()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public O()J
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/i$c;->J()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    cmp-long v1, v1, v3

    const/16 v2, 0x38

    const/16 v7, 0x20

    const/16 v8, 0x18

    const/16 v9, 0x10

    const/16 v10, 0x8

    const-wide/16 v11, 0xff

    if-ltz v1, :cond_0

    iget-wide v13, v0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v3, v13

    iput-wide v3, v0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    invoke-static {v13, v14}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v1

    int-to-long v3, v1

    and-long/2addr v3, v11

    const-wide/16 v15, 0x1

    add-long/2addr v15, v13

    invoke-static/range {v15 .. v16}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long/2addr v5, v10

    or-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v5, v13

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long/2addr v5, v9

    or-long/2addr v3, v5

    const-wide/16 v5, 0x3

    add-long/2addr v5, v13

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long/2addr v5, v8

    or-long/2addr v3, v5

    const-wide/16 v5, 0x4

    add-long/2addr v5, v13

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const-wide/16 v5, 0x5

    add-long/2addr v5, v13

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    const/16 v1, 0x28

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    const-wide/16 v5, 0x6

    add-long/2addr v5, v13

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    const/16 v1, 0x30

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    const-wide/16 v5, 0x7

    add-long/2addr v13, v5

    invoke-static {v13, v14}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v1

    :goto_0
    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long v1, v5, v2

    or-long/2addr v1, v3

    return-wide v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    int-to-long v3, v1

    and-long/2addr v3, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long/2addr v5, v10

    or-long/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long/2addr v5, v9

    or-long/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long/2addr v5, v8

    or-long/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    const/16 v1, 0x28

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    int-to-long v5, v1

    and-long/2addr v5, v11

    const/16 v1, 0x30

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

    move-result v1

    goto :goto_0
.end method

.method public P()I
    .locals 11

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    if-ltz v6, :cond_1

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    return v6

    :cond_1
    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    iget-wide v7, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    sub-long/2addr v2, v7

    const-wide/16 v7, 0xa

    cmp-long v2, v2, v7

    if-gez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v4, v6

    if-gez v4, :cond_3

    xor-int/lit8 v0, v4, -0x80

    goto/16 :goto_3

    :cond_3
    const-wide/16 v5, 0x3

    add-long/2addr v5, v0

    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_4

    xor-int/lit16 v0, v2, 0x3f80

    :goto_0
    move-wide v2, v5

    goto :goto_3

    :cond_4
    const-wide/16 v3, 0x4

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0x15

    xor-int/2addr v2, v5

    if-gez v2, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    :goto_1
    move-wide v2, v3

    goto :goto_3

    :cond_5
    const-wide/16 v5, 0x5

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v3

    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v2, v4

    const v4, 0xfe03f80

    xor-int/2addr v2, v4

    if-gez v3, :cond_7

    const-wide/16 v3, 0x6

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v5

    if-gez v5, :cond_8

    const-wide/16 v5, 0x7

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v3

    if-gez v3, :cond_7

    const-wide/16 v3, 0x8

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v5

    if-gez v5, :cond_8

    const-wide/16 v5, 0x9

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v3

    if-gez v3, :cond_7

    add-long/2addr v0, v7

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v3

    if-gez v3, :cond_6

    :goto_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->R()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_6
    move-wide v9, v0

    move v0, v2

    move-wide v2, v9

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    :goto_3
    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    return v0
.end method

.method public Q()J
    .locals 15

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    if-ltz v6, :cond_1

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    int-to-long v0, v6

    return-wide v0

    :cond_1
    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    iget-wide v7, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    sub-long/2addr v2, v7

    const-wide/16 v7, 0xa

    cmp-long v2, v2, v7

    if-gez v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v4, v6

    if-gez v4, :cond_3

    xor-int/lit8 v0, v4, -0x80

    int-to-long v0, v0

    goto/16 :goto_4

    :cond_3
    const-wide/16 v5, 0x3

    add-long/2addr v5, v0

    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_4

    xor-int/lit16 v0, v2, 0x3f80

    int-to-long v0, v0

    move-wide v2, v5

    goto/16 :goto_4

    :cond_4
    const-wide/16 v3, 0x4

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0x15

    xor-int/2addr v2, v5

    if-gez v2, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    int-to-long v0, v0

    move-wide v2, v3

    goto/16 :goto_4

    :cond_5
    int-to-long v5, v2

    const-wide/16 v9, 0x5

    add-long/2addr v9, v0

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x1c

    shl-long/2addr v2, v4

    xor-long/2addr v2, v5

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_6

    const-wide/32 v0, 0xfe03f80

    :goto_0
    xor-long/2addr v0, v2

    :goto_1
    move-wide v2, v9

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

    move-wide v2, v11

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

    goto :goto_0

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
    const-wide/16 v9, 0x9

    add-long/2addr v9, v0

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v11, v6

    const/16 v6, 0x38

    shl-long/2addr v11, v6

    xor-long/2addr v2, v11

    const-wide v11, 0xfe03f80fe03f80L

    xor-long/2addr v2, v11

    cmp-long v6, v2, v4

    if-gez v6, :cond_b

    add-long/2addr v0, v7

    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/k1;->w(J)B

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v6, v4

    if-gez v4, :cond_a

    :goto_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->R()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move-wide v13, v0

    move-wide v0, v2

    move-wide v2, v13

    goto :goto_4

    :cond_b
    move-wide v0, v2

    goto :goto_1

    :goto_4
    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    return-wide v0
.end method

.method R()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()B

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

.method public U(I)V
    .locals 6

    if-ltz p1, :cond_2

    int-to-long v0, p1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    iget v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->p:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget-wide v4, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroidx/datastore/preferences/protobuf/i$c;->s:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :goto_0
    if-lez p1, :cond_1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->J()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->K()V

    :cond_0
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->J()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gez p1, :cond_3

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->o:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidEndTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public e()I
    .locals 4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->p:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->q:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->s:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public f()Z
    .locals 4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->p:I

    int-to-long v0, v0

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->s:J

    sub-long/2addr v0, v2

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    int-to-long v2, v2

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

    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->n:I

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->S()V

    return-void
.end method

.method public o(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->e()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->n:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->n:I

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->S()V

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

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->Q()J

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
    .locals 10

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()I

    move-result v0

    if-lez v0, :cond_1

    int-to-long v8, v0

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->u:J

    iget-wide v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    sub-long/2addr v1, v3

    cmp-long v1, v8, v1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->k:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->t:J

    sub-long/2addr v3, v1

    long-to-int v1, v3

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Landroidx/datastore/preferences/protobuf/i$c;->W(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    return-object v0

    :cond_0
    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v1, v3

    move-object v3, v0

    move-wide v4, v5

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/k1;->p(J[BJJ)V

    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap([B)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_1
    if-lez v0, :cond_5

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->T()I

    move-result v1

    if-gt v0, v1, :cond_5

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->k:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez v0, :cond_3

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->J()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->K()V

    :cond_2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->J()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    iget-wide v5, p0, Landroidx/datastore/preferences/protobuf/i$c;->t:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    add-int v4, v3, v2

    invoke-direct {p0, v3, v4}, Landroidx/datastore/preferences/protobuf/i$c;->W(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int/2addr v0, v2

    iget-wide v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->r:J

    goto :goto_0

    :cond_3
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_4
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/i$c;->M([BII)V

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap([B)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_5
    if-nez v0, :cond_6

    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    return-object v0

    :cond_6
    if-gez v0, :cond_7

    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public r()D
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->O()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public s()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->N()I

    move-result v0

    return v0
.end method

.method public u()J
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public v()F
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->N()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public w()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->Q()J

    move-result-wide v0

    return-wide v0
.end method

.method public y()I
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->N()I

    move-result v0

    return v0
.end method

.method public z()J
    .locals 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->O()J

    move-result-wide v0

    return-wide v0
.end method
