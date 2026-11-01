.class Lcom/bytedance/sdk/openadsdk/dNu/HiB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/dNu/EjP;


# instance fields
.field private EjP:I

.field private HiB:I

.field Sj:J

.field private TKC:I

.field private sP:Lcom/bytedance/sdk/openadsdk/dNu/EjP;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/dNu/EjP;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->sP:Lcom/bytedance/sdk/openadsdk/dNu/EjP;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->Sj:J

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->TKC:I

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->EjP:I

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->HiB:I

    return-void
.end method


# virtual methods
.method public generatorModel()Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->sP:Lcom/bytedance/sdk/openadsdk/dNu/EjP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/EjP;->generatorModel()Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    move-result-object v0

    const-string v1, "7.1.1.4"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->TKC:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(I)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->EjP:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP(I)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->HiB:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC(I)V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/HiB;->Sj:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP(J)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->Jcg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->EjP()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP(I)V

    return-object v0
.end method
