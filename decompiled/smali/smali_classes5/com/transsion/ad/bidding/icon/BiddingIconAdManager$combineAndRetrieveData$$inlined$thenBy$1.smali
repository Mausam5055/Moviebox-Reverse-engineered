.class public final Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->G(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $isHiFirst$inlined:Z

.field final synthetic $this_thenBy:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    iput-boolean p2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;->$isHiFirst$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    check-cast p1, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;->$isHiFirst$inlined:Z

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    move-result p1

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    goto :goto_0

    :goto_1
    check-cast p2, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;->$isHiFirst$inlined:Z

    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    move-result p2

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_3

    :cond_2
    neg-int p2, p2

    goto :goto_2

    :goto_3
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    :goto_4
    return v0
.end method
