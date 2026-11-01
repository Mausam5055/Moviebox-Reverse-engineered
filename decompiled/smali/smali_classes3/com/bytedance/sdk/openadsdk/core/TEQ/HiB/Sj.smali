.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;
.super Lcom/bytedance/sdk/component/adexpress/sP/Fmk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;
    }
.end annotation


# instance fields
.field private EjP:F

.field private Sj:Lorg/json/JSONObject;

.field private TKC:F

.field private sP:Lcom/bytedance/adsdk/ugeno/core/Zq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;-><init>(Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->Sj:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;)Lcom/bytedance/adsdk/ugeno/core/Zq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->sP:Lcom/bytedance/adsdk/ugeno/core/Zq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->TKC:F

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->EjP(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->EjP:F

    return-void
.end method


# virtual methods
.method public LD()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->Sj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public LqL()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->TKC:F

    return v0
.end method

.method public Yf()F
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->EjP:F

    return v0
.end method

.method public fF()Lcom/bytedance/adsdk/ugeno/core/Zq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->sP:Lcom/bytedance/adsdk/ugeno/core/Zq;

    return-object v0
.end method
