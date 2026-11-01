.class public abstract Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;


# instance fields
.field private EjP:Landroid/view/View;

.field private HiB:Ljava/lang/String;

.field protected Sj:Ljava/lang/String;

.field protected final TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

.field protected sP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->HiB:Ljava/lang/String;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj()V

    :cond_0
    return-void
.end method

.method public getDislikeManager()Lcom/bytedance/sdk/openadsdk/TKC/TEQ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    return-object v0
.end method

.method public abstract getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.end method

.method public abstract getLayoutView()Landroid/view/View;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getLayoutView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->EjP:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->EjP:Landroid/view/View;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onSuggestionSubmit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMaterialMeta(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->Sj:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->sP:Ljava/util/List;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->sP:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Ljava/util/List;)V

    return-void
.end method
