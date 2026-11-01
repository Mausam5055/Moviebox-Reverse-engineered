.class public Lcom/bytedance/sdk/component/HiB/HiB/TKC;
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

    const-string v0, "generate_key"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TEQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/TKC/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->vS()Lcom/bytedance/sdk/component/HiB/aa;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/aa;->Sj(Lcom/bytedance/sdk/component/HiB/uA;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sP(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/aa;->sP(Lcom/bytedance/sdk/component/HiB/uA;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/Jcg;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/HiB/Jcg;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void
.end method
