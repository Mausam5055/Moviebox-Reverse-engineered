.class public final Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->y0()V
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

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/search_pugc/bean/SearchSuggestItem;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "keyWord"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mOps"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-virtual {p2}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p2

    check-cast p2, Lrq/i;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lrq/i;->b:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {p2, p3}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->s0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->t0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Z)V

    iget-object p2, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->getWord()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, ""

    :cond_2
    invoke-static {p2, p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->u0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    const-string p2, "suggest"

    invoke-virtual {p1, p2}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->L0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->o0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$c;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {p3}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->p0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Lcom/transsion/search_pugc/g;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/transsion/search_pugc/g;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
