.class public final synthetic Lcp/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcp/a;->a:Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcp/a;->a:Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;

    check-cast p1, Lcom/transsion/postdetail/bean/favorite/FeedFavorData;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;->j0(Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;Lcom/transsion/postdetail/bean/favorite/FeedFavorData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
