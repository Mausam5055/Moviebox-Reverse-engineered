.class public Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

.field private final sP:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object p0
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "getads_callback_async"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(ILjava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isPreload()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "getads_callback_async"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isPreload()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/Sj/Sj$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/Sj/Sj;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->sP(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    :cond_2
    return-void
.end method
