.class Lcom/bytedance/sdk/openadsdk/component/Jcg$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/Jcg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/vS;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    invoke-direct {v2, v6, v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    return-void

    :cond_1
    if-nez v2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TEQ()I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    invoke-direct {v2, v6, v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    return-void

    :cond_2
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Ym()I

    move-result v3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_3

    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    invoke-direct {v2, v6, v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    move-result-object v3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/component/vS;->sP(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    move-result-object v3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/component/vS;->EjP(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Z)V

    return-void

    :cond_6
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uP(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    move-result-object v3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg(I)V

    :cond_7
    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    invoke-direct {v2, v6, v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    return-void

    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    invoke-direct {v2, v6, v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    return-void

    :cond_a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Z)V

    return-void
.end method
