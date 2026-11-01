.class public Lcom/bytedance/sdk/openadsdk/TKC/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/uP;


# instance fields
.field private EjP:Z

.field private HiB:Lcom/bytedance/sdk/openadsdk/core/uP$Sj;

.field public Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

.field private TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

.field private final sP:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private EjP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->show()V

    :cond_1
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/TKC/EjP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    return-object p0
.end method

.method private Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/TKC/aa;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getDislikeManager()Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/TKC/TKC$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/core/uP$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/uP$Sj;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->EjP()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->show()V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/uP$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/uP$Sj;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->EjP:Z

    return-void
.end method

.method public TKC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->EjP:Z

    return v0
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->destroy()V

    :cond_0
    return-void
.end method
