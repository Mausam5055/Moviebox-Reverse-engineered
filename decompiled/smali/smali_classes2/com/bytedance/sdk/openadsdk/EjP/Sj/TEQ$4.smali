.class Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;
.super Lcom/bytedance/sdk/component/Dq/TKC/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj(Ljava/util/List;Lcom/bytedance/sdk/component/vS/Sj/sP/sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/util/List;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;

.field final synthetic Sj:Ljava/util/List;

.field final synthetic TKC:Ljava/util/List;

.field final synthetic sP:Lcom/bytedance/sdk/component/vS/Sj/sP/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;ILjava/lang/String;Ljava/util/List;Lcom/bytedance/sdk/component/vS/Sj/sP/sP;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->Sj:Ljava/util/List;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->sP:Lcom/bytedance/sdk/component/vS/Sj/sP/sP;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->TKC:Ljava/util/List;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->EjP:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/Dq/TKC/sP;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->Sj:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->sP:Lcom/bytedance/sdk/component/vS/Sj/sP/sP;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;

    iget-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB;->Sj:Z

    iget v4, v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB;->sP:I

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB;->TKC:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB;->EjP:Z

    const-string v7, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->TKC:Ljava/util/List;

    new-instance v3, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->EjP:Ljava/util/List;

    invoke-direct {v3, v1, v4}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/Sj;-><init>(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/sP;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->sP:Lcom/bytedance/sdk/component/vS/Sj/sP/sP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->TKC:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/vS/Sj/sP/sP;->Sj(Ljava/util/List;)V

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB;->sP:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;Z)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB;->EjP:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;Z)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4$2;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4$3;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;->sP:Lcom/bytedance/sdk/component/vS/Sj/sP/sP;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4$4;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    :cond_3
    return-void
.end method
