.class public La5/w0;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;
.implements Lz4/b2;


# static fields
.field private static a:Z

.field public static final b:La5/w0;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La5/w0;

    invoke-direct {v0}, La5/w0;-><init>()V

    sput-object v0, La5/w0;->b:La5/w0;

    const/4 v0, 0x0

    sput-boolean v0, La5/w0;->d:Z

    const-string v0, "fastjson.deserializer.fileRelativePathSupport"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, La5/w0;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, p0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "xml node to string error"

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 p3, 0x1

    const-string v0, "Path deserialize erorr"

    iget-object v1, p1, Ly4/a;->f:Ly4/b;

    const-class v2, Ljava/net/InetSocketAddress;

    const/16 v3, 0xd

    const/16 v4, 0x10

    const/4 v5, 0x2

    const-class v6, Ljava/net/InetAddress;

    const/4 v7, 0x0

    const/16 v8, 0x11

    const/4 v9, 0x0

    if-ne p2, v2, :cond_5

    invoke-interface {v1}, Ly4/b;->q0()I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_0

    invoke-interface {v1}, Ly4/b;->Z()V

    return-object v9

    :cond_0
    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ly4/a;->b(I)V

    :goto_0
    invoke-interface {v1}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v8}, Ly4/b;->c0(I)V

    const-string p3, "address"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, v8}, Ly4/a;->b(I)V

    invoke-virtual {p1, v6}, Ly4/a;->m0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/InetAddress;

    move-object v9, p2

    goto :goto_1

    :cond_1
    const-string p3, "port"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v8}, Ly4/a;->b(I)V

    invoke-interface {v1}, Ly4/b;->q0()I

    move-result p2

    if-ne p2, v5, :cond_2

    invoke-interface {v1}, Ly4/b;->o()I

    move-result p2

    invoke-interface {v1}, Ly4/b;->Z()V

    move v7, p2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "port is not int"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p1, v8}, Ly4/a;->b(I)V

    invoke-virtual {p1}, Ly4/a;->T()Ljava/lang/Object;

    :goto_1
    invoke-interface {v1}, Ly4/b;->q0()I

    move-result p2

    if-ne p2, v4, :cond_4

    invoke-interface {v1}, Ly4/b;->Z()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ly4/a;->b(I)V

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, v9, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object p1

    :cond_5
    iget v2, p1, Ly4/a;->k:I

    if-ne v2, v5, :cond_8

    iput v7, p1, Ly4/a;->k:I

    invoke-virtual {p1, v4}, Ly4/a;->b(I)V

    invoke-interface {v1}, Ly4/b;->q0()I

    move-result v2

    const/4 v4, 0x4

    const-string v10, "syntax error"

    if-ne v2, v4, :cond_7

    const-string v2, "val"

    invoke-interface {v1}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ly4/b;->Z()V

    invoke-virtual {p1, v8}, Ly4/a;->b(I)V

    invoke-virtual {p1}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3}, Ly4/a;->b(I)V

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {p1}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object v2

    :goto_2
    const-class v3, Ljava/util/Currency;

    if-nez v2, :cond_9

    move-object v2, v9

    goto :goto_3

    :cond_9
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_21

    check-cast v2, Ljava/lang/String;

    :goto_3
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_9

    :cond_a
    const-class v4, Ljava/util/UUID;

    if-ne p2, v4, :cond_b

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    :cond_b
    const-class v4, Ljava/net/URI;

    if-ne p2, v4, :cond_c

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1

    :cond_c
    const-class v4, Ljava/net/URL;

    if-ne p2, v4, :cond_d

    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string p3, "create url error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_d
    const-class v4, Ljava/util/regex/Pattern;

    if-ne p2, v4, :cond_e

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1

    :cond_e
    const-class v4, Ljava/util/Locale;

    if-ne p2, v4, :cond_f

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->O0(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    return-object p1

    :cond_f
    const-class v4, Ljava/text/SimpleDateFormat;

    if-ne p2, v4, :cond_10

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-interface {v1}, Ly4/b;->B0()Ljava/util/Locale;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v1}, Ly4/b;->l0()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p1

    :cond_10
    if-eq p2, v6, :cond_1f

    const-class v1, Ljava/net/Inet4Address;

    if-eq p2, v1, :cond_1f

    const-class v1, Ljava/net/Inet6Address;

    if-ne p2, v1, :cond_11

    goto/16 :goto_8

    :cond_11
    const-class v1, Ljava/io/File;

    if-ne p2, v1, :cond_14

    const-string p1, ".."

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_13

    sget-boolean p1, La5/w0;->a:Z

    if-eqz p1, :cond_12

    goto :goto_4

    :cond_12
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "file relative path not support."

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_14
    const-class v1, Ljava/util/TimeZone;

    if-ne p2, v1, :cond_15

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    return-object p1

    :cond_15
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_16

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    :cond_16
    const-class v1, Ljava/lang/Class;

    if-ne p2, v1, :cond_17

    invoke-virtual {p1}, Ly4/a;->m()Ly4/h;

    move-result-object p1

    invoke-virtual {p1}, Ly4/h;->n()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {v2, p1, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->C0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_17
    const-class p1, Ljava/nio/charset/Charset;

    if-ne p2, p1, :cond_18

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    :cond_18
    if-ne p2, v3, :cond_19

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    :cond_19
    const-class p1, Lcom/alibaba/fastjson/JSONPath;

    if-ne p2, p1, :cond_1a

    new-instance p1, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {p1, v2}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1a
    instance-of p1, p2, Ljava/lang/Class;

    const-string v1, "MiscCodec not support "

    if-eqz p1, :cond_1e

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.nio.file.Path"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    :try_start_1
    sget-object p2, La5/w0;->c:Ljava/lang/reflect/Method;

    if-nez p2, :cond_1b

    sget-boolean p2, La5/w0;->d:Z

    if-nez p2, :cond_1b

    const-string p2, "java.nio.file.Paths"

    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->A0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v3, "get"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v7

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, p3

    invoke-virtual {p2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    sput-object p2, La5/w0;->c:Ljava/lang/reflect/Method;

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    goto :goto_7

    :cond_1b
    :goto_5
    sget-object p2, La5/w0;->c:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_1c

    new-array v3, v7, [Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v7

    aput-object v3, v4, p3

    invoke-virtual {p2, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1c
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_7
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    sput-boolean p3, La5/w0;->d:Z

    :cond_1d
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :goto_8
    :try_start_2
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4

    return-object p1

    :catch_4
    move-exception p1

    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string p3, "deserialize inet adress error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_20
    :goto_9
    return-object v9

    :cond_21
    instance-of p1, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_25

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    if-ne p2, v3, :cond_23

    const-string p1, "currency"

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    :cond_22
    const-string p1, "currencyCode"

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    :cond_23
    const-class p1, Ljava/util/Map$Entry;

    if-ne p2, p1, :cond_24

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_24
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/a;->toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_25
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "expect string"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 4

    iget-object p3, p1, La5/o0;->k:La5/j1;

    if-nez p2, :cond_0

    invoke-virtual {p3}, La5/j1;->m0()V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    const-class v0, Ljava/text/SimpleDateFormat;

    const/16 v1, 0x2c

    const/16 v2, 0x7d

    const/16 v3, 0x7b

    if-ne p5, v0, :cond_1

    move-object p5, p2

    check-cast p5, Ljava/text/SimpleDateFormat;

    invoke-virtual {p5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p5

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p3, v0}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p4, :cond_10

    invoke-virtual {p3, v3}, La5/j1;->write(I)V

    sget-object p4, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p3, p4}, La5/j1;->w(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, La5/o0;->B(Ljava/lang/String;)V

    const-string p1, "val"

    invoke-virtual {p3, v1, p1, p5}, La5/j1;->Z(CLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, La5/j1;->write(I)V

    return-void

    :cond_1
    const-class p4, Ljava/lang/Class;

    if-ne p5, p4, :cond_2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_1

    :cond_2
    const-class p4, Ljava/net/InetSocketAddress;

    if-ne p5, p4, :cond_4

    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p4

    invoke-virtual {p3, v3}, La5/j1;->write(I)V

    if-eqz p4, :cond_3

    const-string p5, "address"

    invoke-virtual {p3, p5}, La5/j1;->w(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, La5/o0;->A(Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, La5/j1;->write(I)V

    :cond_3
    const-string p1, "port"

    invoke-virtual {p3, p1}, La5/j1;->w(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {p3, p1}, La5/j1;->h0(I)V

    invoke-virtual {p3, v2}, La5/j1;->write(I)V

    return-void

    :cond_4
    instance-of p4, p2, Ljava/io/File;

    if-eqz p4, :cond_5

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_1

    :cond_5
    instance-of p4, p2, Ljava/net/InetAddress;

    if-eqz p4, :cond_6

    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_1

    :cond_6
    instance-of p4, p2, Ljava/util/TimeZone;

    if-eqz p4, :cond_7

    check-cast p2, Ljava/util/TimeZone;

    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_1

    :cond_7
    instance-of p4, p2, Ljava/util/Currency;

    if-eqz p4, :cond_8

    check-cast p2, Ljava/util/Currency;

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_1

    :cond_8
    instance-of p4, p2, Lcom/alibaba/fastjson/e;

    if-eqz p4, :cond_9

    check-cast p2, Lcom/alibaba/fastjson/e;

    invoke-interface {p2, p3}, Lcom/alibaba/fastjson/e;->writeJSONString(Ljava/lang/Appendable;)V

    return-void

    :cond_9
    instance-of p4, p2, Ljava/util/Iterator;

    if-eqz p4, :cond_a

    check-cast p2, Ljava/util/Iterator;

    invoke-virtual {p0, p1, p3, p2}, La5/w0;->f(La5/o0;La5/j1;Ljava/util/Iterator;)V

    return-void

    :cond_a
    instance-of p4, p2, Ljava/lang/Iterable;

    if-eqz p4, :cond_b

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, La5/w0;->f(La5/o0;La5/j1;Ljava/util/Iterator;)V

    return-void

    :cond_b
    instance-of p4, p2, Ljava/util/Map$Entry;

    if-eqz p4, :cond_e

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of p5, p4, Ljava/lang/String;

    if-eqz p5, :cond_d

    check-cast p4, Ljava/lang/String;

    instance-of p5, p2, Ljava/lang/String;

    if-eqz p5, :cond_c

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, v3, p4, p2}, La5/j1;->c0(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    invoke-virtual {p3, v3}, La5/j1;->write(I)V

    invoke-virtual {p3, p4}, La5/j1;->w(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, La5/o0;->A(Ljava/lang/Object;)V

    goto :goto_0

    :cond_d
    invoke-virtual {p3, v3}, La5/j1;->write(I)V

    invoke-virtual {p1, p4}, La5/o0;->A(Ljava/lang/Object;)V

    const/16 p4, 0x3a

    invoke-virtual {p3, p4}, La5/j1;->write(I)V

    invoke-virtual {p1, p2}, La5/o0;->A(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p3, v2}, La5/j1;->write(I)V

    return-void

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p4, "net.sf.json.JSONNull"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p3}, La5/j1;->m0()V

    return-void

    :cond_f
    instance-of p1, p2, Lorg/w3c/dom/Node;

    if-eqz p1, :cond_11

    check-cast p2, Lorg/w3c/dom/Node;

    invoke-static {p2}, La5/w0;->e(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p5

    :cond_10
    :goto_1
    invoke-virtual {p3, p5}, La5/j1;->q0(Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not support class : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected f(La5/o0;La5/j1;Ljava/util/Iterator;)V
    .locals 2

    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, La5/j1;->write(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p2, v1}, La5/j1;->write(I)V

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, La5/o0;->A(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    invoke-virtual {p2, p1}, La5/j1;->write(I)V

    return-void
.end method
