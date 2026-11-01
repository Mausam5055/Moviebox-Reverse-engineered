.class final enum Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReadResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

.field public static final enum END_OF_BODY:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

.field public static final enum SUCCESS:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;


# direct methods
.method private static synthetic $values()[Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    sget-object v1, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->SUCCESS:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->SUCCESS:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    const-string v1, "END_OF_BODY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-static {}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->$values()[Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->$VALUES:[Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    return-object p0
.end method

.method public static values()[Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->$VALUES:[Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    invoke-virtual {v0}, [Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    return-object v0
.end method
