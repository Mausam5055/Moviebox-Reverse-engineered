.class final Lyq/j$b;
.super Ljava/lang/Object;

# interfaces
.implements Llz/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyq/j;->b(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyq/j$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/ResponseBody;)Lcom/transsion/search/bean/SearchSuggestEntity;
    .locals 9

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyq/b;->a:Lyq/b;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lyq/b;->e(Ljava/lang/String;)Lcom/transsion/search/bean/GoogleSuggestResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/search/bean/GoogleSuggestResponse;->getKeyword()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lyq/j$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/search/bean/GoogleSuggestResponse;->getSuggestions()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    new-instance v2, Lcom/transsion/search/bean/SuggestEntity;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/transsion/search/bean/SuggestEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/search/bean/VerticalRank;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Staff;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/transsion/search/bean/SearchSuggestEntity;

    const-string v2, ""

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/search/bean/SearchSuggestEntity;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lyq/j$b;->a(Lokhttp3/ResponseBody;)Lcom/transsion/search/bean/SearchSuggestEntity;

    move-result-object p1

    return-object p1
.end method
