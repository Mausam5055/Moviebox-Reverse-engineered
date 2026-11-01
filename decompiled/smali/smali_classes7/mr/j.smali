.class public final synthetic Lmr/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmr/j;->a:Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmr/j;->a:Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-static {v0, p1, p2}, Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;->n0(Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
