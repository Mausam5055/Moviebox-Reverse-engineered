.class public final synthetic Lcom/transsion/ad/bidding/nativead/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    check-cast p2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-static {p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I

    move-result p1

    return p1
.end method
