.class public final Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/http/UrlHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CurlBuilder"
.end annotation


# instance fields
.field private final a:Ljava/net/URL;

.field private b:Ljava/lang/String;

.field private final c:Ljava/util/HashMap;

.field private d:Ljava/lang/String;

.field private e:Z

.field final synthetic f:Lcom/amazonaws/http/UrlHttpClient;


# direct methods
.method public constructor <init>(Lcom/amazonaws/http/UrlHttpClient;Ljava/net/URL;)V
    .locals 1

    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->f:Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->e:Z

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a:Ljava/net/URL;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must have a valid url"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "curl"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " -X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, " -H \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " -d \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid state, cannot create curl command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->e:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->e:Z

    return-object p0
.end method

.method public e(Ljava/util/Map;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b:Ljava/lang/String;

    return-object p0
.end method
