.class Lcom/bytedance/sdk/openadsdk/component/vS$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/vS$TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic Sj:I

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic vS:Lcom/bytedance/sdk/openadsdk/component/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/vS;ILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->vS:Lcom/bytedance/sdk/openadsdk/component/vS;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->Sj:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->HiB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->Sj:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->vS:Lcom/bytedance/sdk/openadsdk/component/vS;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/core/model/ley;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->vS:Lcom/bytedance/sdk/openadsdk/component/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->HiB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/vS;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->vS:Lcom/bytedance/sdk/openadsdk/component/vS;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/vS$5;->HiB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/vS;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method
