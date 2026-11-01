.class public Lcom/bytedance/adsdk/ugeno/core/TEQ;
.super Ljava/lang/Object;


# instance fields
.field private EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

.field private HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

.field private Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private TKC:Lorg/json/JSONObject;

.field private sP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/ugeno/core/TEQ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    return-object v0
.end method

.method public Sj()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP:I

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC:Lorg/json/JSONObject;

    return-void
.end method

.method public TKC()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC:Lorg/json/JSONObject;

    return-object v0
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP:I

    return v0
.end method

.method public sP(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UGenEvent{mWidget="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
