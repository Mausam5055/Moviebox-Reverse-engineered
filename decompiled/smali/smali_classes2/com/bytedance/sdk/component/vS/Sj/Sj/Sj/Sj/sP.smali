.class public Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;
.super Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    return-void
.end method


# virtual methods
.method public EjP()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public TKC()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;->TKC()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
