.class public final Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lkh/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->e0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/fragment/suggest/e;

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
    .locals 3

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->e0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/fragment/suggest/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->h0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/g;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    invoke-static {v1}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->f0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->g0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/transsion/search_pugc/g;->A(Lcom/transsion/search_pugc/bean/SearchSuggestItem;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
