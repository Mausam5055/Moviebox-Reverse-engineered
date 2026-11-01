.class public final synthetic Lcom/transsion/search/fragment/result/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/result/SearchResultFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/result/SearchResultFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/result/a;->a:Lcom/transsion/search/fragment/result/SearchResultFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/result/a;->a:Lcom/transsion/search/fragment/result/SearchResultFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/result/SearchResultFragment;->b0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Lcom/transsion/search/fragment/result/SearchResultViewModel;

    move-result-object v0

    return-object v0
.end method
