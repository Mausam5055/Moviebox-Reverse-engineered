.class Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Jcg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dynamic_backup_render"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
