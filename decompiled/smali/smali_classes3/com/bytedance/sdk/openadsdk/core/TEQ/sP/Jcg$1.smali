.class Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/Jcg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V

    return-void
.end method

.method public Sj(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->TKC()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/bytedance/adsdk/ugeno/core/sef;

    invoke-direct {p1}, Lcom/bytedance/adsdk/ugeno/core/sef;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/core/sef;->Sj(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/core/Zq;->Sj(Lcom/bytedance/adsdk/ugeno/core/sef;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->TEQ()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP()Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/sP/Zq;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj(Z)V

    return-void
.end method
