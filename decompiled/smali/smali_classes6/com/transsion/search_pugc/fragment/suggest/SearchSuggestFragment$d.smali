.class public final Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$d;
.super Landroidx/recyclerview/widget/DiffUtil$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/search_pugc/bean/SearchSuggestItem;Lcom/transsion/search_pugc/bean/SearchSuggestItem;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->hashCode()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    check-cast p2, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$d;->a(Lcom/transsion/search_pugc/bean/SearchSuggestItem;Lcom/transsion/search_pugc/bean/SearchSuggestItem;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    check-cast p2, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$d;->b(Lcom/transsion/search_pugc/bean/SearchSuggestItem;Lcom/transsion/search_pugc/bean/SearchSuggestItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/transsion/search_pugc/bean/SearchSuggestItem;Lcom/transsion/search_pugc/bean/SearchSuggestItem;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchSuggestItem;->hashCode()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
