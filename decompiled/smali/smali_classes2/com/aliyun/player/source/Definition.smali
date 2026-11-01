.class public final enum Lcom/aliyun/player/source/Definition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/source/Definition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_2K:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_4K:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_FD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_HD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_HQ:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_LD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_OD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_SD:Lcom/aliyun/player/source/Definition;

.field public static final enum DEFINITION_SQ:Lcom/aliyun/player/source/Definition;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/aliyun/player/source/Definition;

    const/4 v1, 0x0

    const-string v2, "FD"

    const-string v3, "DEFINITION_FD"

    invoke-direct {v0, v3, v1, v2}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/player/source/Definition;->DEFINITION_FD:Lcom/aliyun/player/source/Definition;

    new-instance v2, Lcom/aliyun/player/source/Definition;

    const/4 v3, 0x1

    const-string v4, "LD"

    const-string v5, "DEFINITION_LD"

    invoke-direct {v2, v5, v3, v4}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/aliyun/player/source/Definition;->DEFINITION_LD:Lcom/aliyun/player/source/Definition;

    new-instance v4, Lcom/aliyun/player/source/Definition;

    const/4 v5, 0x2

    const-string v6, "SD"

    const-string v7, "DEFINITION_SD"

    invoke-direct {v4, v7, v5, v6}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/aliyun/player/source/Definition;->DEFINITION_SD:Lcom/aliyun/player/source/Definition;

    new-instance v6, Lcom/aliyun/player/source/Definition;

    const/4 v7, 0x3

    const-string v8, "HD"

    const-string v9, "DEFINITION_HD"

    invoke-direct {v6, v9, v7, v8}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/aliyun/player/source/Definition;->DEFINITION_HD:Lcom/aliyun/player/source/Definition;

    new-instance v8, Lcom/aliyun/player/source/Definition;

    const/4 v9, 0x4

    const-string v10, "OD"

    const-string v11, "DEFINITION_OD"

    invoke-direct {v8, v11, v9, v10}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/aliyun/player/source/Definition;->DEFINITION_OD:Lcom/aliyun/player/source/Definition;

    new-instance v10, Lcom/aliyun/player/source/Definition;

    const/4 v11, 0x5

    const-string v12, "2K"

    const-string v13, "DEFINITION_2K"

    invoke-direct {v10, v13, v11, v12}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/aliyun/player/source/Definition;->DEFINITION_2K:Lcom/aliyun/player/source/Definition;

    new-instance v12, Lcom/aliyun/player/source/Definition;

    const/4 v13, 0x6

    const-string v14, "4K"

    const-string v15, "DEFINITION_4K"

    invoke-direct {v12, v15, v13, v14}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/aliyun/player/source/Definition;->DEFINITION_4K:Lcom/aliyun/player/source/Definition;

    new-instance v14, Lcom/aliyun/player/source/Definition;

    const/4 v15, 0x7

    const-string v13, "SQ"

    const-string v11, "DEFINITION_SQ"

    invoke-direct {v14, v11, v15, v13}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/aliyun/player/source/Definition;->DEFINITION_SQ:Lcom/aliyun/player/source/Definition;

    new-instance v11, Lcom/aliyun/player/source/Definition;

    const/16 v13, 0x8

    const-string v15, "HQ"

    const-string v9, "DEFINITION_HQ"

    invoke-direct {v11, v9, v13, v15}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/aliyun/player/source/Definition;->DEFINITION_HQ:Lcom/aliyun/player/source/Definition;

    new-instance v9, Lcom/aliyun/player/source/Definition;

    const/16 v15, 0x9

    const-string v13, "AUTO"

    const-string v7, "DEFINITION_AUTO"

    invoke-direct {v9, v7, v15, v13}, Lcom/aliyun/player/source/Definition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/aliyun/player/source/Definition;->DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

    const/16 v7, 0xa

    new-array v7, v7, [Lcom/aliyun/player/source/Definition;

    aput-object v0, v7, v1

    aput-object v2, v7, v3

    aput-object v4, v7, v5

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v14, v7, v0

    const/16 v0, 0x8

    aput-object v11, v7, v0

    aput-object v9, v7, v15

    sput-object v7, Lcom/aliyun/player/source/Definition;->$VALUES:[Lcom/aliyun/player/source/Definition;

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

    iput-object p3, p0, Lcom/aliyun/player/source/Definition;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/source/Definition;
    .locals 1

    const-class v0, Lcom/aliyun/player/source/Definition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/source/Definition;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/source/Definition;
    .locals 1

    sget-object v0, Lcom/aliyun/player/source/Definition;->$VALUES:[Lcom/aliyun/player/source/Definition;

    invoke-virtual {v0}, [Lcom/aliyun/player/source/Definition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/source/Definition;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/source/Definition;->mName:Ljava/lang/String;

    return-object v0
.end method
