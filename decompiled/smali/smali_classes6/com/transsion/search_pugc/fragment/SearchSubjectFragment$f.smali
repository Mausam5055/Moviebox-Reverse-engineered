.class public final Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->O0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->q0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->n0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->r0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->s0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->o0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->v0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$f;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/i;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lrq/i;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
