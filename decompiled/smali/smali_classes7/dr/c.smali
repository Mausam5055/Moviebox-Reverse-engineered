.class public final synthetic Ldr/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldr/c;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldr/c;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    check-cast p1, Lcom/transsion/search_pugc/bean/UGCRankSearchData;

    invoke-static {v0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->m0(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Lcom/transsion/search_pugc/bean/UGCRankSearchData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
