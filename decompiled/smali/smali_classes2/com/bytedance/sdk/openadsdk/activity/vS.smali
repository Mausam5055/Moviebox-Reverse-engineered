.class public abstract Lcom/bytedance/sdk/openadsdk/activity/vS;
.super Ljava/lang/Object;


# instance fields
.field protected final Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

.field public TEQ:Z

.field protected Ym:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field protected aa:Lcom/bytedance/sdk/openadsdk/aa/vS;

.field public uA:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/vS$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/vS;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->aa:Lcom/bytedance/sdk/openadsdk/aa/vS;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    return-void
.end method

.method private Sj(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 10

    new-instance v9, Lcom/bytedance/sdk/openadsdk/activity/vS$2;

    const-string v2, "Reward_executeMultiProcessCallback"

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/vS;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v9, v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method private sP(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;

    const-string v1, "FullScreen_executeMultiProcessCallback"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/vS;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method


# virtual methods
.method protected final EjP(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Ym:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj(I)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Ym:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Ym:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object p1
.end method

.method public EjP(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public HiB(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected final LD()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onAdVideoBarClick"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->aa()V

    return-void
.end method

.method public LqL()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onAdClose"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk()V

    return-void
.end method

.method public abstract RiZ()Z
.end method

.method public abstract Sj()Landroid/view/View;
.end method

.method public Sj(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public Sj(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 0

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 0

    return-void
.end method

.method protected Sj(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Ljava/lang/String;)V

    return-void
.end method

.method protected final Sj(ZILjava/lang/String;ILjava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "onRewardVerify"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZILjava/lang/String;ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p1, p6}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZI)V

    return-void
.end method

.method protected Sj(ZZZI)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZZZI)V

    return-void
.end method

.method public TKC(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected Yf()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->dNu()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onAdShow"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef()V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV()V

    return-void
.end method

.method public Zq()V
    .locals 0

    return-void
.end method

.method protected abstract a_()Z
.end method

.method public abstract b_()Ljava/lang/String;
.end method

.method public dNu()V
    .locals 0

    return-void
.end method

.method public kF()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected ley()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    move-result-object v0

    const-string v1, "videoForceBreak"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP(Lcom/bytedance/sdk/openadsdk/activity/vS;)V

    return-void
.end method

.method public sP(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public abstract sP(Z)V
.end method

.method protected abstract sU()Ljava/lang/String;
.end method

.method public sef()V
    .locals 0

    return-void
.end method

.method public uP()Lcom/bytedance/sdk/openadsdk/activity/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    return-object v0
.end method

.method public wE()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public abstract zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
.end method
