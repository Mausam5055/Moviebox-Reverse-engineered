.class public final Lbi/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbi/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbi/a;

    invoke-direct {v0}, Lbi/a;-><init>()V

    sput-object v0, Lbi/a;->a:Lbi/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/io/IOException;)I
    .locals 1

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_24

    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_0

    const/16 p1, 0x3f0

    goto/16 :goto_1

    :cond_0
    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_1

    const/16 p1, 0x3ed

    goto/16 :goto_1

    :cond_1
    instance-of p1, p2, Ljava/net/NoRouteToHostException;

    if-eqz p1, :cond_2

    const/16 p1, 0x3ee

    goto/16 :goto_1

    :cond_2
    instance-of p1, p2, Ljava/net/ProtocolException;

    if-eqz p1, :cond_3

    const/16 p1, 0x3ef

    goto/16 :goto_1

    :cond_3
    instance-of p1, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p1, :cond_4

    const/16 p1, 0x3f1

    goto/16 :goto_1

    :cond_4
    instance-of p1, p2, Ljava/net/ConnectException;

    if-eqz p1, :cond_5

    const/16 p1, 0x3f3

    goto/16 :goto_1

    :cond_5
    instance-of p1, p2, Ljava/net/BindException;

    if-eqz p1, :cond_6

    const/16 p1, 0x415

    goto/16 :goto_1

    :cond_6
    instance-of p1, p2, Ljava/net/PortUnreachableException;

    if-eqz p1, :cond_7

    const/16 p1, 0x3f4

    goto/16 :goto_1

    :cond_7
    instance-of p1, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz p1, :cond_8

    const/16 p1, 0x3f5

    goto/16 :goto_1

    :cond_8
    instance-of p1, p2, Ljavax/net/ssl/SSLKeyException;

    if-eqz p1, :cond_9

    const/16 p1, 0x3f6

    goto/16 :goto_1

    :cond_9
    instance-of p1, p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_a

    const/16 p1, 0x3f7

    goto/16 :goto_1

    :cond_a
    instance-of p1, p2, Ljavax/net/ssl/SSLProtocolException;

    if-eqz p1, :cond_b

    const/16 p1, 0x3f8

    goto/16 :goto_1

    :cond_b
    instance-of p1, p2, Lkotlin/io/FileSystemException;

    if-eqz p1, :cond_c

    const/16 p1, 0x3f9

    goto/16 :goto_1

    :cond_c
    instance-of p1, p2, Ljava/io/ObjectStreamException;

    if-eqz p1, :cond_d

    const/16 p1, 0x3fa

    goto/16 :goto_1

    :cond_d
    instance-of p1, p2, Ljava/nio/channels/AsynchronousCloseException;

    if-eqz p1, :cond_e

    const/16 p1, 0x3fb

    goto/16 :goto_1

    :cond_e
    instance-of p1, p2, Ljava/nio/charset/MalformedInputException;

    if-eqz p1, :cond_f

    const/16 p1, 0x413

    goto/16 :goto_1

    :cond_f
    instance-of p1, p2, Ljava/nio/charset/UnmappableCharacterException;

    if-eqz p1, :cond_10

    const/16 p1, 0x414

    goto/16 :goto_1

    :cond_10
    instance-of p1, p2, Ljava/util/jar/JarException;

    if-eqz p1, :cond_11

    const/16 p1, 0x3fe

    goto/16 :goto_1

    :cond_11
    instance-of p1, p2, Ljava/io/CharConversionException;

    if-eqz p1, :cond_12

    const/16 p1, 0x3ff

    goto/16 :goto_1

    :cond_12
    instance-of p1, p2, Landroid/util/Base64DataException;

    if-eqz p1, :cond_13

    const/16 p1, 0x400

    goto/16 :goto_1

    :cond_13
    instance-of p1, p2, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz p1, :cond_14

    const/16 p1, 0x401

    goto/16 :goto_1

    :cond_14
    instance-of p1, p2, Ljava/io/EOFException;

    if-eqz p1, :cond_15

    const/16 p1, 0x403

    goto/16 :goto_1

    :cond_15
    instance-of p1, p2, Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;

    if-eqz p1, :cond_16

    const/16 p1, 0x404

    goto/16 :goto_1

    :cond_16
    instance-of p1, p2, Ljava/nio/channels/FileLockInterruptionException;

    if-eqz p1, :cond_17

    const/16 p1, 0x405

    goto/16 :goto_1

    :cond_17
    instance-of p1, p2, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_18

    const/16 p1, 0x406

    goto :goto_1

    :cond_18
    instance-of p1, p2, Ljava/net/HttpRetryException;

    if-eqz p1, :cond_19

    const/16 p1, 0x407

    goto :goto_1

    :cond_19
    instance-of p1, p2, Ljava/util/InvalidPropertiesFormatException;

    if-eqz p1, :cond_1a

    const/16 p1, 0x409

    goto :goto_1

    :cond_1a
    instance-of p1, p2, Landroid/util/MalformedJsonException;

    if-eqz p1, :cond_1b

    const/16 p1, 0x40a

    goto :goto_1

    :cond_1b
    instance-of p1, p2, Ljava/net/MalformedURLException;

    if-eqz p1, :cond_1c

    const/16 p1, 0x40b

    goto :goto_1

    :cond_1c
    instance-of p1, p2, Lokhttp3/internal/http2/StreamResetException;

    if-eqz p1, :cond_1d

    const/16 p1, 0x40d

    goto :goto_1

    :cond_1d
    instance-of p1, p2, Ljava/io/SyncFailedException;

    if-eqz p1, :cond_1e

    const/16 p1, 0x40e

    goto :goto_1

    :cond_1e
    instance-of p1, p2, Ljava/io/UTFDataFormatException;

    if-eqz p1, :cond_1f

    const/16 p1, 0x40f

    goto :goto_1

    :cond_1f
    instance-of p1, p2, Ljava/net/UnknownServiceException;

    if-eqz p1, :cond_20

    const/16 p1, 0x410

    goto :goto_1

    :cond_20
    instance-of p1, p2, Ljava/io/UnsupportedEncodingException;

    if-eqz p1, :cond_21

    const/16 p1, 0x412

    goto :goto_1

    :cond_21
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_22
    const/4 p1, 0x0

    :goto_0
    const-string p2, "Canceled"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/16 p1, 0x41a

    goto :goto_1

    :cond_23
    move p1, v0

    :cond_24
    :goto_1
    return p1
