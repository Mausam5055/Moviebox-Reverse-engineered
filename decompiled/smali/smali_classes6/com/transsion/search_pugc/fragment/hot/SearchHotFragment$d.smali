.class public final Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;
.super Lj00/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-direct {p0}, Lj00/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getRankList$p(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-static {v0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getIndicatorView(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroid/content/Context;)Lj00/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getRankList$p(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/search_pugc/bean/HotRank;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search_pugc/bean/HotRank;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-static {v1, p1, p2, v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getIndicatorText(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroid/content/Context;ILjava/lang/String;)Lj00/d;

    move-result-object p1

    return-object p1
.end method
