.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP$Sj;
    }
.end annotation


# instance fields
.field private EjP:Z

.field private final HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

.field private final TKC:Ljava/lang/String;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->TKC:Ljava/lang/String;

    return-void
.end method

.method private EjP()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->TKC:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->TKC:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    :cond_1
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->EjP:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->EjP:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->EjP()V

    return-void
.end method

.method public Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;IIILcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP$Sj;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;III",
            "Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP$Sj;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p10

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->HiB:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const-string v2, "click_play_star_level"

    invoke-interface {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP$Sj;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->EjP:I

    if-ne v2, v3, :cond_1

    const-string v2, "click_play_star_nums"

    invoke-interface {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP$Sj;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TKC:I

    if-ne v2, v3, :cond_2

    const-string v2, "click_play_source"

    invoke-interface {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP$Sj;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_2
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->sP:I

    if-ne v2, v3, :cond_3

    const-string v2, "click_play_logo"

    invoke-interface {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP$Sj;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void

    :cond_4
    move-object/from16 v1, p10

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP$Sj;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V

    return-void
.end method

.method public TKC()Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    return-object v0
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;->EjP()V

    :cond_0
    return-void
.end method
