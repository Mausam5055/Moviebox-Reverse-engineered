.class public Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/Sj/sP/sP/sP;


# instance fields
.field private Sj:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

.field private TKC:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

.field private sP:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/vS;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/vS;

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;->Sj:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->Sj(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;->sP:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->Sj(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;->TKC:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->Sj(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lcom/bytedance/adsdk/Sj/sP/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;->Sj:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    return-void
.end method

.method public TKC(Lcom/bytedance/adsdk/Sj/sP/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;->TKC:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    return-void
.end method

.method public sP()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;->Sj:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;->sP:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;->TKC:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sP(Lcom/bytedance/adsdk/Sj/sP/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;->sP:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/RiZ;->sP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
