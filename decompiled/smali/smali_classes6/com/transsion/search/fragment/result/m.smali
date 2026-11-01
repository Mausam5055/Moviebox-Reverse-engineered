.class public final synthetic Lcom/transsion/search/fragment/result/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/result/m;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/result/m;->a:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    check-cast p1, Lcom/transsion/publish/model/PostEntity;

    invoke-static {v0, p1}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->c0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;Lcom/transsion/publish/model/PostEntity;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
