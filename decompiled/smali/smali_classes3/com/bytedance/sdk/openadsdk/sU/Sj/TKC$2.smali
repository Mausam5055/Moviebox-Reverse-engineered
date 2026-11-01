.class Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->TKC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "model"

    const-string v1, ""

    const-string v2, "pag_plb_config"

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;I)V

    :cond_0
    return-void
.end method
