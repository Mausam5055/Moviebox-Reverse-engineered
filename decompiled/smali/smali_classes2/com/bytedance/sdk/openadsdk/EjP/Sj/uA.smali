.class Lcom/bytedance/sdk/openadsdk/EjP/Sj/uA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/HiB/EjP;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/component/Jcg/sP;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/uA;->Sj:Lcom/bytedance/sdk/component/Jcg/sP;

    return-void
.end method


# virtual methods
.method public Sj()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/uA;->Sj:Lcom/bytedance/sdk/component/Jcg/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/uA;->Sj:Lcom/bytedance/sdk/component/Jcg/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public sP()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/uA;->Sj:Lcom/bytedance/sdk/component/Jcg/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
