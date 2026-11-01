.class public final synthetic Lcom/transsion/search_pugc/fragment/result/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/d;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/d;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    check-cast p1, Lcom/transsion/publish/model/PostEntity;

    invoke-static {v0, p1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->b0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;Lcom/transsion/publish/model/PostEntity;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
