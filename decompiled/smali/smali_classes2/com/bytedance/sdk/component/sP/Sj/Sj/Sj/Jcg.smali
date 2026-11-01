.class public Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;
.super Lcom/bytedance/sdk/component/sP/Sj/Zq;


# static fields
.field public static Sj:I = -0x1


# instance fields
.field EjP:I

.field HiB:Ljava/lang/String;

.field TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

.field sP:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->HiB:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    iput p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->EjP:I

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;-><init>()V

    sget v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->Sj:I

    iput v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->EjP:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    return-void
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/component/sP/Sj/aa;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/aa;->sP:Lcom/bytedance/sdk/component/sP/Sj/aa;

    return-object v0
.end method

.method public EjP()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->HiB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->HiB:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/vS;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/vS;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "Content-Range"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC()I

    move-result v5

    const/16 v6, 0xce

    if-eq v5, v6, :cond_2

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/vS;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/vS;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method public Sj()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public TEQ()Lcom/bytedance/sdk/component/sP/Sj/Fmk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    return-object v0
.end method

.method public TKC()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    iget v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->EjP:I

    return v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public sP()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public uA()Lcom/bytedance/sdk/component/sP/Sj/TEQ;
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TEQ()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TEQ()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/TEQ;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TEQ()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/TEQ;-><init>(Lcom/bytedance/sdk/component/TKC/Sj/Sj;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Ym()V

    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Dq;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Dq;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Fmk()V

    :cond_1
    return-object v0
.end method
