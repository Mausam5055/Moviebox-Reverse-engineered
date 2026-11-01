.class public final Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 8

    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Lcom/transsion/search_pugc/fragment/result/adapter/b;

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
    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Lcom/transsion/search_pugc/fragment/result/adapter/b;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/transsion/search_pugc/bean/SearchResultItem;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Lcom/transsion/search_pugc/g;

    move-result-object v0

    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->j0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->n0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Lcom/transsion/search_pugc/bean/SearchTab;

    move-result-object v6

    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->m0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Lar/a;

    move-result-object p4

    invoke-virtual {p4}, Lar/a;->a()Lcom/transsion/search_pugc/bean/SecondTab;

    move-result-object v7

    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/search_pugc/g;->v(Lcom/transsion/search_pugc/bean/SearchResultItem;IJLjava/lang/String;Lcom/transsion/search_pugc/bean/SearchTab;Lcom/transsion/search_pugc/bean/SecondTab;)V

    :cond_3
    :goto_1
    return-void
.end method
