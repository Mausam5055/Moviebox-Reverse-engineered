.class public Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;
.super Ljava/lang/Object;


# instance fields
.field private volatile Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ugeno/EjP/Sj/TKC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;->Sj:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/Sj/TKC;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/EjP/Sj/TKC;

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/adsdk/ugeno/EjP/Sj/sP;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/EjP/Sj/sP;-><init>()V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/Sj/TKC;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
