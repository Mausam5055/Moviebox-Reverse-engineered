.class public final Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lkh/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->d0(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search/fragment/suggest/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

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

.method public onItemViewVisible(ZI)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    invoke-static {p1}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->d0(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search/fragment/suggest/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/bean/SuggestEntity;

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    invoke-static {p1}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->e0(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    invoke-static {p1}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->f0(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    invoke-static {p1}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->g0(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/search/widget/d$a;->v(Lcom/transsion/search/bean/SuggestEntity;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
