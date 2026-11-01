.class public final Lcom/mbridge/msdk/thrid/okhttp/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/mbridge/msdk/thrid/okhttp/b0;

.field private final b:Lcom/mbridge/msdk/thrid/okhttp/f;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/b0;Lcom/mbridge/msdk/thrid/okhttp/f;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/thrid/okhttp/b0;",
            "Lcom/mbridge/msdk/thrid/okhttp/f;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->a:Lcom/mbridge/msdk/thrid/okhttp/b0;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->b:Lcom/mbridge/msdk/thrid/okhttp/f;

    iput-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Lcom/mbridge/msdk/thrid/okhttp/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/f;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/f;

    move-result-object v0

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "NONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okhttp/b0;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/b0;

    move-result-object v1

    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_2
    new-instance v3, Lcom/mbridge/msdk/thrid/okhttp/o;

    invoke-direct {v3, v1, v0, v2, p0}, Lcom/mbridge/msdk/thrid/okhttp/o;-><init>(Lcom/mbridge/msdk/thrid/okhttp/b0;Lcom/mbridge/msdk/thrid/okhttp/f;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "tlsVersion == NONE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "tlsVersion == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cipherSuite == SSL_NULL_WITH_NULL_NULL"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cipherSuite == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lcom/mbridge/msdk/thrid/okhttp/f;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->b:Lcom/mbridge/msdk/thrid/okhttp/f;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/mbridge/msdk/thrid/okhttp/b0;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->a:Lcom/mbridge/msdk/thrid/okhttp/b0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/mbridge/msdk/thrid/okhttp/o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/mbridge/msdk/thrid/okhttp/o;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->a:Lcom/mbridge/msdk/thrid/okhttp/b0;

    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/o;->a:Lcom/mbridge/msdk/thrid/okhttp/b0;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->b:Lcom/mbridge/msdk/thrid/okhttp/f;

    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/o;->b:Lcom/mbridge/msdk/thrid/okhttp/f;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/o;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/o;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->a:Lcom/mbridge/msdk/thrid/okhttp/b0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->b:Lcom/mbridge/msdk/thrid/okhttp/f;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/o;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
