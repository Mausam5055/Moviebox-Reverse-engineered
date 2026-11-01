.class public final enum Lcom/facebook/biddingkit/gen/ChartboostAdFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/gen/ChartboostAdFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

.field public static final enum BANNER:Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

.field public static final enum INTERSTITIAL:Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

.field public static final enum REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/ChartboostAdFormat;


# instance fields
.field private final mHasVideo:Z

.field private final mHeight:I

.field private final mInstl:I

.field private final mPlacementType:Ljava/lang/String;

.field private final mPos:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v9, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    const/4 v7, 0x7

    const-string v8, "interstitial"

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x1e0

    const/16 v6, 0x140

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;-><init>(Ljava/lang/String;IZIIIILjava/lang/String;)V

    sput-object v9, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->INTERSTITIAL:Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    new-instance v0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    const/16 v17, 0x7

    const-string v18, "rewarded"

    const-string v11, "REWARDED_VIDEO"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/16 v15, 0x1e0

    const/16 v16, 0x140

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;-><init>(Ljava/lang/String;IZIIIILjava/lang/String;)V

    sput-object v0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    new-instance v1, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    const/16 v26, 0x1

    const-string v27, "banner"

    const-string v20, "BANNER"

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x32

    const/16 v25, 0x140

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v27}, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;-><init>(Ljava/lang/String;IZIIIILjava/lang/String;)V

    sput-object v1, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->BANNER:Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->$VALUES:[Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZIIIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mHasVideo:Z

    iput p4, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mInstl:I

    iput p5, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mHeight:I

    iput p6, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mWidth:I

    iput p7, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mPos:I

    iput-object p8, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mPlacementType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/gen/ChartboostAdFormat;
    .locals 1

    const-class v0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/gen/ChartboostAdFormat;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->$VALUES:[Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mHeight:I

    return v0
.end method

.method public getInstl()I
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mInstl:I

    return v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mPlacementType:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()I
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mPos:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mWidth:I

    return v0
.end method

.method public hasVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/biddingkit/gen/ChartboostAdFormat;->mHasVideo:Z

    return v0
.end method
