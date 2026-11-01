.class public Lcom/amazonaws/http/HttpRequest;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/net/URI;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/io/InputStream;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/http/HttpRequest;->b:Ljava/net/URI;

    if-nez p3, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazonaws/http/HttpRequest;->d:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()J
    .locals 4

    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->c:Ljava/util/Map;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const-string v3, "Content-Length"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->c:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->b:Ljava/net/URI;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/http/HttpRequest;->e:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amazonaws/http/HttpRequest;->e:Z

    return-void
.end method
