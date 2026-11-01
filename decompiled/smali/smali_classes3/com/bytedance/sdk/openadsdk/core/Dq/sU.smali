.class public Lcom/bytedance/sdk/openadsdk/core/Dq/sU;
.super Lcom/bytedance/sdk/component/adexpress/sP/Sj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/adexpress/sP/Sj<",
        "Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;",
        ">;"
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/adexpress/sP/TKC;

.field private HiB:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

.field Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final TKC:Landroid/view/View;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

.field private final vS:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/sP/Sj;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->TKC:Landroid/view/View;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->vS:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sU;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->sP()V

    return-void
.end method

.method private sP()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/TKC;

    const/16 v1, 0x6b

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->TKC:Landroid/view/View;

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/component/adexpress/sP/TKC;->Sj(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->vS:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->Jcg()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->TKC:Landroid/view/View;

    const-string v2, "tt_express_backup_fl_tag_26"

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sef;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->getRealWidth()F

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->getRealHeight()F

    move-result v2

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(Z)V

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(D)V

    float-to-double v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(D)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->HiB:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->HiB:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    const-string v2, "backupview is null"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->HiB:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    const-string v2, "backup false"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic HiB()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->Sj()Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    move-result-object v0

    return-object v0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->HiB:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Dq/sU$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sU$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/sU;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/TKC;

    return-void
.end method
