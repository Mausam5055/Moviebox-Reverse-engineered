.class public Lcom/bytedance/sdk/component/HiB/HiB/aa;
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

    const-string v0, "raw_cache"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/TKC/vS;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->RiZ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TzV;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uA()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/vS;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/HiB/vS;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/HiB/HiB/sP;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/HiB/HiB/sP;-><init>([BLcom/bytedance/sdk/component/HiB/vS;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void
.end method
