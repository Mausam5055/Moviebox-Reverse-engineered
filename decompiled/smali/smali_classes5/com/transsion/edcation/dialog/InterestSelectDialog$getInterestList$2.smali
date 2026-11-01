.class public final Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/dialog/InterestSelectDialog;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/edcation/dialog/InterestSelectDialog;


# direct methods
.method constructor <init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->d:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->d:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-static {v0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->r0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->d:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->d:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->d:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    sget v0, Lcom/tn/lib/widget/R$string;->error_load_failed:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->d:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-virtual {p1}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->a0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/edcation/bean/EducationInterestResp;

    invoke-virtual {p0, p1}, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->e(Lcom/transsion/edcation/bean/EducationInterestResp;)V

    return-void
.end method

.method public e(Lcom/transsion/edcation/bean/EducationInterestResp;)V
    .locals 8

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->d:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-static {v0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->r0(Lcom/transsion/edcation/dialog/InterestSelectDialog;)Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/EducationInterestResp;->getOptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list is empty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->d:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/EducationInterestResp;->getOptions()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->d:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-static {v1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v3

    new-instance v5, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2$onSuccess$1;

    iget-object v1, p0, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2;->d:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-direct {v5, v1, p1, v0}, Lcom/transsion/edcation/dialog/InterestSelectDialog$getInterestList$2$onSuccess$1;-><init>(Lcom/transsion/edcation/dialog/InterestSelectDialog;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_3
    :goto_1
    return-void
.end method
