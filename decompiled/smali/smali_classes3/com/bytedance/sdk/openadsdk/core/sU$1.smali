.class Lcom/bytedance/sdk/openadsdk/core/sU$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/core/sU;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic TKC:I

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/ib;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$1;->HiB:Lcom/bytedance/sdk/openadsdk/core/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/sU$1;->Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/sU$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/ib;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/sU$1;->TKC:I

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/sU$1;->EjP:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sU$1;->HiB:Lcom/bytedance/sdk/openadsdk/core/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/sU$1;->Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/sU$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/ib;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/sU$1;->TKC:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/sU$1;->EjP:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V

    return-void
.end method
