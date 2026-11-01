.class public abstract Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lu5/b;
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;
.implements Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;


# instance fields
.field protected final Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected EjP:Landroid/view/SurfaceHolder;

.field private final FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected Fmk:Z

.field protected HiB:Landroid/graphics/SurfaceTexture;

.field private JcM:J

.field protected Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

.field protected LD:Ljava/lang/Runnable;

.field protected LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

.field private Mts:I

.field protected RiZ:Z

.field protected Sj:Ljava/lang/String;

.field protected TEQ:J

.field protected final TKC:Lcom/bytedance/sdk/component/utils/LqL;

.field protected TzV:Z

.field private WMZ:Z

.field protected Yf:J

.field protected final Ym:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected Zq:Z

.field protected final aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected dNu:Z

.field protected dx:Z

.field private fF:J

.field protected ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

.field protected kF:Z

.field protected ley:Lu5/b$b;

.field protected final sP:I

.field protected sU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected sef:Z

.field protected uA:J

.field protected final uP:Landroid/view/ViewGroup;

.field protected uvD:Z

.field protected vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

.field protected wE:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lu5/b$d;",
            ">;"
        }
    .end annotation
.end field

.field protected zR:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/view/ViewGroup;)V
    .locals 5
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TTAD.VideoController"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP:I

    new-instance v0, Lcom/bytedance/sdk/component/utils/LqL;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sef:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TzV:Z

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR:Z

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD:Ljava/lang/Runnable;

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->JcM:J

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->WMZ:Z

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Mts:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    return-void
.end method

.method private JcM()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(ZZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Jcg()V

    :cond_0
    return-void
.end method

.method private Sj(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->JcM()V

    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {p3, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(J)V

    return-void
.end method

.method private TKC(I)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(I)Z

    move-result p1

    return p1
.end method

.method private TzV()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    instance-of v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/EjP;

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final Dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->uvD()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract synthetic EjP()V
.end method

.method public final EjP(J)V
    .locals 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(ZJZ)V

    :cond_1
    return-void
.end method

.method public final EjP(Lu5/c;Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(Landroid/view/ViewGroup;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(I)V

    return-void

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(ZI)V

    return-void
.end method

.method public EjP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR:Z

    return-void
.end method

.method public synthetic Fmk()Lu5/c;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR()Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    move-result-object v0

    return-object v0
.end method

.method public HiB()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    return-wide v0
.end method

.method public final HiB(Lu5/c;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Lu5/c;Landroid/view/View;Z)V

    return-void
.end method

.method protected HiB(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    return-void
.end method

.method public final Jcg()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq()I

    move-result v0

    return v0
.end method

.method public LD()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Mts:I

    return v0
.end method

.method protected final LqL()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    return-void
.end method

.method protected RiZ()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TzV()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->RiZ()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Landroid/graphics/SurfaceTexture;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->EjP:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TzV()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->EjP:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Landroid/view/SurfaceHolder;)V

    :cond_2
    return-void
.end method

.method public final Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym()V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL()V

    :cond_1
    return-void
.end method

.method public final Sj(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    :cond_3
    check-cast v0, Landroid/app/Activity;

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/16 p1, 0x400

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public Sj(J)V
    .locals 2

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    return-void
.end method

.method protected Sj(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/vS/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/vS/Sj;->TKC()Z

    move-result v0

    if-eqz v0, :cond_1

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide p3, 0x3fd3333333333333L    # 0.3

    cmpl-double p1, p1, p3

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->FPG:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    move-result-object p1

    const-string p2, "videoPercent30"

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_1
    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected final Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sef()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(JZ)V

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->kF()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-static {v1, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Landroid/content/Context;Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public final Sj(Lcom/bytedance/sdk/openadsdk/core/widget/TzV$Sj;Ljava/lang/String;)V
    .locals 1

    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$4;->Sj:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TzV:Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj()V

    return-void
.end method

.method protected Sj(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->zR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Sj(Lu5/b$a;)V
    .locals 0

    return-void
.end method

.method public final Sj(Lu5/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lu5/b$b;

    return-void
.end method

.method public final Sj(Lu5/b$d;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->wE:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final Sj(Lu5/c;I)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->fF:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(JZ)V

    return-void
.end method

.method public final Sj(Lu5/c;IZ)V
    .locals 4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-long p1, p2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    mul-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    long-to-int p1, p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->fF:J

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->fF:J

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_2

    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->fF:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(J)V

    :cond_2
    return-void
.end method

.method public Sj(Lu5/c;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB:Landroid/graphics/SurfaceTexture;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU()V

    return-void
.end method

.method public Sj(Lu5/c;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->EjP:Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU()V

    return-void
.end method

.method public abstract synthetic Sj(Lu5/c;Landroid/view/View;)V
.end method

.method public Sj(Lu5/c;Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public final Sj(Lu5/c;Landroid/view/View;ZZ)V
    .locals 1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj()V

    :cond_0
    if-eqz p3, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->wE()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(ZZ)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(ZZZ)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS()V

    return-void
.end method

.method protected final Sj(Ly5/a;)V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(Ly5/a;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR()Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->TKC(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->EjP(Z)V

    :cond_0
    return-void
.end method

.method public abstract synthetic Sj(ZI)V
.end method

.method public final Sj(ZLjava/lang/String;)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lz5/a;ZLjava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz p2, :cond_2

    invoke-static {}, Lf6/a;->x()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Z)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public abstract synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z
.end method

.method public final TEQ()I
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    invoke-static {v0, v1, v2, v3}, Lc6/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public abstract synthetic TKC()V
.end method

.method public TKC(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    return-void
.end method

.method public final TKC(Lu5/c;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uA()V

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(ZI)V

    return-void
.end method

.method public final TKC(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->WMZ:Z

    return-void
.end method

.method protected final Yf()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lz5/a;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    return-void
.end method

.method public Ym()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    return v0
.end method

.method public Zq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sef:Z

    return v0
.end method

.method public aa()Lt5/a;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    return-object v0
.end method

.method public dNu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected dx()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final fF()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Uc()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/kF/Sj;->Sj(Ljava/util/List;ZLcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public ib()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    return v0
.end method

.method public kF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->WMZ:Z

    return v0
.end method

.method protected final ley()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR()Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    return-void
.end method

.method public abstract synthetic sP()V
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Mts:I

    return-void
.end method

.method public sP(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->JcM:J

    return-void
.end method

.method public sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Dq()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP(Ljava/lang/String;)V

    return-void
.end method

.method protected final sP(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lz5/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method protected sP(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final sP(Lu5/c;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS()V

    :cond_0
    return-void
.end method

.method public sP(Lu5/c;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Z)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU()V

    return-void
.end method

.method public sP(Lu5/c;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->EjP:Landroid/view/SurfaceHolder;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Z)V

    :cond_0
    return-void
.end method

.method public final sP(Lu5/c;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Lu5/c;Landroid/view/View;ZZ)V

    return-void
.end method

.method public final sP(Lu5/c;Landroid/view/View;ZZ)V
    .locals 0

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    move p1, p4

    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Z)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->wE:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu5/b$d;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    invoke-interface {p1, p2}, Lu5/b$d;->Sj(Z)V

    :cond_6
    return-void
.end method

.method public final sP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sef:Z

    return-void
.end method

.method protected sU()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public sef()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    return v0
.end method

.method public final uA()J
    .locals 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final uP()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final uvD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->kF:Z

    return v0
.end method

.method public final vS()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef()J

    move-result-wide v0

    return-wide v0
.end method

.method public final wE()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zR()Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    return-object v0
.end method
