.class public Lorg/jsoup/helper/b$d;
.super Lorg/jsoup/helper/b$b;

# interfaces
.implements Lorg/jsoup/Connection$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field private static o:Ljavax/net/ssl/SSLSocketFactory;

.field private static final p:Ljava/util/regex/Pattern;


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Ljava/io/InputStream;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Lorg/jsoup/Connection$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(application|text)/\\w*\\+?xml.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/b$d;->p:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/b$b;-><init>(Lorg/jsoup/helper/b$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/helper/b$d;->k:Z

    iput-boolean v0, p0, Lorg/jsoup/helper/b$d;->l:Z

    iput v0, p0, Lorg/jsoup/helper/b$d;->m:I

    return-void
.end method

.method private constructor <init>(Lorg/jsoup/helper/b$d;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jsoup/helper/b$b;-><init>(Lorg/jsoup/helper/b$a;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/helper/b$d;->k:Z

    iput-boolean v1, p0, Lorg/jsoup/helper/b$d;->l:Z

    iput v1, p0, Lorg/jsoup/helper/b$d;->m:I

    if-eqz p1, :cond_1

    iget v2, p1, Lorg/jsoup/helper/b$d;->m:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/helper/b$d;->m:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/jsoup/helper/b$d;->f()Ljava/net/URL;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Too many redirects occurred trying to load URL %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method private static I(Lorg/jsoup/Connection$b;)Ljava/net/HttpURLConnection;
    .locals 5

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->i()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    move-result-object v0

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->i()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-interface {p0}, Lorg/jsoup/Connection$a;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->timeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->timeout()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->g()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->e()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/jsoup/helper/b$d;->O()V

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v2, Lorg/jsoup/helper/b$d;->o:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-static {}, Lorg/jsoup/helper/b$d;->M()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->method()Lorg/jsoup/Connection$Method;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->k()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "Cookie"

    invoke-static {p0}, Lorg/jsoup/helper/b$d;->N(Lorg/jsoup/Connection$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->u()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private static J(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;
    .locals 5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static K(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/b$d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jsoup/helper/b$d;->L(Lorg/jsoup/Connection$b;Lorg/jsoup/helper/b$d;)Lorg/jsoup/helper/b$d;

    move-result-object p0

    return-object p0
.end method

.method static L(Lorg/jsoup/Connection$b;Lorg/jsoup/helper/b$d;)Lorg/jsoup/helper/b$d;
    .locals 9

    const-string v0, "Content-Encoding"

    const-string v1, "Location"

    const-string v2, "Request must not be null"

    invoke-static {p0, v2}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    const-string p1, "Only http & https protocols supported"

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->method()Lorg/jsoup/Connection$Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v2

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->v()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot set a request body for HTTP method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/jsoup/Connection$a;->method()Lorg/jsoup/Connection$Method;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_5

    if-eqz v2, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {p0}, Lorg/jsoup/helper/b$d;->R(Lorg/jsoup/Connection$b;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {p0}, Lorg/jsoup/helper/b$d;->S(Lorg/jsoup/Connection$b;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    :goto_2
    move-object v2, v6

    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-static {p0}, Lorg/jsoup/helper/b$d;->I(Lorg/jsoup/Connection$b;)Ljava/net/HttpURLConnection;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {p0, v5, v2}, Lorg/jsoup/helper/b$d;->U(Lorg/jsoup/Connection$b;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_a

    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    new-instance v5, Lorg/jsoup/helper/b$d;

    invoke-direct {v5, p1}, Lorg/jsoup/helper/b$d;-><init>(Lorg/jsoup/helper/b$d;)V

    invoke-direct {v5, v3, p1}, Lorg/jsoup/helper/b$d;->T(Ljava/net/HttpURLConnection;Lorg/jsoup/Connection$c;)V

    iput-object p0, v5, Lorg/jsoup/helper/b$d;->n:Lorg/jsoup/Connection$b;

    invoke-virtual {v5, v1}, Lorg/jsoup/helper/b$d;->s(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->l()Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x133

    if-eq v2, p1, :cond_8

    sget-object p1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    invoke-interface {p0, p1}, Lorg/jsoup/Connection$a;->r(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    invoke-interface {p0, v6}, Lorg/jsoup/Connection$b;->d(Ljava/lang/String;)Lorg/jsoup/Connection$b;

    const-string p1, "Content-Type"

    invoke-interface {p0, p1}, Lorg/jsoup/Connection$a;->n(Ljava/lang/String;)Lorg/jsoup/Connection$a;

    :cond_8
    invoke-virtual {v5, v1}, Lorg/jsoup/helper/b$d;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "http:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/helper/c;->n(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/b;->f(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/jsoup/Connection$a;->p(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    iget-object p1, v5, Lorg/jsoup/helper/b$b;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/jsoup/Connection$a;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_5

    :cond_a
    invoke-static {p0, v5}, Lorg/jsoup/helper/b$d;->L(Lorg/jsoup/Connection$b;Lorg/jsoup/helper/b$d;)Lorg/jsoup/helper/b$d;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 p1, 0xc8

    if-lt v2, p1, :cond_c

    const/16 p1, 0x190

    if-lt v2, p1, :cond_d

    :cond_c
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->b()Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_d
    invoke-virtual {v5}, Lorg/jsoup/helper/b$d;->H()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->t()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "text/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lorg/jsoup/helper/b$d;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    new-instance v0, Lorg/jsoup/UnsupportedMimeTypeException;

    const-string v1, "Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml"

    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_6
    if-eqz p1, :cond_10

    sget-object v1, Lorg/jsoup/helper/b$d;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_10

    instance-of p1, p0, Lorg/jsoup/helper/b$c;

    if-eqz p1, :cond_10

    move-object p1, p0

    check-cast p1, Lorg/jsoup/helper/b$c;

    invoke-static {p1}, Lorg/jsoup/helper/b$c;->H(Lorg/jsoup/helper/b$c;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {}, Lorg/jsoup/parser/e;->g()Lorg/jsoup/parser/e;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/jsoup/Connection$b;->o(Lorg/jsoup/parser/e;)Lorg/jsoup/Connection$b;

    :cond_10
    iget-object p1, v5, Lorg/jsoup/helper/b$d;->j:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/helper/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result p1

    if-eqz p1, :cond_14

    invoke-interface {p0}, Lorg/jsoup/Connection$a;->method()Lorg/jsoup/Connection$Method;

    move-result-object p1

    sget-object v1, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    if-eq p1, v1, :cond_14

    iput-object v6, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_7

    :cond_11
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_7
    iput-object p1, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    const-string p1, "gzip"

    invoke-virtual {v5, v0, p1}, Lorg/jsoup/helper/b$d;->C(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    iget-object v0, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    goto :goto_8

    :cond_12
    const-string p1, "deflate"

    invoke-virtual {v5, v0, p1}, Lorg/jsoup/helper/b$d;->C(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Ljava/util/zip/InflaterInputStream;

    iget-object v0, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object p1, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    :cond_13
    :goto_8
    iget-object p1, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->w()I

    move-result v0

    const v1, 0x8000

    invoke-static {p1, v1, v0}, Le10/a;->k(Ljava/io/InputStream;II)Le10/a;

    move-result-object p1

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->timeout()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v7, v8, v0, v1}, Le10/a;->i(JJ)Le10/a;

    move-result-object p0

    iput-object p0, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    goto :goto_9

    :cond_14
    invoke-static {}, Lorg/jsoup/helper/a;->b()Ljava/nio/ByteBuffer;

    move-result-object p0

    iput-object p0, v5, Lorg/jsoup/helper/b$d;->g:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    iput-boolean v4, v5, Lorg/jsoup/helper/b$d;->k:Z

    return-object v5

    :cond_15
    :try_start_1
    new-instance p1, Lorg/jsoup/HttpStatusException;

    const-string v0, "HTTP error fetching URL"

    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v2, p0}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0
.end method

.method private static M()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    new-instance v0, Lorg/jsoup/helper/b$d$a;

    invoke-direct {v0}, Lorg/jsoup/helper/b$d$a;-><init>()V

    return-object v0
.end method

.method private static N(Lorg/jsoup/Connection$b;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/jsoup/helper/c;->o()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/jsoup/Connection$a;->k()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized O()V
    .locals 5

    const-class v0, Lorg/jsoup/helper/b$d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/jsoup/helper/b$d;->o:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    new-instance v1, Lorg/jsoup/helper/b$d$b;

    invoke-direct {v1}, Lorg/jsoup/helper/b$d$b;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Lorg/jsoup/helper/b$d;->o:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t create unsecure trust manager"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private Q()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-object v1, p0, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private static R(Lorg/jsoup/Connection$b;)V
    .locals 3

    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    move-result-object v0

    invoke-static {}, Lorg/jsoup/helper/c;->o()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/jsoup/Connection$a;->p(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static S(Lorg/jsoup/Connection$b;)Ljava/lang/String;
    .locals 4

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Lorg/jsoup/Connection$a;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/jsoup/helper/b;->c(Lorg/jsoup/Connection$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/jsoup/helper/a;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multipart/form-data; boundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/jsoup/Connection$a;->q(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/jsoup/Connection$a;->q(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private T(Ljava/net/HttpURLConnection;Lorg/jsoup/Connection$c;)V
    .locals 1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/b$b;->b:Lorg/jsoup/Connection$Method;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/b$b;->a:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lorg/jsoup/helper/b$d;->e:I

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/b$d;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/b$d;->j:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/helper/b$d;->J(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$d;->P(Ljava/util/Map;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/jsoup/Connection$a;->k()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jsoup/helper/b$d;->B(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/jsoup/helper/b$b;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static U(Lorg/jsoup/Connection$b;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "--"

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, "\r\n"

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->v()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Lorg/jsoup/Connection$b;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-void

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/b$b;->B(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic C(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/b$b;->C(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic D(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/b$b;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic E(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/b$b;->E(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/b$d;->j:Ljava/lang/String;

    return-object v0
.end method

.method P(Ljava/util/Map;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, "Set-Cookie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Lorg/jsoup/parser/g;

    invoke-direct {v4, v3}, Lorg/jsoup/parser/g;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v4, v3}, Lorg/jsoup/parser/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v4, v5}, Lorg/jsoup/parser/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p0, v3, v4}, Lorg/jsoup/helper/b$b;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/jsoup/helper/b$b;->y(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_2

    :cond_5
    return-void
.end method

.method public bridge synthetic f()Ljava/net/URL;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/helper/b$b;->f()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/helper/b$b;->k()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public m()Lorg/jsoup/nodes/Document;
    .locals 4

    iget-boolean v0, p0, Lorg/jsoup/helper/b$d;->k:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/helper/b$d;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/jsoup/helper/b$d;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/helper/b$d;->l:Z

    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/helper/b$d;->l:Z

    const-string v1, "Input stream already read and parsed, cannot re-read."

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/helper/b$b;->a:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/helper/b$d;->n:Lorg/jsoup/Connection$b;

    invoke-interface {v3}, Lorg/jsoup/Connection$b;->x()Lorg/jsoup/parser/e;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/helper/a;->e(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->g1()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jsoup/helper/b$d;->l:Z

    invoke-direct {p0}, Lorg/jsoup/helper/b$d;->Q()V

    return-object v0
.end method

.method public bridge synthetic s(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/helper/b$b;->s(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
