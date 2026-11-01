.class final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;,
        Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;
    }
.end annotation


# static fields
.field static final e:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lcom/mbridge/msdk/thrid/okio/e;

.field private final b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;

.field private final c:Z

.field final d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/mbridge/msdk/thrid/okio/e;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    iput-boolean p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->c:Z

    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;

    invoke-direct {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;-><init>(Lcom/mbridge/msdk/thrid/okio/e;)V

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;

    new-instance p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/d$a;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/d$a;-><init>(ILcom/mbridge/msdk/thrid/okio/s;)V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/d$a;

    return-void
.end method

.method static a(IBS)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method static a(Lcom/mbridge/msdk/thrid/okio/e;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;

    iput p1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->e:I

    iput p1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->b:I

    iput-short p2, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->f:S

    iput-byte p3, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->c:B

    iput p4, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->d:I

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/d$a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/d$a;->f()V

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/d$a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/d$a;->c()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

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

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v3}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    invoke-interface {p1, p2, v0, v3, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;->a(IIIZ)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    and-int/lit8 v2, p3, 0x20

    if-nez v2, :cond_2

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    invoke-static {p2, p3, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(IBS)I

    move-result p2

    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {p1, v1, p4, p3, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;->a(ZILcom/mbridge/msdk/thrid/okio/e;I)V

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    int-to-long p2, v0

    invoke-interface {p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/e;->skip(J)V

    return-void

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private b(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-lt p2, v1, :cond_3

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {p4}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

    move-result p4

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v2}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

    move-result v2

    sub-int/2addr p2, v1

    invoke-static {v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->a(I)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object p3, Lcom/mbridge/msdk/thrid/okio/f;->e:Lcom/mbridge/msdk/thrid/okio/f;

    if-lez p2, :cond_0

    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    int-to-long v2, p2

    invoke-interface {p3, v2, v3}, Lcom/mbridge/msdk/thrid/okio/e;->b(J)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object p3

    :cond_0
    invoke-interface {p1, p4, v1, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;->a(ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;Lcom/mbridge/msdk/thrid/okio/f;)V

    return-void

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private c(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(ISBI)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    invoke-interface {p1, v1, p4, p3, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;->a(ZIILjava/util/List;)V

    return-void

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private d(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    if-nez p4, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {p2}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

    move-result p2

    iget-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {p4}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

    move-result p4

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1, v0, p2, p4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;->a(ZII)V

    return-void

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_PING length != 8: %s"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private e(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;I)V

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, p3

    const-string p1, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private f(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v1}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(ISBI)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p4, v1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;->a(IILjava/util/List;)V

    return-void

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private g(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {p2}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

    move-result p2

    invoke-static {p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->a(I)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p4, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;->a(ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private h(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_c

    and-int/2addr p3, v0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;->a()V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_b

    new-instance p3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    invoke-direct {p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;-><init>()V

    move p4, v1

    :goto_0
    if-ge p4, p2, :cond_a

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v2}, Lcom/mbridge/msdk/thrid/okio/e;->readShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v3}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

    move-result v3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eq v2, v4, :cond_6

    if-eq v2, v5, :cond_4

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_3

    const v4, 0xffffff

    if-gt v3, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_4
    if-ltz v3, :cond_5

    const/4 v2, 0x7

    goto :goto_1

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_6
    move v2, v5

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_9

    if-ne v3, v0, :cond_8

    goto :goto_1

    :cond_8
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_1
    invoke-virtual {p3, v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;->a(II)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/m;

    add-int/lit8 p4, p4, 0x6

    goto :goto_0

    :cond_a
    invoke-interface {p1, v1, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;->a(ZLcom/mbridge/msdk/thrid/okhttp/internal/http2/m;)V

    return-void

    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private i(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {p2}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

    move-result p2

    int-to-long v1, p2

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    invoke-interface {p1, p4, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;->a(IJ)V

    return-void

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, p3

    const-string p1, "windowSizeIncrement was 0"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, p3

    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->c:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(ZLcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Required SETTINGS preface not received"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->a:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okio/f;->e()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v3, v4}, Lcom/mbridge/msdk/thrid/okio/e;->b(J)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object p1

    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->e:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okio/f;->b()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v4, "<< CONNECTION %s"

    invoke-static {v4, v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2, p1}, Lcom/mbridge/msdk/thrid/okio/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okio/f;->h()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public a(ZLcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    const-wide/16 v3, 0x9

    invoke-interface {v2, v3, v4}, Lcom/mbridge/msdk/thrid/okio/e;->e(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-static {v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(Lcom/mbridge/msdk/thrid/okio/e;)I

    move-result v2

    if-ltz v2, :cond_3

    const/16 v3, 0x4000

    if-gt v2, v3, :cond_3

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v3}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "Expected a SETTINGS frame but was %s"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v0, v4

    sget-object v4, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->e:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1, v0, v2, v3, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    packed-switch v3, :pswitch_data_0

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lcom/mbridge/msdk/thrid/okio/e;->skip(J)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->i(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->b(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->d(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->f(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->h(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->g(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->e(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->c(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$b;IBI)V

    :goto_1
    return v1

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "FRAME_SIZE_ERROR: %s"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

    nop

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

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/s;->close()V

    return-void
.end method
