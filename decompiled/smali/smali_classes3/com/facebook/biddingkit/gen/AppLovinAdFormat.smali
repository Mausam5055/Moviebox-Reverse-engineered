.class public final enum Lcom/facebook/biddingkit/gen/AppLovinAdFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/gen/AppLovinAdFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

.field public static final enum BANNER:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

.field public static final enum INTERSTITIAL:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

.field public static final enum MREC:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

.field public static final enum REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;


# instance fields
.field private final mFirstFormatLabel:Ljava/lang/String;

.field private final mHeight:I

.field private final mInstl:I

.field private final mRewarded:Ljava/lang/String;

.field private final mSecondFormatLabel:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v9, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    const-string v7, "banner"

    const-string v8, "video"

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x1e0

    const/4 v5, 0x1

    const-string v6, ""

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->INTERSTITIAL:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    new-instance v0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    const-string v16, ""

    const-string v17, "banner"

    const-string v11, "BANNER"

    const/4 v12, 0x1

    const/16 v13, 0x140

    const/16 v14, 0x32

    const/4 v15, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->BANNER:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    new-instance v10, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    const-string v7, ""

    const-string v8, "banner"

    const-string v2, "MREC"

    const/4 v3, 0x2

    const/16 v4, 0x12c

    const/16 v5, 0xfa

    const/4 v6, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->MREC:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    new-instance v1, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    const-string v18, "banner"

    const-string v19, "video"

    const-string v12, "REWARDED_VIDEO"

    const/4 v13, 0x3

    const/16 v14, 0x1e0

    const/16 v15, 0x140

    const/16 v16, 0x0

    const-string v17, "rewarded"

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v10, v2, v0

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sput-object v2, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->$VALUES:[Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mWidth:I

    iput p4, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mHeight:I

    iput p5, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mInstl:I

    iput-object p6, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mRewarded:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mFirstFormatLabel:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mSecondFormatLabel:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/gen/AppLovinAdFormat;
    .locals 1

    const-class v0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/gen/AppLovinAdFormat;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->$VALUES:[Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    return-object v0
.end method


# virtual methods
.method public getFormatLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mFirstFormatLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mWidth:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mHeight:I

    :goto_0
    return p1
.end method

.method public getInstl()I
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mInstl:I

    return v0
.end method

.method public getRewarded()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mRewarded:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondFormatLabelLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mSecondFormatLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mHeight:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->mWidth:I

    :goto_0
    return p1
.end method
