.class abstract Lorg/jsoup/helper/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jsoup/Connection$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field a:Ljava/net/URL;

.field b:Lorg/jsoup/Connection$Method;

.field c:Ljava/util/Map;

.field d:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/b$b;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/b$b;->d:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/b$a;)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/helper/b$b;-><init>()V

    return-void
.end method

.method private A(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/helper/b$b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static F([B)Z
    .locals 8

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xef

    if-ne v0, v4, :cond_2

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xbb

    if-ne v0, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xbf

    if-ne v4, v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    array-length v0, p0

    :goto_3
    if-ge v3, v0, :cond_9

    aget-byte v4, p0, v3

    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_3

    goto :goto_5

    :cond_3
    and-int/lit16 v5, v4, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_4

    add-int/lit8 v4, v3, 0x1

    goto :goto_4

    :cond_4
    and-int/lit16 v5, v4, 0xf0

    const/16 v7, 0xe0

    if-ne v5, v7, :cond_5

    add-int/lit8 v4, v3, 0x2

    goto :goto_4

    :cond_5
    and-int/lit16 v4, v4, 0xf8

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_8

    add-int/lit8 v4, v3, 0x3

    :cond_6
    :goto_4
    if-ge v3, v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, p0, v3

    and-int/2addr v5, v6

    const/16 v7, 0x80

    if-eq v5, v7, :cond_6

    return v2

    :cond_7
    :goto_5
    add-int/2addr v3, v1

    goto :goto_3

    :cond_8
    return v2

    :cond_9
    return v1
.end method

.method private G(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 3

    invoke-static {p1}, Le10/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/helper/b$b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Le10/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static z(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/b$b;->F([B)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object p0
.end method


# virtual methods
.method public B(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Cookie name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/helper/b$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$b;->E(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public D(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Header name must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/jsoup/helper/b$b;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-static {p1, v0}, Lorg/jsoup/helper/c;->i(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public E(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/jsoup/helper/b$b;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/b$b;->a:Ljava/net/URL;

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 1

    const-string v0, "Cookie name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cookie value must not be null"

    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/helper/b$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public k()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/b$b;->d:Ljava/util/Map;

    return-object v0
.end method

.method public method()Lorg/jsoup/Connection$Method;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/b$b;->b:Lorg/jsoup/Connection$Method;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 1

    const-string v0, "Header name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/jsoup/helper/b$b;->G(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jsoup/helper/b$b;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public p(Ljava/net/URL;)Lorg/jsoup/Connection$a;
    .locals 1

    const-string v0, "URL must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/helper/b$b;->a:Ljava/net/URL;

    return-object p0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 1

    const-string v0, "Header name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$b;->n(Ljava/lang/String;)Lorg/jsoup/Connection$a;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/helper/b$b;->y(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    return-object p0
.end method

.method public r(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;
    .locals 1

    const-string v0, "Method must not be null"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/helper/b$b;->b:Lorg/jsoup/Connection$Method;

    return-object p0
.end method

.method public s(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Header name must not be empty"

    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/jsoup/helper/b$b;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public u()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/b$b;->c:Ljava/util/Map;

    return-object v0
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 2

    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$b;->E(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/jsoup/helper/b$b;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p2}, Lorg/jsoup/helper/b$b;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
