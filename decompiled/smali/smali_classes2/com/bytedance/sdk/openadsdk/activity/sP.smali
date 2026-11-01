.class public Lcom/bytedance/sdk/openadsdk/activity/sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/sP$TKC;,
        Lcom/bytedance/sdk/openadsdk/activity/sP$Sj;,
        Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;,
        Lcom/bytedance/sdk/openadsdk/activity/sP$sP;,
        Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;
    }
.end annotation


# static fields
.field private static EjP:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

.field private static TKC:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;


# instance fields
.field private final Dq:Landroid/os/Bundle;

.field private Fmk:Landroid/app/Activity;

.field private final HiB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/activity/vS;",
            ">;"
        }
    .end annotation
.end field

.field private final Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private LD:Z

.field private LqL:Ljava/lang/Runnable;

.field private RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field public Sj:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

.field private TEQ:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

.field private TzV:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

.field private final Yf:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

.field private Ym:Z

.field private Zq:I

.field private aa:Z

.field private dNu:Lcom/bytedance/sdk/openadsdk/activity/TKC;

.field private dx:Landroid/os/Bundle;

.field private ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

.field private kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

.field private ley:I

.field public sP:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

.field private sU:I

.field private sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

.field private uA:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

.field private uP:Z

.field private uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

.field private vS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wE:Z

.field private zR:Lcom/bytedance/sdk/openadsdk/sef/Ym;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->vS:Ljava/util/List;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Dq:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Yf:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sU()V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib()Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object p0

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/activity/sP;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF()Z

    move-result p0

    return p0
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)Lcom/bytedance/sdk/openadsdk/activity/vS;
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/EjP;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/activity/sP;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    return-object p0
.end method

