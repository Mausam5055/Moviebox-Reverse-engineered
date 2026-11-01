.class public Lcom/transsion/transfer/androidasync/http/f0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/b0;


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Lcom/transsion/transfer/androidasync/j;

.field c:Lcom/transsion/transfer/androidasync/n;

.field d:Ljava/lang/String;

.field e:Lcom/transsion/transfer/androidasync/http/HybiParser;

.field f:Lbv/a;

.field private g:Lcom/transsion/transfer/androidasync/http/b0$c;

.field private h:Lbv/d;

.field private i:Lcom/transsion/transfer/androidasync/http/b0$b;


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 4

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getSocket()Lcom/transsion/transfer/androidasync/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/http/f0;-><init>(Lcom/transsion/transfer/androidasync/j;)V

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/http/f0;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v1

    const-string v2, "Origin"

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0x65

    invoke-interface {p2, v1}, Lcom/transsion/transfer/androidasync/http/server/d;->c(I)Lcom/transsion/transfer/androidasync/http/server/d;

    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/d;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v1

    const-string v2, "WebSocket"

    const-string v3, "Upgrade"

    invoke-virtual {v1, v3, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/d;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2, v3}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/d;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v2, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Protocol"

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/d;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    :cond_0
    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/d;->x()V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/transsion/transfer/androidasync/http/f0;->N(ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/androidasync/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    new-instance v0, Lcom/transsion/transfer/androidasync/n;

    invoke-direct {v0, p1}, Lcom/transsion/transfer/androidasync/n;-><init>(Lcom/transsion/transfer/androidasync/s;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->c:Lcom/transsion/transfer/androidasync/n;

    return-void
.end method

.method public static varargs C(Lcom/transsion/transfer/androidasync/http/j;[Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/transfer/androidasync/http/f0;->O(Ljava/util/UUID;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    const-string v2, "Sec-WebSocket-Key"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    const-string v1, "Sec-WebSocket-Extensions"

    const-string v2, "x-webkit-deflate-frame"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    const-string v1, "Connection"

    const-string v2, "Upgrade"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    const-string v1, "websocket"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const-string v4, "Sec-WebSocket-Protocol"

    invoke-virtual {v0, v4, v3}, Lcom/transsion/transfer/androidasync/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Pragma"

    const-string v1, "no-cache"

    invoke-virtual {v0, p1, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    const-string p1, "Cache-Control"

    invoke-virtual {v0, p1, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object p1

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object p0

    const-string p1, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.15 Safari/537.36"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    :cond_1
    return-void
.end method

.method public static F(Lcom/transsion/transfer/androidasync/http/Headers;Lcom/transsion/transfer/androidasync/http/k;)Lcom/transsion/transfer/androidasync/http/b0;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/k;->b()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/k;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v1

    const-string v2, "Upgrade"

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "websocket"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/k;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string v2, "Sec-WebSocket-Key"

    invoke-virtual {p0, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/transfer/androidasync/http/f0;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "Sec-WebSocket-Extensions"

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    const-string v1, "x-webkit-deflate-frame"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v0

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Lcom/transsion/transfer/androidasync/http/f0;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/k;->z()Lcom/transsion/transfer/androidasync/j;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/transfer/androidasync/http/f0;-><init>(Lcom/transsion/transfer/androidasync/j;)V

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/k;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object p1

    const-string v2, "Sec-WebSocket-Protocol"

    invoke-virtual {p1, v2}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/transsion/transfer/androidasync/http/f0;->d:Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Lcom/transsion/transfer/androidasync/http/f0;->N(ZZ)V

    return-object v1
.end method

.method private synthetic H(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->c:Lcom/transsion/transfer/androidasync/n;

    new-instance v1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/f0;->e:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {v2, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->G(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/n;->l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    return-void
.end method

.method private synthetic K([B)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->c:Lcom/transsion/transfer/androidasync/n;

    new-instance v1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/f0;->e:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {v2, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->t([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/n;->l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    return-void
.end method

.method private synthetic L(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->c:Lcom/transsion/transfer/androidasync/n;

    new-instance v1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/f0;->e:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {v2, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->s(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/n;->l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    return-void
.end method

.method private N(ZZ)V
    .locals 2

    new-instance v0, Lcom/transsion/transfer/androidasync/http/f0$a;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/http/f0$a;-><init>(Lcom/transsion/transfer/androidasync/http/f0;Lcom/transsion/transfer/androidasync/p;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->e:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->L(Z)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->e:Lcom/transsion/transfer/androidasync/http/HybiParser;

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->K(Z)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->resume()V

    :cond_0
    return-void
.end method

.method private static O(Ljava/util/UUID;)[B
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    const/4 p0, 0x2

    new-array p0, p0, [J

    const/4 v6, 0x0

    aput-wide v2, p0, v6

    const/4 v2, 0x1

    aput-wide v4, p0, v2

    invoke-virtual {v1, p0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    return-object v0
.end method

.method public static synthetic f(Lcom/transsion/transfer/androidasync/http/f0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/f0;->L(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/transfer/androidasync/http/f0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/f0;->H(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/transfer/androidasync/http/f0;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/f0;->K([B)V

    return-void
.end method

.method static bridge synthetic k(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$a;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic m(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/f0;->i:Lcom/transsion/transfer/androidasync/http/b0$b;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/j;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/transsion/transfer/androidasync/http/f0;)Lcom/transsion/transfer/androidasync/http/b0$c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/f0;->g:Lcom/transsion/transfer/androidasync/http/b0$c;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/transsion/transfer/androidasync/http/f0;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/f0;->y(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    return-void
.end method

.method private static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private y(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/f0;->isPaused()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->a:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->a:Ljava/util/LinkedList;

    :cond_3
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/f0;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/transsion/transfer/androidasync/http/c0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/transfer/androidasync/http/c0;-><init>(Lcom/transsion/transfer/androidasync/http/f0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    return-void
.end method

.method public G(Lcom/transsion/transfer/androidasync/http/b0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->i:Lcom/transsion/transfer/androidasync/http/b0$b;

    return-void
.end method

.method public I()Lbv/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->h:Lbv/d;

    return-object v0
.end method

.method public J(Lcom/transsion/transfer/androidasync/http/b0$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->g:Lcom/transsion/transfer/androidasync/http/b0$c;

    return-void
.end method

.method public M([B)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/f0;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/transsion/transfer/androidasync/http/d0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/transfer/androidasync/http/d0;-><init>(Lcom/transsion/transfer/androidasync/http/f0;[B)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    return-void
.end method

.method public a()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/j;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->d()V

    return-void
.end method

.method public i()Lbv/j;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->c:Lcom/transsion/transfer/androidasync/n;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/n;->i()Lbv/j;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    move-result v0

    return v0
.end method

.method public l(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->l()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/f0;->M([B)V

    return-void
.end method

.method public o(Lbv/j;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->c:Lcom/transsion/transfer/androidasync/n;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/n;->o(Lbv/j;)V

    return-void
.end method

.method public p(Lbv/a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/f0;->b:Lcom/transsion/transfer/androidasync/j;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->resume()V

    return-void
.end method

.method public s(Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->f:Lbv/a;

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/f0;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/transsion/transfer/androidasync/http/e0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/transfer/androidasync/http/e0;-><init>(Lcom/transsion/transfer/androidasync/http/f0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    return-void
.end method

.method public t(Lbv/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/f0;->h:Lbv/d;

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
