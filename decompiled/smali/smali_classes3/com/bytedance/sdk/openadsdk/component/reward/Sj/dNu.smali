.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;
.super Ljava/lang/Object;


# instance fields
.field private final Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final EjP:Z

.field private Fmk:I

.field protected HiB:Z

.field private final Jcg:Landroid/app/Activity;

.field private RiZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

.field protected Sj:Z

.field private final TEQ:Ljava/lang/String;

.field TKC:Z

.field private TzV:Z

.field private Ym:J

.field private Zq:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aa:J

.field private final dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field sP:Z

.field private sU:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field private sef:Ljava/lang/String;

.field private uA:Landroid/widget/FrameLayout;

.field private uvD:Z

.field vS:Lu5/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg:Landroid/app/Activity;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->EjP:Z

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TEQ:Ljava/lang/String;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq:Ljava/util/HashSet;

    return-void
.end method

.method private Mts()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v0}, Lu5/b;->HiB()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->TKC()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->sP()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v0}, Lu5/b;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v0}, Lu5/b;->TKC()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj:Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    return p0
.end method

.method private Sj(JZ)Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lx5/b;

    move-result-object v0

    invoke-interface {v0}, Lx5/b;->Sj()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v2

    invoke-virtual {v2}, Ly5/b;->G()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP:Z

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    invoke-virtual {v0, p3}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput v3, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {p1, v0}, Lu5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef:Ljava/lang/String;

    return-object p0
.end method

.method private sP(JJ)V
    .locals 5

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    if-ltz v1, :cond_2

    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_2

    int-to-long v3, v1

    cmp-long p3, v3, p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq:Ljava/util/HashSet;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    int-to-long p3, p3

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)V

    int-to-long p3, v0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->ley()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq:Ljava/util/HashSet;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public Dq()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->aa:J

    return-wide v0
.end method

.method public EjP()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Fmk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lu5/b;->TKC()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    return-void
.end method

.method public HiB()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->uvD()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public JcM()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->FPG()V

    :cond_0
    return-void
.end method

.method public Jcg()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->HiB()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym:J

    return-wide v0
.end method

.method public LD()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->JcM()V

    :cond_0
    return-void
.end method

.method public LqL()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->Sj()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public RiZ()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->Jcg()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    return-object v0
.end method

.method public Sj(II)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(I)V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {p1}, Lu5/b;->Fmk()Lu5/c;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->EjP(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    :cond_0
    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sef:Ljava/lang/String;

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym:J

    return-void
.end method

.method public Sj(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->aa:J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP(JJ)V

    return-void
.end method

.method public Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TzV:Z

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->RiZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;)V

    return-void

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->RiZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;)V

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->qRN:Z

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Fmk(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->EjP()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->vS()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->RiZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Mts()V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->EjP()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onContinue throw Exception :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAD.RFVideoPlayerMag"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Z)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->WM()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TKC()J

    move-result-wide v0

    :cond_0
    move-wide v5, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v1}, Lu5/b;->vS()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v3}, Lu5/b;->aa()Lt5/a;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;JLt5/a;)Lorg/json/JSONObject;

    move-result-object v8

    :try_start_0
    const-string v0, "auto_click"

    invoke-virtual {v8, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TEQ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TzV()I

    move-result v7

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    move-object v4, p1

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;JILorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sU()J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TzV()I

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->JcM()V

    return-void
.end method

.method public Sj(Lu5/b$b;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu5/b;->Sj(Lu5/b$b;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj:Z

    return-void
.end method

.method public Sj(ZLcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Z)V
    .locals 0

    if-eqz p3, :cond_2

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->EjP()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Zq()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Mts()V

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lu5/b;->Sj(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->ib()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->kF()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V

    :cond_3
    :try_start_0
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean p5, p5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    invoke-direct {p0, p1, p2, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(JZ)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "TTAD.RFVideoPlayerMag"

    const-string p5, "playVideo: "

    invoke-static {p2, p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v1, :cond_4

    if-nez p3, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Ljava/util/Map;)V

    :cond_4
    return v1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public TEQ()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v0}, Lu5/b;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardFullVideoPlayerManager onPause throw Exception :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public TKC()Lz5/a;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->TzV()Lz5/a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lu5/b;->Fmk()Lu5/c;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public TKC(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TzV:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p1

    invoke-virtual {p1}, Ly5/b;->N()I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ly5/b;->s(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(I)V

    return-void
.end method

.method public TzV()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->TEQ()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public WMZ()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Wjd()V

    :cond_0
    return-void
.end method

.method public Yf()D
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP()J

    move-result-wide v0

    :goto_0
    long-to-double v0, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ly5/b;->K()D

    move-result-wide v1

    invoke-virtual {v0}, Ly5/b;->N()I

    move-result v0

    int-to-double v3, v0

    mul-double v0, v1, v3

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->dNu:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->tz:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    if-eqz v2, :cond_3

    double-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj(J)V

    :cond_3
    return-wide v0
.end method

.method public Ym()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->vS()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Zq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->sP()V

    :cond_0
    return-void
.end method

.method public aa()Lt5/a;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dNu()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->Dq()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public dx()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->Dq()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fF()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Mts()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ib()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kF()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ley()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->HiB:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uvD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause throw Exception :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAD.RFVideoPlayerMag"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected sP(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->zR()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->uA()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Sj(JZ)Z

    :cond_0
    return-void
.end method

.method public sP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC:Z

    return-void
.end method

.method public sP()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sU()J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->Dq()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v2}, Lu5/b;->vS()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sef()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->EjP()V

    :cond_0
    return-void
.end method

.method public uA()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Ym:J

    return-wide v0
.end method

.method public uP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC:Z

    return v0
.end method

.method public uvD()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu5/b;->Sj()V

    :cond_0
    return-void
.end method

.method public vS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj:Z

    return v0
.end method

.method public wE()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Fmk()V

    return-void
.end method

.method public zR()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    invoke-interface {v0}, Lu5/b;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->Jcg()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lt5/a;->Dq()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->WMZ()V

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Sj(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->vS:Lu5/b;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->WMZ()V

    :cond_3
    return v2

    :cond_4
    return v1
.end method
