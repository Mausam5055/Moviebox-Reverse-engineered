.class public Lcom/hisavana/common/utils/AdLogUtil;
.super Lcom/cloud/sdk/commonutil/util/c;


# static fields
.field private static final TAG:Ljava/lang/String; = "ADSDK_M"

.field private static final adLogUtil:Lcom/hisavana/common/utils/AdLogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hisavana/common/utils/AdLogUtil;

    invoke-direct {v0}, Lcom/hisavana/common/utils/AdLogUtil;-><init>()V

    sput-object v0, Lcom/hisavana/common/utils/AdLogUtil;->adLogUtil:Lcom/hisavana/common/utils/AdLogUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/sdk/commonutil/util/c;-><init>()V

    return-void
.end method

.method public static Log()Lcom/hisavana/common/utils/AdLogUtil;
    .locals 1

    sget-object v0, Lcom/hisavana/common/utils/AdLogUtil;->adLogUtil:Lcom/hisavana/common/utils/AdLogUtil;

    return-object v0
.end method


# virtual methods
.method public getGlobalTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ADSDK_M"

    return-object v0
.end method
