.class public final Lcom/squareup/okhttp/internal/http/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/okhttp/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/e$a;
    }
.end annotation


# static fields
.field private static final e:Lokio/ByteString;

.field private static final f:Lokio/ByteString;

.field private static final g:Lokio/ByteString;

.field private static final h:Lokio/ByteString;

.field private static final i:Lokio/ByteString;

.field private static final j:Lokio/ByteString;

.field private static final k:Lokio/ByteString;

.field private static final l:Lokio/ByteString;

.field private static final m:Ljava/util/List;

.field private static final n:Ljava/util/List;

.field private static final o:Ljava/util/List;

.field private static final p:Ljava/util/List;


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/http/n;

.field private final b:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field private c:Lcom/squareup/okhttp/internal/http/g;

.field private d:Lcom/squareup/okhttp/internal/framed/a;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const-string v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/e;->e:Lokio/ByteString;

    const-string v1, "host"

    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lcom/squareup/okhttp/internal/http/e;->f:Lokio/ByteString;

    const-string v2, "keep-alive"

    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    sput-object v2, Lcom/squareup/okhttp/internal/http/e;->g:Lokio/ByteString;

    const-string v3, "proxy-connection"

    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    sput-object v3, Lcom/squareup/okhttp/internal/http/e;->h:Lokio/ByteString;

    const-string v4, "transfer-encoding"

    invoke-static {v4}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    sput-object v4, Lcom/squareup/okhttp/internal/http/e;->i:Lokio/ByteString;

    const-string v5, "te"

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    sput-object v5, Lcom/squareup/okhttp/internal/http/e;->j:Lokio/ByteString;

    const-string v6, "encoding"

    invoke-static {v6}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    sput-object v6, Lcom/squareup/okhttp/internal/http/e;->k:Lokio/ByteString;

    const-string v7, "upgrade"

    invoke-static {v7}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    sput-object v7, Lcom/squareup/okhttp/internal/http/e;->l:Lokio/ByteString;

    sget-object v8, Lcom/squareup/okhttp/internal/framed/b;->e:Lokio/ByteString;

    sget-object v9, Lcom/squareup/okhttp/internal/framed/b;->f:Lokio/ByteString;

    sget-object v10, Lcom/squareup/okhttp/internal/framed/b;->g:Lokio/ByteString;

    sget-object v11, Lcom/squareup/okhttp/internal/framed/b;->h:Lokio/ByteString;

    sget-object v12, Lcom/squareup/okhttp/internal/framed/b;->i:Lokio/ByteString;

    sget-object v13, Lcom/squareup/okhttp/internal/framed/b;->j:Lokio/ByteString;

    const/16 v14, 0xb

    new-array v15, v14, [Lokio/ByteString;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    const/16 v17, 0x1

    aput-object v1, v15, v17

    const/16 v18, 0x2

    aput-object v2, v15, v18

    const/16 v19, 0x3

    aput-object v3, v15, v19

    const/16 v20, 0x4

    aput-object v4, v15, v20

    const/4 v14, 0x5

    aput-object v8, v15, v14

    const/16 v21, 0x6

    aput-object v9, v15, v21

    const/16 v22, 0x7

    aput-object v10, v15, v22

    const/16 v14, 0x8

    aput-object v11, v15, v14

    const/16 v23, 0x9

    aput-object v12, v15, v23

    const/16 v24, 0xa

    aput-object v13, v15, v24

    invoke-static {v15}, Lcom/squareup/okhttp/internal/g;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    sput-object v15, Lcom/squareup/okhttp/internal/http/e;->m:Ljava/util/List;

    const/4 v15, 0x5

    new-array v14, v15, [Lokio/ByteString;

    aput-object v0, v14, v16

    aput-object v1, v14, v17

    aput-object v2, v14, v18

    aput-object v3, v14, v19

    aput-object v4, v14, v20

    invoke-static {v14}, Lcom/squareup/okhttp/internal/g;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    sput-object v14, Lcom/squareup/okhttp/internal/http/e;->n:Ljava/util/List;

    const/16 v14, 0xe

    new-array v14, v14, [Lokio/ByteString;

    aput-object v0, v14, v16

    aput-object v1, v14, v17

    aput-object v2, v14, v18

    aput-object v3, v14, v19

    aput-object v5, v14, v20

    const/4 v15, 0x5

    aput-object v4, v14, v15

    aput-object v6, v14, v21

    aput-object v7, v14, v22

    const/16 v15, 0x8

    aput-object v8, v14, v15

    aput-object v9, v14, v23

    aput-object v10, v14, v24

    const/16 v8, 0xb

    aput-object v11, v14, v8

    const/16 v8, 0xc

    aput-object v12, v14, v8

    const/16 v8, 0xd

    aput-object v13, v14, v8

    invoke-static {v14}, Lcom/squareup/okhttp/internal/g;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/squareup/okhttp/internal/http/e;->o:Ljava/util/List;

    new-array v8, v15, [Lokio/ByteString;

    aput-object v0, v8, v16

    aput-object v1, v8, v17

    aput-object v2, v8, v18

    aput-object v3, v8, v19

    aput-object v5, v8, v20

    const/4 v0, 0x5

    aput-object v4, v8, v0

    aput-object v6, v8, v21

    aput-object v7, v8, v22

    invoke-static {v8}, Lcom/squareup/okhttp/internal/g;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/e;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/http/n;Lcom/squareup/okhttp/internal/framed/FramedConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->a:Lcom/squareup/okhttp/internal/http/n;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/internal/http/n;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/e;->a:Lcom/squareup/okhttp/internal/http/n;

    return-object p0
.end method

.method public static b(Lcom/squareup/okhttp/Request;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/squareup/okhttp/internal/framed/b;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/b;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/squareup/okhttp/internal/framed/b;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/b;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/j;->c(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/squareup/okhttp/internal/framed/b;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/b;->h:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/g;->i(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/squareup/okhttp/internal/framed/b;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/b;->g:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    sget-object v4, Lcom/squareup/okhttp/internal/http/e;->o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/squareup/okhttp/internal/framed/b;

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;)Lcom/squareup/okhttp/Response$Builder;
    .locals 7

    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/framed/b;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/framed/b;->a:Lokio/ByteString;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/okhttp/internal/framed/b;

    iget-object v5, v5, Lcom/squareup/okhttp/internal/framed/b;->b:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/squareup/okhttp/internal/framed/b;->d:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/squareup/okhttp/internal/http/e;->p:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/m;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/m;

    move-result-object p0

    new-instance v1, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/m;->b:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/util/List;)Lcom/squareup/okhttp/Response$Builder;
    .locals 11

    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "HTTP/1.1"

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_5

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/okhttp/internal/framed/b;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/framed/b;->a:Lokio/ByteString;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/okhttp/internal/framed/b;

    iget-object v7, v7, Lcom/squareup/okhttp/internal/framed/b;->b:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    move v8, v4

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    :cond_0
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/squareup/okhttp/internal/framed/b;->d:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v2, v8

    goto :goto_2

    :cond_1
    sget-object v10, Lcom/squareup/okhttp/internal/framed/b;->j:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v3, v8

    goto :goto_2

    :cond_2
    sget-object v10, Lcom/squareup/okhttp/internal/http/e;->n:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v6}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v8}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    :cond_3
    :goto_2
    add-int/lit8 v8, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/m;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/m;

    move-result-object p0

    new-instance v1, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    sget-object v2, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/m;->b:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lcom/squareup/okhttp/Request;)Ljava/util/List;
    .locals 9

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/squareup/okhttp/internal/framed/b;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/b;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/squareup/okhttp/internal/framed/b;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/b;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/j;->c(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/squareup/okhttp/internal/framed/b;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/b;->j:Lokio/ByteString;

    const-string v4, "HTTP/1.1"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/squareup/okhttp/internal/framed/b;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/b;->i:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/g;->i(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/squareup/okhttp/internal/framed/b;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/b;->g:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    sget-object v6, Lcom/squareup/okhttp/internal/http/e;->m:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/squareup/okhttp/internal/framed/b;

    invoke-direct {v7, v5, v6}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/okhttp/internal/framed/b;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/framed/b;->a:Lokio/ByteString;

    invoke-virtual {v8, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/okhttp/internal/framed/b;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/framed/b;->b:Lokio/ByteString;

    invoke-virtual {v8}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/squareup/okhttp/internal/http/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/squareup/okhttp/internal/framed/b;

    invoke-direct {v8, v5, v6}, Lcom/squareup/okhttp/internal/framed/b;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lcom/squareup/okhttp/internal/framed/a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/a;->n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lcom/squareup/okhttp/Request;J)Lokio/Sink;
    .locals 0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/a;->q()Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/a;->q()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    return-void
.end method

.method public openResponseBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 2

    new-instance v0, Lcom/squareup/okhttp/internal/http/e$a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/a;->r()Lokio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/e$a;-><init>(Lcom/squareup/okhttp/internal/http/e;Lokio/Source;)V

    new-instance v1, Lcom/squareup/okhttp/internal/http/i;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/squareup/okhttp/internal/http/i;-><init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public readResponseHeaders()Lcom/squareup/okhttp/Response$Builder;
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d0()Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/a;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/e;->d(Ljava/util/List;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/a;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/e;->e(Ljava/util/List;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setHttpEngine(Lcom/squareup/okhttp/internal/http/g;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/g;

    return-void
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/k;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/a;->q()Lokio/Sink;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/k;->h(Lokio/Sink;)V

    return-void
.end method

.method public writeRequestHeaders(Lcom/squareup/okhttp/Request;)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lcom/squareup/okhttp/internal/framed/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->C()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/g;->q(Lcom/squareup/okhttp/Request;)Z

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->d0()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/e;->b(Lcom/squareup/okhttp/Request;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/e;->f(Lcom/squareup/okhttp/Request;)Ljava/util/List;

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v2, p1, v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->l0(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/a;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/a;->u()Lokio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/g;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->d:Lcom/squareup/okhttp/internal/framed/a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/a;->A()Lokio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/g;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void
.end method
