.class final Lcom/bytedance/sdk/openadsdk/dx/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/zR/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/zR/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/dx/Sj$2;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$3;-><init>(Lcom/bytedance/sdk/openadsdk/dx/Sj$2;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    sget-object p1, Lcom/bytedance/sdk/openadsdk/dx/Sj;->sP:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Ljava/lang/String;)V

    return-void
.end method

.method public sP()V
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dx/Sj$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/dx/Sj$2;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/vS/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->sP()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->sP()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/sU;->sP()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    const-string v2, "sec_config"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA/sP;->sP()Lcom/bytedance/sdk/openadsdk/core/uA/sP;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/uA/sP;->Sj(Ljava/util/Map;)V

    return-void
.end method
