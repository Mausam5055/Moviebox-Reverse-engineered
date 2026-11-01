.class final Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/kF/sP/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->sP:Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->TKC:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Aw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cX()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    const-string v2, "show_urls"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->sP:Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;

    if-eqz v2, :cond_3

    :try_start_0
    const-string v3, "root_view"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->TKC:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    if-eqz v2, :cond_3

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;->Sj:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const-string v4, "dynamic_show_type"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->TKC:Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;->sP:I

    if-eq v2, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const-string v3, "mrc_show"

    invoke-static {v2, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
