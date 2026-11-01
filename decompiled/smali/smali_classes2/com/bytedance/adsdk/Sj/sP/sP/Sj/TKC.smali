.class public Lcom/bytedance/adsdk/Sj/sP/sP/Sj/TKC;
.super Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;->EjP:Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;-><init>(Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;)V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;->Sj:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->Sj(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/adsdk/Sj/sP/HiB/sP;->Sj(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;->sP:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->Sj(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/adsdk/Sj/sP/HiB/sP;->Sj(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;->sP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
