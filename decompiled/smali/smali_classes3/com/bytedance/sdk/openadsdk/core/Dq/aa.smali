.class public Lcom/bytedance/sdk/openadsdk/core/Dq/aa;
.super Ljava/lang/Object;


# static fields
.field private static Sj:Ljava/lang/String;

.field private static sP:Ljava/lang/String;


# direct methods
.method public static Sj()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/Sj/Sj/sP;)V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/Sj/Sj/TKC;)V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$3;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/Sj/Sj/EjP;)V

    invoke-static {}, Lcom/bytedance/sdk/component/uA/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/uA/Sj/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$4;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/uA/Sj/sP;)V

    return-void
.end method

.method public static TKC()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->sP:Ljava/lang/String;

    const-string v1, "js_render_v3_ver"

    const-string v2, "tt_sp"

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->sP:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Dq;->sP()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->Sj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "v3"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->sP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->sP:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public static sP()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->Sj:Ljava/lang/String;

    const-string v1, "js_render_ver"

    const-string v2, "tt_sp"

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->Sj:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/Dq;->sP()Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/Sj/TKC/Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->Sj:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->Sj:Ljava/lang/String;

    return-object v0
.end method
