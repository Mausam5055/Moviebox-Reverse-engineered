.class public final synthetic Lcom/transsion/search/fragment/result/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/result/i;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/result/i;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->g0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/fragment/result/SearchResultViewModel;

    move-result-object v0

    return-object v0
.end method
