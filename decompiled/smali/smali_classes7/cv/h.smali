.class public Lcv/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcv/a;


# instance fields
.field private a:Lcom/transsion/transfer/androidasync/http/Multimap;

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcv/h;Lcom/transsion/transfer/androidasync/http/Multimap;)V
    .locals 0

    iput-object p1, p0, Lcv/h;->a:Lcom/transsion/transfer/androidasync/http/Multimap;

    return-void
.end method

.method private b()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcv/h;->a:Lcom/transsion/transfer/androidasync/http/Multimap;

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/http/Multimap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "UTF-8"

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/transfer/androidasync/http/w;

    invoke-interface {v3}, Lcom/transsion/transfer/androidasync/http/w;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {v3}, Lcom/transsion/transfer/androidasync/http/w;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/transsion/transfer/androidasync/http/w;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcv/h;->b:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
    .locals 0

    iget-object p1, p0, Lcv/h;->b:[B

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcv/h;->b()V

    :cond_0
    iget-object p1, p0, Lcv/h;->b:[B

    invoke-static {p2, p1, p3}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLbv/a;)V

    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "application/x-www-form-urlencoded; charset=utf-8"

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcv/h;->b:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcv/h;->b()V

    :cond_0
    iget-object v0, p0, Lcv/h;->b:[B

    array-length v0, v0

    return v0
.end method

.method public r(Lcom/transsion/transfer/androidasync/p;Lbv/a;)V
    .locals 2

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    new-instance v1, Lcv/h$a;

    invoke-direct {v1, p0, v0}, Lcv/h$a;-><init>(Lcv/h;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    new-instance v1, Lcv/h$b;

    invoke-direct {v1, p0, v0, p2}, Lcv/h$b;-><init>(Lcv/h;Lcom/transsion/transfer/androidasync/ByteBufferList;Lbv/a;)V

    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    return-void
.end method
