.class public final enum Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CryptDataScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

.field public static final enum APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

.field public static final enum BIDDING_TOKEN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

.field public static final enum DISLIKE:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

.field public static final enum DUAL_EVENT:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

.field public static final enum GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

.field public static final enum REWARD_VERIFY:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

.field public static final enum SETTINGS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

.field public static final enum STATS_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

.field public static final enum UNKNOWN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->UNKNOWN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    new-instance v1, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const-string v3, "SETTINGS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->SETTINGS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    new-instance v3, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const-string v5, "GET_ADS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    new-instance v5, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const-string v7, "APP_LOG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    new-instance v7, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const-string v9, "STATS_LOG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->STATS_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    new-instance v9, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const-string v11, "REWARD_VERIFY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->REWARD_VERIFY:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    new-instance v11, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const-string v13, "DISLIKE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->DISLIKE:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    new-instance v13, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const-string v15, "BIDDING_TOKEN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->BIDDING_TOKEN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    new-instance v15, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const-string v14, "DUAL_EVENT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->DUAL_EVENT:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->$VALUES:[Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

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

    iput p3, p0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->$VALUES:[Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->value:I

    return v0
.end method