.method private Sj(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->vS()Lcom/bytedance/sdk/openadsdk/activity/TKC;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->dx()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/TKC;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj()Z

    move-result v4

    const/16 v7, 0x8

    const-string v8, "tt_multiple_ad_indicator"

    const/4 v9, 0x0

    const-wide/16 v10, 0xa

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/bytedance/sdk/openadsdk/activity/EjP;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/sP$Sj;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    invoke-direct {v4, v0, v12, v13}, Lcom/bytedance/sdk/openadsdk/activity/sP$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;)V

    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    invoke-direct {v4, v0, v12, v13}, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;)V

    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    :cond_1
    :goto_0
    iget v4, v2, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    move v12, v5

    :goto_1
    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_5

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    move-result v14

    if-nez v14, :cond_5

    instance-of v14, v13, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    if-eqz v14, :cond_3

    iget-object v13, v13, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v13

    if-eqz v13, :cond_2

    int-to-double v14, v12

    invoke-virtual {v13}, Ly5/b;->K()D

    move-result-wide v12

    add-double/2addr v14, v12

    double-to-int v12, v14

    goto :goto_2

    :cond_2
    int-to-long v12, v12

    add-long/2addr v12, v10

    long-to-int v12, v12

    goto :goto_2

    :cond_3
    instance-of v14, v13, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz v14, :cond_4

    iget-object v13, v13, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hLo()Lcom/bytedance/sdk/openadsdk/core/model/zR;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/model/zR;->Sj()I

    move-result v13

    add-int/2addr v12, v13

    :cond_4
    :goto_2
    add-int/2addr v4, v6

    goto :goto_1

    :cond_5
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    invoke-virtual {v4, v12}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->sP(I)V

    instance-of v4, v2, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz v4, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    iget-object v10, v2, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hLo()Lcom/bytedance/sdk/openadsdk/core/model/zR;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/zR;->Sj()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj(I)V

    goto :goto_3

    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC(Lcom/bytedance/sdk/openadsdk/activity/vS;)V

    :cond_7
    :goto_3
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz v4, :cond_8

    if-nez v1, :cond_8

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v10, v12

    invoke-interface {v4, v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    :cond_8
    instance-of v4, v2, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    if-eqz v4, :cond_9

    iget v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq:I

    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(F)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/bytedance/sdk/component/utils/ib;->sP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;)I

    move-result v7

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v10, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ley:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v7, v11, v5

    aput-object v10, v11, v6

    invoke-virtual {v9, v4, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_9
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_a
    instance-of v4, v2, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    if-eqz v4, :cond_f

    iget v12, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq:I

    add-int/2addr v12, v6

    iput v12, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq:I

    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(F)V

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    if-nez v9, :cond_c

    instance-of v9, v2, Lcom/bytedance/sdk/openadsdk/activity/EjP;

    if-eqz v9, :cond_b

    new-instance v9, Lcom/bytedance/sdk/openadsdk/activity/sP$Sj;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    invoke-direct {v9, v0, v12, v13}, Lcom/bytedance/sdk/openadsdk/activity/sP$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;)V

    iput-object v9, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    goto :goto_4

    :cond_b
    new-instance v9, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    invoke-direct {v9, v0, v12, v13}, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;)V

    iput-object v9, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    :cond_c
    :goto_4
    iget v9, v2, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    move v12, v5

    :goto_5
    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_e

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of v14, v13, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-nez v14, :cond_e

    iget-object v13, v13, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v13

    if-eqz v13, :cond_d

    int-to-double v14, v12

    invoke-virtual {v13}, Ly5/b;->K()D

    move-result-wide v12

    add-double/2addr v14, v12

    double-to-int v12, v14

    goto :goto_6

    :cond_d
    int-to-long v12, v12

    add-long/2addr v12, v10

    long-to-int v12, v12

    :goto_6
    add-int/2addr v9, v6

    goto :goto_5

    :cond_e
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    invoke-virtual {v9, v12}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->sP(I)V

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz v9, :cond_10

    if-nez v1, :cond_10

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v10, v12

    invoke-interface {v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    goto :goto_7

    :cond_f
    instance-of v9, v2, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz v9, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC(Lcom/bytedance/sdk/openadsdk/activity/vS;)V

    :cond_10
    :goto_7
    if-eqz v4, :cond_11

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/bytedance/sdk/component/utils/ib;->sP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    iget v9, v2, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    add-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ley:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v9, v11, v5

    aput-object v10, v11, v6

    invoke-virtual {v8, v4, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_11
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    :goto_8
    if-eqz v1, :cond_13

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    goto :goto_9

    :cond_13
    move v4, v5

    :goto_9
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_14

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-object/from16 v8, p3

    invoke-virtual {v7, v1, v2, v8}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    add-int/2addr v4, v6

    goto :goto_9

    :cond_14
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->dx:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Landroid/app/Activity;Landroid/os/Bundle;)V

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sU:I

    if-eq v1, v3, :cond_18

    const/4 v3, 0x3

    if-eq v1, v3, :cond_17

    const/4 v3, 0x4

    if-eq v1, v3, :cond_16

    const/4 v3, 0x5

    if-eq v1, v3, :cond_15

    goto :goto_a

    :cond_15
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->TKC(Landroid/app/Activity;)V

    :goto_a
    return-void

    :cond_16
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Z)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->HiB(Landroid/app/Activity;)V

    return-void

    :cond_17
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->EjP(Landroid/app/Activity;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Z)V

    return-void

    :cond_18
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->EjP(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    return-object p0
.end method

.method private TKC(Lcom/bytedance/sdk/openadsdk/activity/vS;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->zR:Lcom/bytedance/sdk/openadsdk/sef/Ym;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Jcg(Landroid/view/View;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->zR:Lcom/bytedance/sdk/openadsdk/sef/Ym;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Jcg(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->getITopLayout()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Jcg(Landroid/view/View;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC()V

    :cond_2
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->ib()V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->TKC()V

    :cond_4
    return-void
.end method

.method private TKC(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC()I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/vS;

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP(Lcom/bytedance/sdk/openadsdk/activity/vS;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v2, :cond_8

    if-ne v2, p1, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/vS;->HiB(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/vS;->TKC(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Zq()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iput-boolean v0, v2, Lcom/bytedance/sdk/openadsdk/activity/vS;->TEQ:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    if-eqz v3, :cond_8

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/vS;

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz v3, :cond_8

    if-eq v2, p1, :cond_8

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Zq()V

    :cond_8
    iput-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/activity/vS;->TEQ:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    invoke-virtual {p1, v2, p2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    if-ne v3, v4, :cond_9

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_9
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->LD:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->LD:Z

    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    return-void
.end method

.method private dx()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/sP$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;)Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    return-void
.end method

.method private ib()Lcom/bytedance/sdk/openadsdk/activity/vS;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    return-object v0
.end method

.method private kF()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    return v0
.end method

.method private sP(IZ)I
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->CBE()Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-static {p0, v4, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->vS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    if-eqz p2, :cond_2

    if-nez v6, :cond_1

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    add-int/lit8 p1, p1, 0x2

    invoke-direct {v9, p0, v4, v5}, Lcom/bytedance/sdk/openadsdk/activity/TKC;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, p1

    :cond_1
    if-eqz v6, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->CBE()Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v6, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-direct {v8, p1, v4}, Lcom/bytedance/sdk/openadsdk/core/model/dx;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    add-int/lit8 p1, v5, 0x1

    invoke-direct {v6, p0, v8, v5}, Lcom/bytedance/sdk/openadsdk/activity/TKC;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->dNu:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move p1, v5

    :goto_2
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ley:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ley:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    return-object p0
.end method

.method private sU()V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sef(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->zR()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP(IZ)I

    move-result v2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    add-int/lit8 v4, v2, 0x1

    invoke-static {p0, v3, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(IZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/sP$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Ym$Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    :cond_2
    return-void
.end method

.method private zR()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->CBE()Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->aa()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->eI()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v0

    const/16 v3, 0x27

    if-ne v3, v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->aa:Z

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym:Z

    return v0

    :cond_2
    return v2
.end method


# virtual methods
.method public Dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq:I

    return v0
.end method

.method public EjP()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    return-object v0
.end method

.method public EjP(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sU:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->TKC(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public Fmk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;->sP()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;->sP()V

    :cond_1
    return-void
.end method

.method public HiB()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->dNu()V

    :cond_0
    return-void
.end method

.method public HiB(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 3

    const/4 p1, 0x6

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sU:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC()I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/vS;

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    if-lt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Zq()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->LqL()V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->RiZ()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ODI()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/sP$TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP$TKC;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC()V

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->TKC()V

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    return-void
.end method

.method public Jcg()Lcom/bytedance/sdk/openadsdk/activity/Sj;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    return-object v2

    :cond_2
    return-object v1
.end method

.method public RiZ()Lcom/bytedance/sdk/openadsdk/aa/TEQ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Yf:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->vS:Ljava/util/List;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ley:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public Sj(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->zR:Lcom/bytedance/sdk/openadsdk/sef/Ym;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/sef/Ym;->setProgress(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->zR:Lcom/bytedance/sdk/openadsdk/sef/Ym;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->zR:Lcom/bytedance/sdk/openadsdk/sef/Ym;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->zR:Lcom/bytedance/sdk/openadsdk/sef/Ym;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->zR:Lcom/bytedance/sdk/openadsdk/sef/Ym;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public Sj(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->sP()V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->sP()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj()V

    :cond_2
    return-void
.end method

.method public Sj(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public Sj(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sU:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->EjP(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    if-eqz p1, :cond_0

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    if-eqz p1, :cond_1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;)V
    .locals 6

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->dx:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sU:I

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sef/Ym;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/sef/Ym;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->zR:Lcom/bytedance/sdk/openadsdk/sef/Ym;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->zR:Lcom/bytedance/sdk/openadsdk/sef/Ym;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const v3, 0x800035

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->setShowDislike(Z)V

    :cond_1
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    const/4 p1, 0x0

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    sget-object p3, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    :cond_2
    if-nez p4, :cond_3

    if-eqz p2, :cond_3

    sget-object p2, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    :cond_3
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    invoke-direct {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uP:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/sP$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/activity/vS;ZILjava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->LqL:Ljava/lang/Runnable;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->uvD()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    if-eqz v0, :cond_3

    new-instance v8, Lcom/bytedance/sdk/openadsdk/activity/sP$5;

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/sP$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iget-object p5, p1, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->b_()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    const-string p2, "reward_success"

    goto :goto_0

    :cond_2
    const-string p2, "reward_fail"

    :goto_0
    invoke-static {p3, p4, p5, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZZZI)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->vS()Lcom/bytedance/sdk/openadsdk/activity/TKC;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v1, p5, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->Sj:Landroid/os/Bundle;

    const-string p5, "isSkip"

    invoke-virtual {p1, p5, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->Sj:Landroid/os/Bundle;

    const-string p2, "force"

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->Sj:Landroid/os/Bundle;

    const-string p2, "isFromLandingPage"

    invoke-virtual {p1, p2, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    :cond_2
    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Z)V

    :cond_0
    return-void
.end method

.method public Sj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->aa:Z

    return v0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hLo()Lcom/bytedance/sdk/openadsdk/core/model/zR;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hLo()Lcom/bytedance/sdk/openadsdk/core/model/zR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/zR;->Sj()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public TEQ()Lcom/bytedance/sdk/openadsdk/activity/vS;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/vS;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public TKC()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public TKC(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sU:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->HiB(Landroid/app/Activity;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj()V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->sP()V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj()V

    :cond_3
    return-void
.end method

.method public TzV()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uP:Z

    return-void
.end method

.method public Ym()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Dq:Landroid/os/Bundle;

    return-object v0
.end method

.method public Zq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->wE:Z

    return v0
.end method

.method public aa()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    :cond_1
    return-void
.end method

.method public dNu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uP:Z

    return v0
.end method

.method public sP(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sU:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Landroid/app/Activity;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->kF:Lcom/bytedance/sdk/openadsdk/activity/sP$sP;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->sP()V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj()V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->sP()V

    :cond_3
    return-void
.end method

.method public sP(Lcom/bytedance/sdk/openadsdk/activity/vS;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public sP(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_3

    instance-of p1, v0, Lcom/bytedance/sdk/openadsdk/activity/Sj;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;)I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    goto :goto_1

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/activity/vS;->b_()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/bytedance/sdk/openadsdk/activity/sP$3;

    invoke-direct {v7, p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;JI)V

    const-string p1, "dislike_skip"

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Jcg()Lcom/bytedance/sdk/openadsdk/activity/Sj;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TKC(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V

    return-void
.end method

.method public sP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym:Z

    return v0
.end method

.method public sP(I)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sef()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->dNu()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->uA:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;->Sj()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;->Sj()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->LqL:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->LqL:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method

.method public uA()Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    return-object v0
.end method

.method public uvD()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->wE:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->TKC()V

    :cond_0
    return-void
.end method

.method public vS()Lcom/bytedance/sdk/openadsdk/activity/TKC;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->dNu:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-le v1, v0, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/vS;

    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->dNu:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP;->dNu:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    return-object v0
.end method
