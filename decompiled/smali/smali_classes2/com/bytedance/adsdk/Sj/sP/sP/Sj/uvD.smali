.class public Lcom/bytedance/adsdk/Sj/sP/sP/Sj/uvD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/Sj/sP/sP/Sj;


# instance fields
.field private final Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/uvD;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/uvD;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;

    return-object v0
.end method

.method public Sj(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/uvD;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;->Sj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/uvD;->sP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
