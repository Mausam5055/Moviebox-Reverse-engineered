.class final Lcom/transsion/home/fragment/rank/RankAllFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/rank/RankAllFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/rank/RankAllFragment;

.field final synthetic b:Lcom/transsion/home/bean/RankAllData;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/rank/RankAllFragment;Lcom/transsion/home/bean/RankAllData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->b:Lcom/transsion/home/bean/RankAllData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/i;I)V
    .locals 3

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/i;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/i;->G()V

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.transsion.home.fragment.rank.RankAllFragment.initView.<anonymous>.<anonymous> (RankAllFragment.kt:134)"

    const v2, 0x2b102aa

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const-string v1, "defaultCategory"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p2

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->b:Lcom/transsion/home/bean/RankAllData;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/home/bean/RankAllData;->getCurrentCategoryType()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->b:Lcom/transsion/home/bean/RankAllData;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/transsion/home/bean/RankAllData;->getCategoryList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_a

    check-cast p2, Ljava/lang/Iterable;

    instance-of v2, p2, Ljava/util/Collection;

    if-eqz v2, :cond_8

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/home/bean/CategoryType;

    invoke-virtual {v2}, Lcom/transsion/home/bean/CategoryType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_a
    :goto_4
    iget-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->b:Lcom/transsion/home/bean/RankAllData;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/transsion/home/bean/RankAllData;->getCurrentCategoryType()Ljava/lang/String;

    move-result-object v0

    :cond_b
    move-object v1, v0

    :cond_c
    :goto_5
    iget-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->b:Lcom/transsion/home/bean/RankAllData;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/transsion/home/bean/RankAllData;->getCategoryList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/transsion/home/fragment/rank/RankAllFragment;->i0(Ljava/util/List;Ljava/lang/String;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_f
    :goto_6
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/fragment/rank/RankAllFragment$c;->a(Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
