.class final Lcom/squareup/okhttp/internal/framed/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lokio/BufferedSource;

.field private final b:Lcom/squareup/okhttp/internal/framed/d$a;

.field private final c:Z

.field final d:Lcom/squareup/okhttp/internal/framed/c$a;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->c:Z

    new-instance p3, Lcom/squareup/okhttp/internal/framed/d$a;

    invoke-direct {p3, p1}, Lcom/squareup/okhttp/internal/framed/d$a;-><init>(Lokio/BufferedSource;)V

    iput-object p3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->b:Lcom/squareup/okhttp/internal/framed/d$a;

    new-instance p1, Lcom/squareup/okhttp/internal/framed/c$a;

    invoke-direct {p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/c$a;-><init>(ILokio/Source;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->d:Lcom/squareup/okhttp/internal/framed/c$a;

    return-void
.end method

.method private b(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v2, p3, 0x20

    if-nez v2, :cond_2

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    :cond_1
    invoke-static {p2, p3, v1}, Lcom/squareup/okhttp/internal/framed/d;->e(IBS)I

    move-result p2

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, p3, p2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    int-to-long p2, v1

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_2
    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private d(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 4

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-lt p2, v1, :cond_3

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    sub-int/2addr p2, v1

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez p2, :cond_0

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    int-to-long v2, p2

    invoke-interface {p3, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p3

    :cond_0
    invoke-interface {p1, p4, v1, p3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private h(ISBI)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->b:Lcom/squareup/okhttp/internal/framed/d$a;

    iput p1, v0, Lcom/squareup/okhttp/internal/framed/d$a;->e:I

    iput p1, v0, Lcom/squareup/okhttp/internal/framed/d$a;->b:I

    iput-short p2, v0, Lcom/squareup/okhttp/internal/framed/d$a;->f:S

    iput-byte p3, v0, Lcom/squareup/okhttp/internal/framed/d$a;->c:B

    iput p4, v0, Lcom/squareup/okhttp/internal/framed/d$a;->d:I

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->d:Lcom/squareup/okhttp/internal/framed/c$a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/c$a;->l()V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->d:Lcom/squareup/okhttp/internal/framed/c$a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/c$a;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private i(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/d$c;->l(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/d;->e(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/d$c;->h(ISBI)Ljava/util/List;

    move-result-object v7

    const/4 v6, -0x1

    sget-object v8, Lcom/squareup/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    const/4 v3, 0x0

    move-object v2, p1

    move v5, p4

    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    return-void

    :cond_3
    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private k(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    if-nez p4, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1, v0, p2, p4}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_1
    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_PING length != 8: %s"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private l(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    invoke-interface {p1, p2, v0, v3, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    return-void
.end method

.method private m(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 1

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/d$c;->l(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, p3

    const-string p1, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private n(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/d;->e(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/d$c;->h(ISBI)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p4, v1, p2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    return-void

    :cond_1
    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private o(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 2

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    invoke-static {p2}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p4, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private p(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_9

    and-int/2addr p3, v0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ackSettings()V

    return-void

    :cond_0
    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_8

    new-instance p3, Lcom/squareup/okhttp/internal/framed/h;

    invoke-direct {p3}, Lcom/squareup/okhttp/internal/framed/h;-><init>()V

    move p4, v1

    :goto_0
    if-ge p4, p2, :cond_6

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readShort()S

    move-result v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    packed-switch v2, :pswitch_data_0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "PROTOCOL_ERROR invalid settings id: %s"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_0
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_2

    const v4, 0xffffff

    if-gt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1
    if-ltz v3, :cond_3

    const/4 v2, 0x7

    goto :goto_1

    :cond_3
    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_2
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_3
    if-eqz v3, :cond_5

    if-ne v3, v0, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_1
    :pswitch_4
    invoke-virtual {p3, v2, v1, v3}, Lcom/squareup/okhttp/internal/framed/h;->l(III)Lcom/squareup/okhttp/internal/framed/h;

    add-int/lit8 p4, p4, 0x6

    goto :goto_0

    :cond_6
    invoke-interface {p1, v1, p3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/framed/h;)V

    invoke-virtual {p3}, Lcom/squareup/okhttp/internal/framed/h;->d()I

    move-result p1

    if-ltz p1, :cond_7

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->d:Lcom/squareup/okhttp/internal/framed/c$a;

    invoke-virtual {p3}, Lcom/squareup/okhttp/internal/framed/h;->d()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/c$a;->g(I)V

    :cond_7
    return-void

    :cond_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private q(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 5

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    int-to-long v1, p2

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    invoke-interface {p1, p4, v1, v2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    return-void

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, p3

    const-string p1, "windowSizeIncrement was 0"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, p3

    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    const-wide/16 v3, 0x9

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/d;->d(Lokio/BufferedSource;)I

    move-result v2

    if-ltz v2, :cond_1

    const/16 v3, 0x4000

    if-gt v2, v3, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->b()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->b()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v1, v4, v2, v0, v3}, Lcom/squareup/okhttp/internal/framed/d$b;->b(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->q(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->d(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->k(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->n(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->p(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->o(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->m(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->i(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/d$c;->b(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    :goto_0
    return v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "FRAME_SIZE_ERROR: %s"

    invoke-static {p1, v1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->c:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/d$c;->a:Lokio/BufferedSource;

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->a()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v2

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->b()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->b()Ljava/util/logging/Logger;

    move-result-object v3

    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "<< CONNECTION %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/d;->a()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "Expected a connection header but was %s"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/d;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
