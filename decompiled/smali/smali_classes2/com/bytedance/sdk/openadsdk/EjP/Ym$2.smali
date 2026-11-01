.class Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

.field final synthetic sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/Ym;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->Sj:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->sP:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->Sj:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;->sP:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->sP:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;->Sj:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Ym;ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;->TKC:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;->TKC:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Jcg/Sj;->TKC()Lcom/bytedance/sdk/component/Jcg/sP/sP;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "content-type"

    const-string v3, "application/json; charset=utf-8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->EjP(Ljava/util/Map;)V

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    const-string v0, "sendPrefLog"

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Ym$2;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
