.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;
.super Ljava/lang/Object;


# instance fields
.field private volatile Dq:J

.field private final EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Fmk:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private final HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile Jcg:J

.field final Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private TKC:Landroid/widget/FrameLayout;

.field private Ym:J

.field private Zq:Ljava/lang/String;

.field private aa:J

.field private dNu:Z

.field private final sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private sef:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private uA:Ljava/lang/String;

.field private uvD:Z

.field private volatile vS:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Ym:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->aa:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Zq:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uvD:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->vS:J

    return-wide v0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Jcg:J

    return-wide v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Ym:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Fmk:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Zq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uvD:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Ym:J

    return-wide v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->aa:J

    return-wide p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Jcg:J

    return-wide p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    return-object p0
.end method

.method private sef()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->efv()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$3;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Landroid/view/View;)V

    return-void
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->aa:J

    return-wide v0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef()V

    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Mts()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->FPG()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public EjP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uvD:Z

    return v0
.end method

.method public Fmk()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public HiB()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->vS:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void
.end method

.method public Jcg()V
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TEQ()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Fmk:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Fmk:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Mts()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Fmk:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->FPG()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public Sj()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->dNu:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->dNu:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP()V

    return-void
.end method

.method public Sj(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method public TEQ()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void
.end method

.method public TKC()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cF()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->efv()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;)V

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Landroid/view/View;)V

    return-void
.end method

.method public Ym()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Dq:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void
.end method

.method public aa()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Zq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC:Landroid/widget/FrameLayout;

    return-void
.end method

.method public uA()V
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Dq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Jcg:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Jcg:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Dq:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Zq:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public vS()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Dq:J

    return-void
.end method
