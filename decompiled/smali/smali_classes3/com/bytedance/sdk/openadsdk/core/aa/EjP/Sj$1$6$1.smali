.class Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:F

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

.field final synthetic sP:F


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;FF)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->EZ(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->gY(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Chv(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;->HiB:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Bml(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(ZFF)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->aNB(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Mts()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(ZFF)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->cX(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Mts()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;FF)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;FF)V

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(ZFF)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->Sj:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$1$6$1;->sP:F

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;FF)V

    return-void
.end method
