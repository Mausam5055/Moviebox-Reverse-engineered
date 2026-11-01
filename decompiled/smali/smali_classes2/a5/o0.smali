.class public La5/o0;
.super La5/i1;


# instance fields
.field protected final j:La5/g1;

.field public final k:La5/j1;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/text/DateFormat;

.field private p:Ljava/lang/String;

.field protected q:Ljava/util/IdentityHashMap;

.field protected r:La5/e1;

.field protected s:Ljava/util/TimeZone;

.field protected t:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, La5/j1;

    invoke-direct {v0}, La5/j1;-><init>()V

    invoke-static {}, La5/g1;->g()La5/g1;

    move-result-object v1

    invoke-direct {p0, v0, v1}, La5/o0;-><init>(La5/j1;La5/g1;)V

    return-void
.end method

.method public constructor <init>(La5/j1;)V
    .locals 1

    invoke-static {}, La5/g1;->g()La5/g1;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La5/o0;-><init>(La5/j1;La5/g1;)V

    return-void
.end method

.method public constructor <init>(La5/j1;La5/g1;)V
    .locals 1

    invoke-direct {p0}, La5/i1;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La5/o0;->l:I

    const-string v0, "\t"

    iput-object v0, p0, La5/o0;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La5/o0;->q:Ljava/util/IdentityHashMap;

    sget-object v0, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, La5/o0;->s:Ljava/util/TimeZone;

    sget-object v0, Lcom/alibaba/fastjson/a;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, La5/o0;->t:Ljava/util/Locale;

    iput-object p1, p0, La5/o0;->k:La5/j1;

    iput-object p2, p0, La5/o0;->j:La5/g1;

    return-void
.end method

