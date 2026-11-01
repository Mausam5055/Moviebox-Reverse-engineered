.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/mbridge/msdk/thrid/okio/f;

.field private static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x1

    const-string v1, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object v1

    sput-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->a:Lcom/mbridge/msdk/thrid/okio/f;

    const-string v10, "WINDOW_UPDATE"

    const-string v11, "CONTINUATION"

    const-string v2, "DATA"

    const-string v3, "HEADERS"

    const-string v4, "PRIORITY"

    const-string v5, "RST_STREAM"

    const-string v6, "SETTINGS"

    const-string v7, "PUSH_PROMISE"

    const-string v8, "PING"

    const-string v9, "GOAWAY"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b:[Ljava/lang/String;

    const/16 v1, 0x40

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->c:[Ljava/lang/String;

    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    array-length v4, v3

    const/16 v5, 0x20

    if-ge v2, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const-string v4, "%8s"

    invoke-static {v4, v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x30

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->c:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v1

    const-string v3, "END_STREAM"

    aput-object v3, v2, v0

    filled-new-array {v0}, [I

    move-result-object v3

    const-string v4, "PADDED"

    const/16 v6, 0x8

    aput-object v4, v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|PADDED"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x9

    aput-object v4, v2, v8

    const-string v4, "END_HEADERS"

    const/4 v8, 0x4

    aput-object v4, v2, v8

    const-string v4, "PRIORITY"

    aput-object v4, v2, v5

    const-string v4, "END_HEADERS|PRIORITY"

    const/16 v9, 0x24

    aput-object v4, v2, v9

    filled-new-array {v8, v5, v9}, [I

    move-result-object v2

    move v4, v1

    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    aget v5, v2, v4

    aget v8, v3, v1

    sget-object v9, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->c:[Ljava/lang/String;

    or-int v10, v8, v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v9, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x7c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v13, v9, v5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    or-int/2addr v10, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v9, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v5, v9, v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    add-int/2addr v4, v0

    goto :goto_1

    :cond_1
    :goto_2
    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    :cond_2
    add-int/2addr v1, v0

    goto :goto_2

    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(BB)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->c:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    const-string p0, "HEADERS"

    const-string p1, "PUSH_PROMISE"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez p0, :cond_3

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_3

    const-string p0, "PRIORITY"

    const-string p1, "COMPRESSED"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    const/4 p0, 0x1

    if-ne p1, p0, :cond_5

    const-string p0, "ACK"

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_1
    return-object p0

    :cond_6
    sget-object p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge p3, v3, :cond_0

    aget-object v2, v2, p3

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "0x%02x"

    invoke-static {v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p3, p4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->a(BB)Ljava/lang/String;

    move-result-object p3

    if-eqz p0, :cond_1

    const-string p0, "<<"

    goto :goto_1

    :cond_1
    const-string p0, ">>"

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x5

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p0, p4, v0

    aput-object p1, p4, v1

    const/4 p0, 0x2

    aput-object p2, p4, p0

    const/4 p0, 0x3

    aput-object v2, p4, p0

    const/4 p0, 0x4

    aput-object p3, p4, p0

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p0, p4}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
