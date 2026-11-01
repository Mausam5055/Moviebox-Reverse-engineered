.class public Lcom/bytedance/adsdk/ugeno/core/sP/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Jcg/uA$Sj;


# instance fields
.field private EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

.field private HiB:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private Sj:I

.field private TKC:Landroid/content/Context;

.field private sP:Lcom/bytedance/adsdk/ugeno/core/aa;

.field private vS:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Jcg/uA;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/adsdk/ugeno/Jcg/uA;-><init>(Landroid/os/Looper;Lcom/bytedance/adsdk/ugeno/Jcg/uA$Sj;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->vS:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->TKC:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->HiB:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->HiB:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->aa()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->Sj:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->vS:Landroid/os/Handler;

    int-to-long v2, v0

    const/16 v0, 0x3e9

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
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

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAnimation"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "nodeId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->HiB:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2, v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP(Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v1

    const-string v2, "animatorSet"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/bytedance/adsdk/ugeno/core/Sj;->Sj(Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/core/Sj;

    move-result-object p1

    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lcom/bytedance/adsdk/ugeno/core/Jcg;-><init>(Landroid/view/View;Lcom/bytedance/adsdk/ugeno/core/Sj;)V

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/core/Jcg;->Sj()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/core/aa;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->HiB:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-interface {p1, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/core/aa;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->vS:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_1
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/core/aa;

    return-void
.end method
