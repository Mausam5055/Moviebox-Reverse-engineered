.class public Lcom/bytedance/sdk/component/HiB/HiB/EjP;
.super Lcom/bytedance/sdk/component/HiB/HiB/Sj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/HiB/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "cache_policy"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->RiZ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sP;->HiB()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/TEQ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/HiB/TEQ;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sP;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/vS;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/HiB/vS;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/Ym;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/HiB/Ym;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void
.end method
