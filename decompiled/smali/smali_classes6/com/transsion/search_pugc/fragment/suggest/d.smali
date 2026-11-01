.class public final synthetic Lcom/transsion/search_pugc/fragment/suggest/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/d;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/d;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    check-cast p1, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;

    invoke-static {v0, p1}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
