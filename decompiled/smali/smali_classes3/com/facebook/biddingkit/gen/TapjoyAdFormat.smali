.class public final enum Lcom/facebook/biddingkit/gen/TapjoyAdFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/gen/TapjoyAdFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

.field public static final enum INTERSTITIAL:Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

.field public static final enum REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/TapjoyAdFormat;


# instance fields
.field private final mFormatLabel:Ljava/lang/String;

.field private final mIsRewarded:Z

.field private final mIsSkippable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    const/4 v4, 0x0

    const-string v5, "video"

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v6, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->INTERSTITIAL:Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    new-instance v0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    const/4 v11, 0x1

    const-string v12, "video"

    const-string v8, "REWARDED_VIDEO"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;-><init>(Ljava/lang/String;IZZLjava/lang/String;)V

    sput-object v0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->$VALUES:[Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->mIsSkippable:Z

    iput-boolean p4, p0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->mIsRewarded:Z

    iput-object p5, p0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->mFormatLabel:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/gen/TapjoyAdFormat;
    .locals 1

    const-class v0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/gen/TapjoyAdFormat;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->$VALUES:[Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    return-object v0
.end method


# virtual methods
.method public getFormatLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->mFormatLabel:Ljava/lang/String;

    return-object v0
.end method

.method public isRewarded()I
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->mIsRewarded:Z

    return v0
.end method

.method public isSkippable()I
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->mIsSkippable:Z

    return v0
.end method
