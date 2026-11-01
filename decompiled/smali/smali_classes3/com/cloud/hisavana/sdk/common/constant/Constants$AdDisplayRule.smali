.class public final enum Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/constant/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdDisplayRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

.field public static final enum RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

.field public static final enum UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;


# direct methods
.method private static synthetic $values()[Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    const-string v1, "UNIVERSAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    const-string v1, "RU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->$values()[Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->$VALUES:[Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-object p0
.end method

.method public static values()[Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->$VALUES:[Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    invoke-virtual {v0}, [Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-object v0
.end method
