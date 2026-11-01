.class public Lcom/bytedance/adsdk/ugeno/core/sP/HiB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Jcg/uA$Sj;


# instance fields
.field private EjP:Landroid/content/Context;

.field private HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

.field private Jcg:Landroid/os/Handler;

.field private Sj:Z

.field private TKC:Lcom/bytedance/adsdk/ugeno/core/aa;

.field private sP:I

.field private vS:Lcom/bytedance/adsdk/ugeno/sP/TKC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Jcg/uA;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/adsdk/ugeno/Jcg/uA;-><init>(Landroid/os/Looper;Lcom/bytedance/adsdk/ugeno/Jcg/uA$Sj;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->Jcg:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->EjP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->vS:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "interval"

    const-string v2, "8000"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->vS:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->aa()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->sP:I

    const-string v1, "repeat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->Sj:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->Jcg:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->sP:I

    int-to-long v1, v1

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->TKC:Lcom/bytedance/adsdk/ugeno/core/aa;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->HiB:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->vS:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-interface {p1, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/core/aa;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->Sj:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->Jcg:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->sP:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->Jcg:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/HiB;->TKC:Lcom/bytedance/adsdk/ugeno/core/aa;

    return-void
.end method
