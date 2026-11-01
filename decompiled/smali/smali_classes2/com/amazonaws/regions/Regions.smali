.class public final enum Lcom/amazonaws/regions/Regions;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/regions/Regions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/regions/Regions;

.field public static final enum AF_SOUTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_NORTHEAST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum CA_CENTRAL_1:Lcom/amazonaws/regions/Regions;

.field public static final enum CN_NORTHWEST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum CN_NORTH_1:Lcom/amazonaws/regions/Regions;

.field public static final DEFAULT_REGION:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_CENTRAL_1:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_NORTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_SOUTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_WEST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_WEST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_WEST_3:Lcom/amazonaws/regions/Regions;

.field public static final enum GovCloud:Lcom/amazonaws/regions/Regions;

.field public static final enum ME_SOUTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum SA_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_EAST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum US_GOV_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_WEST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_WEST_2:Lcom/amazonaws/regions/Regions;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lcom/amazonaws/regions/Regions;

    const/4 v1, 0x0

    const-string v2, "us-gov-west-1"

    const-string v3, "GovCloud"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->GovCloud:Lcom/amazonaws/regions/Regions;

    new-instance v2, Lcom/amazonaws/regions/Regions;

    const/4 v3, 0x1

    const-string v4, "us-gov-east-1"

    const-string v5, "US_GOV_EAST_1"

    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/amazonaws/regions/Regions;->US_GOV_EAST_1:Lcom/amazonaws/regions/Regions;

    new-instance v4, Lcom/amazonaws/regions/Regions;

    const/4 v5, 0x2

    const-string v6, "us-east-1"

    const-string v7, "US_EAST_1"

    invoke-direct {v4, v7, v5, v6}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazonaws/regions/Regions;

    new-instance v6, Lcom/amazonaws/regions/Regions;

    const/4 v7, 0x3

    const-string v8, "us-east-2"

    const-string v9, "US_EAST_2"

    invoke-direct {v6, v9, v7, v8}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/amazonaws/regions/Regions;->US_EAST_2:Lcom/amazonaws/regions/Regions;

    new-instance v8, Lcom/amazonaws/regions/Regions;

    const/4 v9, 0x4

    const-string v10, "us-west-1"

    const-string v11, "US_WEST_1"

    invoke-direct {v8, v11, v9, v10}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/amazonaws/regions/Regions;->US_WEST_1:Lcom/amazonaws/regions/Regions;

    new-instance v10, Lcom/amazonaws/regions/Regions;

    const/4 v11, 0x5

    const-string v12, "us-west-2"

    const-string v13, "US_WEST_2"

    invoke-direct {v10, v13, v11, v12}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazonaws/regions/Regions;

    new-instance v12, Lcom/amazonaws/regions/Regions;

    const/4 v13, 0x6

    const-string v14, "eu-south-1"

    const-string v15, "EU_SOUTH_1"

    invoke-direct {v12, v15, v13, v14}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/amazonaws/regions/Regions;->EU_SOUTH_1:Lcom/amazonaws/regions/Regions;

    new-instance v14, Lcom/amazonaws/regions/Regions;

    const/4 v15, 0x7

    const-string v13, "eu-west-1"

    const-string v11, "EU_WEST_1"

    invoke-direct {v14, v11, v15, v13}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/amazonaws/regions/Regions;->EU_WEST_1:Lcom/amazonaws/regions/Regions;

    new-instance v11, Lcom/amazonaws/regions/Regions;

    const/16 v13, 0x8

    const-string v15, "eu-west-2"

    const-string v9, "EU_WEST_2"

    invoke-direct {v11, v9, v13, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/amazonaws/regions/Regions;->EU_WEST_2:Lcom/amazonaws/regions/Regions;

    new-instance v9, Lcom/amazonaws/regions/Regions;

    const/16 v15, 0x9

    const-string v13, "eu-west-3"

    const-string v7, "EU_WEST_3"

    invoke-direct {v9, v7, v15, v13}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/amazonaws/regions/Regions;->EU_WEST_3:Lcom/amazonaws/regions/Regions;

    new-instance v7, Lcom/amazonaws/regions/Regions;

    const/16 v13, 0xa

    const-string v15, "eu-central-1"

    const-string v5, "EU_CENTRAL_1"

    invoke-direct {v7, v5, v13, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/amazonaws/regions/Regions;->EU_CENTRAL_1:Lcom/amazonaws/regions/Regions;

    new-instance v5, Lcom/amazonaws/regions/Regions;

    const/16 v15, 0xb

    const-string v13, "eu-north-1"

    const-string v3, "EU_NORTH_1"

    invoke-direct {v5, v3, v15, v13}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/amazonaws/regions/Regions;->EU_NORTH_1:Lcom/amazonaws/regions/Regions;

    new-instance v3, Lcom/amazonaws/regions/Regions;

    const/16 v13, 0xc

    const-string v15, "ap-east-1"

    const-string v1, "AP_EAST_1"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/regions/Regions;->AP_EAST_1:Lcom/amazonaws/regions/Regions;

    new-instance v1, Lcom/amazonaws/regions/Regions;

    const/16 v15, 0xd

    const-string v13, "ap-south-1"

    move-object/from16 v16, v3

    const-string v3, "AP_SOUTH_1"

    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/regions/Regions;->AP_SOUTH_1:Lcom/amazonaws/regions/Regions;

    new-instance v3, Lcom/amazonaws/regions/Regions;

    const/16 v13, 0xe

    const-string v15, "ap-southeast-1"

    move-object/from16 v17, v1

    const-string v1, "AP_SOUTHEAST_1"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_1:Lcom/amazonaws/regions/Regions;

    new-instance v1, Lcom/amazonaws/regions/Regions;

    const/16 v15, 0xf

    const-string v13, "ap-southeast-2"

    move-object/from16 v18, v3

    const-string v3, "AP_SOUTHEAST_2"

    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_2:Lcom/amazonaws/regions/Regions;

    new-instance v3, Lcom/amazonaws/regions/Regions;

    const/16 v13, 0x10

    const-string v15, "ap-northeast-1"

    move-object/from16 v19, v1

    const-string v1, "AP_NORTHEAST_1"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

    new-instance v1, Lcom/amazonaws/regions/Regions;

    const/16 v15, 0x11

    const-string v13, "ap-northeast-2"

    move-object/from16 v20, v3

    const-string v3, "AP_NORTHEAST_2"

    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_2:Lcom/amazonaws/regions/Regions;

    new-instance v3, Lcom/amazonaws/regions/Regions;

    const/16 v13, 0x12

    const-string v15, "sa-east-1"

    move-object/from16 v21, v1

    const-string v1, "SA_EAST_1"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/regions/Regions;->SA_EAST_1:Lcom/amazonaws/regions/Regions;

    new-instance v1, Lcom/amazonaws/regions/Regions;

    const/16 v15, 0x13

    const-string v13, "ca-central-1"

    move-object/from16 v22, v3

    const-string v3, "CA_CENTRAL_1"

    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/regions/Regions;->CA_CENTRAL_1:Lcom/amazonaws/regions/Regions;

    new-instance v3, Lcom/amazonaws/regions/Regions;

    const/16 v13, 0x14

    const-string v15, "cn-north-1"

    move-object/from16 v23, v1

    const-string v1, "CN_NORTH_1"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazonaws/regions/Regions;

    new-instance v1, Lcom/amazonaws/regions/Regions;

    const/16 v15, 0x15

    const-string v13, "cn-northwest-1"

    move-object/from16 v24, v3

    const-string v3, "CN_NORTHWEST_1"

    invoke-direct {v1, v3, v15, v13}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/regions/Regions;->CN_NORTHWEST_1:Lcom/amazonaws/regions/Regions;

    new-instance v3, Lcom/amazonaws/regions/Regions;

    const/16 v13, 0x16

    const-string v15, "me-south-1"

    move-object/from16 v25, v1

    const-string v1, "ME_SOUTH_1"

    invoke-direct {v3, v1, v13, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/amazonaws/regions/Regions;->ME_SOUTH_1:Lcom/amazonaws/regions/Regions;

    new-instance v1, Lcom/amazonaws/regions/Regions;

    const/16 v13, 0x17

    const-string v15, "af-south-1"

    move-object/from16 v26, v3

    const-string v3, "AF_SOUTH_1"

    invoke-direct {v1, v3, v13, v15}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazonaws/regions/Regions;->AF_SOUTH_1:Lcom/amazonaws/regions/Regions;

    const/16 v3, 0x18

    new-array v3, v3, [Lcom/amazonaws/regions/Regions;

    const/4 v13, 0x0

    aput-object v0, v3, v13

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v11, v3, v0

    const/16 v0, 0x9

    aput-object v9, v3, v0

    const/16 v0, 0xa

    aput-object v7, v3, v0

    const/16 v0, 0xb

    aput-object v5, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    const/16 v0, 0x11

    aput-object v21, v3, v0

    const/16 v0, 0x12

    aput-object v22, v3, v0

    const/16 v0, 0x13

    aput-object v23, v3, v0

    const/16 v0, 0x14

    aput-object v24, v3, v0

    const/16 v0, 0x15

    aput-object v25, v3, v0

    const/16 v0, 0x16

    aput-object v26, v3, v0

    const/16 v0, 0x17

    aput-object v1, v3, v0

    sput-object v3, Lcom/amazonaws/regions/Regions;->$VALUES:[Lcom/amazonaws/regions/Regions;

    sput-object v10, Lcom/amazonaws/regions/Regions;->DEFAULT_REGION:Lcom/amazonaws/regions/Regions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazonaws/regions/Regions;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;
    .locals 5

    invoke-static {}, Lcom/amazonaws/regions/Regions;->values()[Lcom/amazonaws/regions/Regions;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;
    .locals 1

    const-class v0, Lcom/amazonaws/regions/Regions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/regions/Regions;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/regions/Regions;
    .locals 1

    sget-object v0, Lcom/amazonaws/regions/Regions;->$VALUES:[Lcom/amazonaws/regions/Regions;

    invoke-virtual {v0}, [Lcom/amazonaws/regions/Regions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/regions/Regions;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/regions/Regions;->name:Ljava/lang/String;

    return-object v0
.end method
