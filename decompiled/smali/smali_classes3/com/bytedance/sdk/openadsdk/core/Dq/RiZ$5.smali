.class Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/HiB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dNu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Z

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->Sj:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v2, :cond_0

    const-string v2, "material is null"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;)Ljava/lang/String;

    return-object v0

    :cond_0
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->Sj:Z

    if-eqz v3, :cond_1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;-><init>()V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/Dq/dx;)Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)F

    move-result v2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)F

    move-result v3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iget-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef:Z

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/sP;->Sj(FFZLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/TKC;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/sP;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;-><init>()V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/Dq/dx;)Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/TKC;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iget-boolean v4, v3, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef:Z

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/sP;->Sj(FFZLcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-object v0
.end method
