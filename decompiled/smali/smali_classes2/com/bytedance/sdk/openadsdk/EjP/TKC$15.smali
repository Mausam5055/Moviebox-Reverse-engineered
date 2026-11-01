.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Dq:Ljava/util/Map;

.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

.field final synthetic Jcg:I

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:J

.field final synthetic vS:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;ZILjava/util/Map;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->sP:J

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->TKC:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->EjP:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iput-boolean p8, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->vS:Z

    iput p9, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Jcg:I

    iput-object p10, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Dq:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->sP:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->TKC:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->EjP:Ljava/lang/String;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15$1;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;)V

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "click"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->EjP:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->kb()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/kF/Sj;->Sj(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Ljava/util/List;ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->EjP:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ib;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_2
    return-void
.end method