.method private m(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, La5/o0;->t:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p1, p0, La5/o0;->s:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object p1, p0, La5/o0;->k:La5/j1;

    invoke-virtual {p1}, La5/j1;->m0()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, La5/o0;->q(Ljava/lang/Class;)La5/z0;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    :try_start_0
    invoke-interface/range {v1 .. v6}, La5/z0;->d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final B(Ljava/lang/String;)V
    .locals 1

    sget-object v0, La5/k1;->a:La5/k1;

    invoke-virtual {v0, p0, p1}, La5/k1;->f(La5/o0;Ljava/lang/String;)V

    return-void
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, La5/o0;->k:La5/j1;

    invoke-virtual {v0}, La5/j1;->m0()V

    return-void
.end method

.method public D(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, La5/o0;->r:La5/e1;

    iget-object v1, v0, La5/e1;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, La5/o0;->k:La5/j1;

    const-string v0, "{\"$ref\":\"@\"}"

    invoke-virtual {p1, v0}, La5/j1;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, La5/e1;->a:La5/e1;

    if-eqz v1, :cond_1

    iget-object v1, v1, La5/e1;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, La5/o0;->k:La5/j1;

    const-string v0, "{\"$ref\":\"..\"}"

    invoke-virtual {p1, v0}, La5/j1;->write(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v1, v0, La5/e1;->a:La5/e1;

    if-nez v1, :cond_3

    iget-object v0, v0, La5/e1;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, La5/o0;->k:La5/j1;

    const-string v0, "{\"$ref\":\"$\"}"

    invoke-virtual {p1, v0}, La5/j1;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, La5/o0;->k:La5/j1;

    const-string v1, "{\"$ref\":\""

    invoke-virtual {v0, v1}, La5/j1;->write(Ljava/lang/String;)V

    iget-object v0, p0, La5/o0;->q:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La5/e1;

    invoke-virtual {p1}, La5/e1;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, La5/o0;->k:La5/j1;

    invoke-virtual {v0, p1}, La5/j1;->write(Ljava/lang/String;)V

    iget-object p1, p0, La5/o0;->k:La5/j1;

    const-string v0, "\"}"

    invoke-virtual {p1, v0}, La5/j1;->write(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final E(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, La5/o0;->F(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public final F(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, La5/o0;->k:La5/j1;

    invoke-virtual {p1}, La5/j1;->m0()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, La5/o0;->q(Ljava/lang/Class;)La5/z0;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, La5/z0;->d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final G(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_5

    const-string v0, "unixtime"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iget-object v0, p0, La5/o0;->k:La5/j1;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, La5/j1;->h0(I)V

    return-void

    :cond_0
    const-string v0, "millis"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, La5/o0;->k:La5/j1;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, La5/j1;->l0(J)V

    return-void

    :cond_1
    invoke-virtual {p0}, La5/o0;->n()Ljava/text/DateFormat;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_2

    :try_start_0
    invoke-direct {p0, p2}, La5/o0;->m(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "T"

    const-string v1, "\'T\'"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, La5/o0;->m(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object p2, p0, La5/o0;->p:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, La5/o0;->m(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {p0, p2}, La5/o0;->m(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    :cond_4
    :goto_0
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, La5/o0;->k:La5/j1;

    invoke-virtual {p2, p1}, La5/j1;->q0(Ljava/lang/String;)V

    return-void

    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_a

    check-cast p1, [B

    const-string v0, "gzip"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "gzip,base64"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "hex"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, La5/o0;->k:La5/j1;

    invoke-virtual {p2, p1}, La5/j1;->g0([B)V

    goto :goto_4

    :cond_7
    iget-object p2, p0, La5/o0;->k:La5/j1;

    invoke-virtual {p2, p1}, La5/j1;->t([B)V

    goto :goto_4

    :cond_8
    :goto_1
    const/4 p2, 0x0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v1, p1

    const/16 v2, 0x200

    if-ge v1, v2, :cond_9

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    array-length v2, p1

    invoke-direct {v1, v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_2
    move-object p2, v1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_9
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_2

    :goto_3
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    iget-object p1, p0, La5/o0;->k:La5/j1;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, La5/j1;->t([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p2}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    :goto_4
    return-void

    :goto_5
    :try_start_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "write gzipBytes error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    invoke-static {p2}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_a
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, La5/o0;->k:La5/j1;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, La5/j1;->write(I)V

    const/4 v1, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_b

    iget-object v3, p0, La5/o0;->k:La5/j1;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, La5/j1;->write(I)V

    :cond_b
    invoke-virtual {p0, v2, p2}, La5/o0;->G(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    iget-object p1, p0, La5/o0;->k:La5/j1;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, La5/j1;->write(I)V

    return-void

    :cond_d
    invoke-virtual {p0, p1}, La5/o0;->A(Ljava/lang/Object;)V

    return-void
.end method

.method public j(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 1

    iget-object v0, p0, La5/o0;->k:La5/j1;

    invoke-virtual {v0, p1, p2}, La5/j1;->l(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    return-void
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, La5/o0;->q:Ljava/util/IdentityHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/e1;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    iget-object p1, v0, La5/e1;->c:Ljava/lang/Object;

    if-eqz p1, :cond_3

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_3

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public l()V
    .locals 1

    iget v0, p0, La5/o0;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La5/o0;->l:I

    return-void
.end method

.method public n()Ljava/text/DateFormat;
    .locals 1

    iget-object v0, p0, La5/o0;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    iget-object v0, p0, La5/o0;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, La5/o0;->m(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, La5/o0;->o:Ljava/text/DateFormat;

    :cond_0
    iget-object v0, p0, La5/o0;->o:Ljava/text/DateFormat;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La5/o0;->o:Ljava/text/DateFormat;

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, La5/o0;->n:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La5/o0;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/Class;)La5/z0;
    .locals 1

    iget-object v0, p0, La5/o0;->j:La5/g1;

    invoke-virtual {v0, p1}, La5/g1;->h(Ljava/lang/Class;)La5/z0;

    move-result-object p1

    return-object p1
.end method

.method public r()La5/j1;
    .locals 1

    iget-object v0, p0, La5/o0;->k:La5/j1;

    return-object v0
.end method

.method public s()V
    .locals 1

    iget v0, p0, La5/o0;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La5/o0;->l:I

    return-void
.end method

.method public t(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1

    iget-object v0, p0, La5/o0;->k:La5/j1;

    invoke-virtual {v0, p1}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La5/o0;->k:La5/j1;

    invoke-virtual {v0}, La5/j1;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1

    iget-object p2, p0, La5/o0;->k:La5/j1;

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p2, v0}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, La5/o0;->k:La5/j1;

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p2}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La5/o0;->r:La5/e1;

    if-eqz p1, :cond_1

    iget-object p1, p1, La5/e1;->a:La5/e1;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, La5/o0;->k:La5/j1;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, La5/j1;->write(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, La5/o0;->l:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, La5/o0;->k:La5/j1;

    iget-object v2, p0, La5/o0;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, La5/j1;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(La5/e1;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, La5/o0;->x(La5/e1;Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public x(La5/e1;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 7

    iget-object v0, p0, La5/o0;->k:La5/j1;

    iget-boolean v0, v0, La5/j1;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, La5/e1;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, La5/e1;-><init>(La5/e1;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p0, La5/o0;->r:La5/e1;

    iget-object p1, p0, La5/o0;->q:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, La5/o0;->q:Ljava/util/IdentityHashMap;

    :cond_1
    iget-object p1, p0, La5/o0;->q:Ljava/util/IdentityHashMap;

    iget-object p3, p0, La5/o0;->r:La5/e1;

    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La5/o0;->n:Ljava/lang/String;

    iget-object p1, p0, La5/o0;->o:Ljava/text/DateFormat;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, La5/o0;->o:Ljava/text/DateFormat;

    :cond_0
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La5/o0;->p:Ljava/lang/String;

    return-void
.end method