.end method

.method public final b(ILorg/chromium/net/NetworkException;Z)I
    .locals 2

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_16

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    const/16 p1, 0x3ed

    goto/16 :goto_b

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    const/16 p1, 0x3fc

    goto/16 :goto_b

    :cond_4
    :goto_2
    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    const/16 p1, 0x3f0

    goto/16 :goto_b

    :cond_6
    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x6

    if-ne p2, v1, :cond_8

    const/16 p1, 0x3f5

    goto/16 :goto_b

    :cond_8
    :goto_4
    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    const/16 p1, 0x419

    goto :goto_b

    :cond_a
    :goto_5
    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_c

    const/16 p1, 0x416

    goto :goto_b

    :cond_c
    :goto_6
    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x7

    if-ne p2, v1, :cond_e

    const/16 p1, 0x417

    goto :goto_b

    :cond_e
    :goto_7
    if-nez p1, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0x8

    if-ne p2, v1, :cond_10

    const/16 p1, 0x418

    goto :goto_b

    :cond_10
    :goto_8
    if-nez p1, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0x9

    if-ne p2, v1, :cond_12

    const/16 p1, 0x3ee

    goto :goto_b

    :cond_12
    :goto_9
    if-nez p1, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_14

    const/16 p1, 0x3ef

    goto :goto_b

    :cond_14
    :goto_a
    if-eqz p3, :cond_15

    const/16 p1, 0x41a

    goto :goto_b

    :cond_15
    move p1, v0

    :cond_16
    :goto_b
    return p1
.end method
