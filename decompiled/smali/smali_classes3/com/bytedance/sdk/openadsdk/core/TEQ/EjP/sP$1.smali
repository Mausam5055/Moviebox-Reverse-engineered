.class Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj()V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/TKC;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/TKC;->sP(Ljava/lang/String;)V

    return-void
.end method
