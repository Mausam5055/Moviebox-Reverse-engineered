.class public final Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/result/SearchResultTabFragment;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search/fragment/result/SearchResultTabFragment$c$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 9

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->n0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/fragment/result/adapter/a;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-lt p1, p4, :cond_1

    return-void

    :cond_1
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->n0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/fragment/result/adapter/a;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/adapter/a;->Q1()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v7, p4

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->k0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :goto_3
    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->n0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/fragment/result/adapter/a;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/search/fragment/result/ResultWrapData;

    goto :goto_4

    :cond_4
    move-object p4, v0

    :goto_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/ResultWrapData;->getType()Lcom/transsion/search/fragment/result/ResultType;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_5

    :cond_6
    sget-object v1, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_5
    const/4 v1, 0x1

    const-string v2, "mb_sug"

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto/16 :goto_e

    :cond_7
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/ResultWrapData;->getVerticalRank()Lcom/transsion/search/bean/VerticalRank;

    move-result-object v1

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->o0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->p0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_8

    goto :goto_6

    :cond_8
    move-object v8, p4

    goto :goto_7

    :cond_9
    :goto_6
    move-object v8, v2

    :goto_7
    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/search/widget/d$a;->j(Lcom/transsion/search/bean/VerticalRank;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_a
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/ResultWrapData;->getGroups()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v1

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->o0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->p0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    move-result-object p4

    if-eqz p4, :cond_c

    invoke-virtual {p4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_b

    goto :goto_8

    :cond_b
    move-object v8, p4

    goto :goto_9

    :cond_c
    :goto_8
    move-object v8, v2

    :goto_9
    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/search/widget/d$a;->a(Lcom/transsion/moviedetailapi/bean/Group;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_d
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/ResultWrapData;->getStaff()Lcom/transsion/moviedetailapi/bean/Staff;

    move-result-object v1

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->o0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->p0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    move-result-object p4

    if-eqz p4, :cond_f

    invoke-virtual {p4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_e

    goto :goto_a

    :cond_e
    move-object v8, p4

    goto :goto_b

    :cond_f
    :goto_a
    move-object v8, v2

    :goto_b
    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/search/widget/d$a;->r(Lcom/transsion/moviedetailapi/bean/Staff;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_10
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    invoke-virtual {p4}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->o0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object p4, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$c;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->p0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    move-result-object p4

    if-eqz p4, :cond_12

    invoke-virtual {p4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_11

    goto :goto_c

    :cond_11
    move-object v8, p4

    goto :goto_d

    :cond_12
    :goto_c
    move-object v8, v2

    :goto_d
    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/search/widget/d$a;->t(Lcom/transsion/moviedetailapi/bean/Subject;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-void
.end method
