.class public final enum Lcom/cicada/player/utils/Logger$LogLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cicada/player/utils/Logger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_FATAL:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

.field public static final enum AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/cicada/player/utils/Logger$LogLevel;

    const-string v1, "AF_LOG_LEVEL_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

    new-instance v1, Lcom/cicada/player/utils/Logger$LogLevel;

    const/4 v3, 0x1

    const/16 v4, 0x8

    const-string v5, "AF_LOG_LEVEL_FATAL"

    invoke-direct {v1, v5, v3, v4}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_FATAL:Lcom/cicada/player/utils/Logger$LogLevel;

    new-instance v4, Lcom/cicada/player/utils/Logger$LogLevel;

    const/4 v5, 0x2

    const/16 v6, 0x10

    const-string v7, "AF_LOG_LEVEL_ERROR"

    invoke-direct {v4, v7, v5, v6}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_ERROR:Lcom/cicada/player/utils/Logger$LogLevel;

    new-instance v6, Lcom/cicada/player/utils/Logger$LogLevel;

    const/4 v7, 0x3

    const/16 v8, 0x18

    const-string v9, "AF_LOG_LEVEL_WARNING"

    invoke-direct {v6, v9, v7, v8}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_WARNING:Lcom/cicada/player/utils/Logger$LogLevel;

    new-instance v8, Lcom/cicada/player/utils/Logger$LogLevel;

    const/4 v9, 0x4

    const/16 v10, 0x20

    const-string v11, "AF_LOG_LEVEL_INFO"

    invoke-direct {v8, v11, v9, v10}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_INFO:Lcom/cicada/player/utils/Logger$LogLevel;

    new-instance v10, Lcom/cicada/player/utils/Logger$LogLevel;

    const/4 v11, 0x5

    const/16 v12, 0x30

    const-string v13, "AF_LOG_LEVEL_DEBUG"

    invoke-direct {v10, v13, v11, v12}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_DEBUG:Lcom/cicada/player/utils/Logger$LogLevel;

    new-instance v12, Lcom/cicada/player/utils/Logger$LogLevel;

    const/4 v13, 0x6

    const/16 v14, 0x38

    const-string v15, "AF_LOG_LEVEL_TRACE"

    invoke-direct {v12, v15, v13, v14}, Lcom/cicada/player/utils/Logger$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_TRACE:Lcom/cicada/player/utils/Logger$LogLevel;

    const/4 v14, 0x7

    new-array v14, v14, [Lcom/cicada/player/utils/Logger$LogLevel;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcom/cicada/player/utils/Logger$LogLevel;->$VALUES:[Lcom/cicada/player/utils/Logger$LogLevel;

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

    iput p3, p0, Lcom/cicada/player/utils/Logger$LogLevel;->mValue:I

    return-void
.end method

.method public static convert(I)Lcom/cicada/player/utils/Logger$LogLevel;
    .locals 6

    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->AF_LOG_LEVEL_NONE:Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {}, Lcom/cicada/player/utils/Logger$LogLevel;->values()[Lcom/cicada/player/utils/Logger$LogLevel;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/cicada/player/utils/Logger$LogLevel;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cicada/player/utils/Logger$LogLevel;
    .locals 1

    const-class v0, Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cicada/player/utils/Logger$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/cicada/player/utils/Logger$LogLevel;
    .locals 1

    sget-object v0, Lcom/cicada/player/utils/Logger$LogLevel;->$VALUES:[Lcom/cicada/player/utils/Logger$LogLevel;

    invoke-virtual {v0}, [Lcom/cicada/player/utils/Logger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cicada/player/utils/Logger$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/cicada/player/utils/Logger$LogLevel;->mValue:I

    return v0
.end method
