.class Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;->Sj(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
