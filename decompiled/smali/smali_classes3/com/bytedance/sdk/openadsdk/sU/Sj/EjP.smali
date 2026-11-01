.class public Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;
.super Ljava/lang/Object;


# static fields
.field private static volatile sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;


# instance fields
.field private EjP:I

.field private HiB:I

.field private final Sj:Landroid/os/Handler;

.field private TKC:I

.field private final vS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->TKC:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->EjP:I

    const v0, 0x36ee80

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->HiB:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->vS:Ljava/util/ArrayList;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;

    const-string v1, "pag_pre_render_init"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$2;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj:Landroid/os/Handler;

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->EjP:I

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->TKC:I

    return p1
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    return-object v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->HiB:I

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->vS:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->HiB:I

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->EjP:I

    return p1
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/aa/vS;)Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;
    .locals 5
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cKW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->vS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->vS:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->Dq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->vS:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->vS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ(Z)V

    invoke-virtual {v3, p2, p3}, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/aa/vS;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$4;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$4;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)V

    const-string v0, "PL_use_pre_render"

    invoke-static {p1, p2, v0, p3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    return-object v3

    :cond_4
    :goto_2
    return-object v1
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cKW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public sP()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->TKC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
