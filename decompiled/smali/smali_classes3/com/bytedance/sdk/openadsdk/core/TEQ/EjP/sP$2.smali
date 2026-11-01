.class Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    :cond_0
    return-void
.end method
