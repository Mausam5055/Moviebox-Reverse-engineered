.class Lcom/bytedance/sdk/openadsdk/component/Jcg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;I)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    const/4 v2, 0x2

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IIILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;I)I

    const/4 v0, 0x3

    const/16 v2, 0x64

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object p2

    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->RiZ()J

    move-result-wide v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    move-result-object v6

    iput-wide v4, v6, Lcom/bytedance/sdk/openadsdk/core/model/ley;->sP:J

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v6

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    invoke-direct {v1, v8, v2, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    return-void

    :cond_1
    if-nez v6, :cond_9

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ODI()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v6

    const-wide/16 v9, -0x1

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Ym()I

    move-result v6

    if-eq v6, v8, :cond_4

    if-ne v6, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    move-result-object v6

    iget-boolean v6, v6, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj:Z

    xor-int/2addr v6, v8

    invoke-static {v0, p2, v3, v6, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    move-result-object v1

    iput-wide v9, v1, Lcom/bytedance/sdk/openadsdk/core/model/ley;->sP:J

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    invoke-direct {v1, v8, v2, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, p2, v1, v3, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    return-void

    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TEQ()I

    move-result v6

    if-ne v6, v8, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    move-result-object v1

    iput-wide v9, v1, Lcom/bytedance/sdk/openadsdk/core/model/ley;->sP:J

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    invoke-direct {v1, v8, v2, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v0, p2, v3, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    move-result-object v3

    iget-boolean v3, v3, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj:Z

    xor-int/2addr v3, v8

    invoke-static {v0, p2, v3, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->EjP()J

    move-result-wide v6

    invoke-static {p2, v6, v7}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;J)V

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    invoke-direct {v1, v8, v2, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    return-void

    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/Jcg$1;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    invoke-direct {v1, v8, v2, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->Sj:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, p2, v1, v3, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {v0, p2, v3, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    return-void

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;->TKC:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    const/16 v3, 0x4e21

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IIILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    const/4 p1, -0x3

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    return-void
.end method
