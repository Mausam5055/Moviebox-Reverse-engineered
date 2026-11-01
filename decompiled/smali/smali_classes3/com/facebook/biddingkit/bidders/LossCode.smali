.class public final enum Lcom/facebook/biddingkit/bidders/LossCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/bidders/LossCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/bidders/LossCode;

.field public static final enum DID_NOT_PARTICIPATE:Lcom/facebook/biddingkit/bidders/LossCode;

.field public static final enum NO_BID:Lcom/facebook/biddingkit/bidders/LossCode;

.field public static final enum OUTBID:Lcom/facebook/biddingkit/bidders/LossCode;

.field public static final enum TIMEOUT:Lcom/facebook/biddingkit/bidders/LossCode;

.field public static final enum WIN:Lcom/facebook/biddingkit/bidders/LossCode;


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/facebook/biddingkit/bidders/LossCode;

    const-string v1, "WIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/biddingkit/bidders/LossCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/biddingkit/bidders/LossCode;->WIN:Lcom/facebook/biddingkit/bidders/LossCode;

    new-instance v1, Lcom/facebook/biddingkit/bidders/LossCode;

    const-string v3, "TIMEOUT"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/biddingkit/bidders/LossCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/biddingkit/bidders/LossCode;->TIMEOUT:Lcom/facebook/biddingkit/bidders/LossCode;

    new-instance v3, Lcom/facebook/biddingkit/bidders/LossCode;

    const-string v6, "NO_BID"

    const/16 v7, 0x9

    invoke-direct {v3, v6, v5, v7}, Lcom/facebook/biddingkit/bidders/LossCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/biddingkit/bidders/LossCode;->NO_BID:Lcom/facebook/biddingkit/bidders/LossCode;

    new-instance v6, Lcom/facebook/biddingkit/bidders/LossCode;

    const/4 v7, 0x3

    const/16 v8, 0x66

    const-string v9, "OUTBID"

    invoke-direct {v6, v9, v7, v8}, Lcom/facebook/biddingkit/bidders/LossCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/facebook/biddingkit/bidders/LossCode;->OUTBID:Lcom/facebook/biddingkit/bidders/LossCode;

    new-instance v8, Lcom/facebook/biddingkit/bidders/LossCode;

    const/4 v9, 0x4

    const/16 v10, 0x7d3

    const-string v11, "DID_NOT_PARTICIPATE"

    invoke-direct {v8, v11, v9, v10}, Lcom/facebook/biddingkit/bidders/LossCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/facebook/biddingkit/bidders/LossCode;->DID_NOT_PARTICIPATE:Lcom/facebook/biddingkit/bidders/LossCode;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/facebook/biddingkit/bidders/LossCode;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/facebook/biddingkit/bidders/LossCode;->$VALUES:[Lcom/facebook/biddingkit/bidders/LossCode;

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

    iput p3, p0, Lcom/facebook/biddingkit/bidders/LossCode;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/bidders/LossCode;
    .locals 1

    const-class v0, Lcom/facebook/biddingkit/bidders/LossCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/bidders/LossCode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/bidders/LossCode;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/bidders/LossCode;->$VALUES:[Lcom/facebook/biddingkit/bidders/LossCode;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/bidders/LossCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/bidders/LossCode;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/bidders/LossCode;->mCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
