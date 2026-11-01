.class Lcom/bytedance/sdk/openadsdk/core/Yf$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/aa/EjP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/aa/EjP;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Yf;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/aa/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$8;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$8;->Sj:Lcom/bytedance/sdk/openadsdk/aa/EjP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$8;->Sj:Lcom/bytedance/sdk/openadsdk/aa/EjP;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/aa/EjP;->Sj(ZLjava/util/List;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$8;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nP()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$8;->Sj:Lcom/bytedance/sdk/openadsdk/aa/EjP;

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/aa/EjP;->Sj(ZLjava/util/List;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$8;->Sj:Lcom/bytedance/sdk/openadsdk/aa/EjP;

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/aa/EjP;->Sj(ZLjava/util/List;)V

    const/4 p1, -0x3

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void
.end method
