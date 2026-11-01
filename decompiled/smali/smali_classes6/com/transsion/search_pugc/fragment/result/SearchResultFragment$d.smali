.class public final Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$d;
.super Lj00/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$d;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-direct {p0}, Lj00/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$d;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$d;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {v0, p1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->h0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;Landroid/content/Context;)Lj00/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$d;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/search_pugc/bean/SearchTab;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/search_pugc/bean/SearchTab;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1, p2, v1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->g0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;Landroid/content/Context;ILjava/lang/String;)Lj00/d;

    move-result-object p1

    return-object p1
.end method
