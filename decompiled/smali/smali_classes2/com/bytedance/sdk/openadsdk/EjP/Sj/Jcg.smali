.class Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/HiB/TKC;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/component/Jcg/sP/sP;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/Sj;->TKC()Lcom/bytedance/sdk/component/Jcg/sP/sP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(I)V

    const-string v1, "track_url"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->Sj(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/vS/Sj/HiB/EjP;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj()Lcom/bytedance/sdk/component/Jcg/sP;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/uA;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/uA;-><init>(Lcom/bytedance/sdk/component/Jcg/sP;)V

    return-object v1
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Jcg;->Sj:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
