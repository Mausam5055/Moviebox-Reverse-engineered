.class public Lcom/bytedance/sdk/openadsdk/TKC/EjP;
.super Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

.field private HiB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "tt_dislikeDialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ib;->vS(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p4}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->Sj:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->sP:Ljava/util/List;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

    return-object p0
.end method

.method private Sj()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_0
    return-void
.end method

.method private sP()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/EjP$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TKC/EjP$1;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/EjP;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/EjP$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TKC/EjP$2;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/EjP;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public Sj(I)V
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->HiB:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;->Sj()V

    return-void

    :cond_1
    sget v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sP:I

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sP()Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;->Sj(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    nop

    :cond_4
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->HiB:Ljava/lang/String;

    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x78

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public getLayoutView()Landroid/view/View;
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/uA;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->sP:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TKC/uA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;Ljava/util/List;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->Sj()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->sP()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->Sj:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->sP:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :catchall_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 0

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
