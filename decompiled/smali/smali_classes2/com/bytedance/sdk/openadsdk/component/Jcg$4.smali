.class Lcom/bytedance/sdk/openadsdk/component/Jcg$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/vS$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/component/Jcg;

.field final synthetic Sj:Z

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->EjP:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->Sj:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 6

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->Sj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->EjP:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->EjP:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    const/16 v2, 0x64

    const/16 v3, 0x2713

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IIILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V
    .locals 4

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->Sj:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->EjP:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;I)I

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Sj(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;->EjP:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    :cond_0
    return-void
.end method
