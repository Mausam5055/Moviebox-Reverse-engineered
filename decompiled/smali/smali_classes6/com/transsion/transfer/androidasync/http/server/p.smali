.class public Lcom/transsion/transfer/androidasync/http/server/p;
.super Lcom/transsion/transfer/androidasync/t;


# instance fields
.field private g:[B

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 9

    iget p1, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    array-length p1, p1

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    iget v2, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result p1

    new-array v1, p1, [B

    invoke-virtual {p2, v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->h([B)V

    move p2, v0

    move v2, p2

    :goto_0
    if-ge p2, p1, :cond_f

    iget v3, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    const/4 v4, -0x1

    if-ltz v3, :cond_2

    aget-byte v5, v1, p2

    iget-object v6, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    aget-byte v7, v6, v3

    if-ne v5, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    array-length v5, v6

    if-ne v3, v5, :cond_e

    iput v4, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    goto/16 :goto_1

    :cond_1
    if-lez v3, :cond_e

    sub-int/2addr p2, v3

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    goto/16 :goto_1

    :cond_2
    const/4 v5, -0x2

    const/16 v6, 0x2d

    const/16 v7, 0xd

    const/4 v8, -0x4

    if-ne v3, v4, :cond_7

    aget-byte v3, v1, p2

    if-ne v3, v7, :cond_5

    iput v8, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    sub-int v3, p2, v2

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    invoke-static {v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v4, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    invoke-virtual {v4, v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-super {p0, p0, v4}, Lcom/transsion/transfer/androidasync/t;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->S()V

    goto/16 :goto_1

    :cond_5
    if-ne v3, v6, :cond_6

    iput v5, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    goto/16 :goto_1

    :cond_6
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;

    const-string p2, "Invalid multipart/form-data. Expected \r or -"

    invoke-direct {p1, p2}, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    return-void

    :cond_7
    const/4 v4, -0x3

    if-ne v3, v5, :cond_9

    aget-byte v3, v1, p2

    if-ne v3, v6, :cond_8

    iput v4, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;

    const-string p2, "Invalid multipart/form-data. Expected -"

    invoke-direct {p1, p2}, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    return-void

    :cond_9
    if-ne v3, v4, :cond_b

    aget-byte v3, v1, p2

    if-ne v3, v7, :cond_a

    iput v8, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    sub-int v3, p2, v2

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    array-length v4, v4

    sub-int v4, v3, v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    array-length v5, v5

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v4, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    invoke-virtual {v4, v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-super {p0, p0, v4}, Lcom/transsion/transfer/androidasync/t;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->R()V

    goto :goto_1

    :cond_a
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;

    const-string p2, "Invalid multipart/form-data. Expected \r"

    invoke-direct {p1, p2}, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    return-void

    :cond_b
    if-ne v3, v8, :cond_d

    aget-byte v3, v1, p2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_c

    add-int/lit8 v2, p2, 0x1

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    goto :goto_1

    :cond_c
    new-instance v3, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;

    const-string v4, "Invalid multipart/form-data. Expected \n"

    invoke-direct {v3, v4}, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_d
    new-instance v3, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;

    const-string v4, "Invalid multipart/form-data. Unknown state?"

    invoke-direct {v3, v4}, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    :cond_e
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_f
    if-ge v2, p1, :cond_10

    iget p2, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p1, v2

    sub-int/2addr p1, p2

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1, v2, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance p2, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-super {p0, p0, p2}, Lcom/transsion/transfer/androidasync/t;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    :cond_10
    return-void
.end method

.method public O()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public P()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    array-length v2, v1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method protected R()V
    .locals 0

    return-void
.end method

.method protected S()V
    .locals 0

    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    return-void
.end method
