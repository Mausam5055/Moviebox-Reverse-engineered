.class public final enum Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

.field public static final enum FIRST_PRICE:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

.field public static final enum SECOND_PRICE:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    const-string v1, "FIRST_PRICE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->FIRST_PRICE:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    new-instance v1, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    const-string v4, "SECOND_PRICE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->SECOND_PRICE:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    new-array v4, v5, [Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->$VALUES:[Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;
    .locals 1

    const-class v0, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->$VALUES:[Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->mValue:I

    return v0
.end method
