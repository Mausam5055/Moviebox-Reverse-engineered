.class public final Lcom/cloud/config/utils/Constants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/config/utils/Constants$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/cloud/config/utils/Constants;",
        "",
        "()V",
        "Companion",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CLOUD_CONFIG_TEST_URL:Ljava/lang/String; = "https://cloud-config-oss-test.shalltry.com/cloudconfig/config/"

.field private static final CLOUD_CONFIG_URL:Ljava/lang/String; = "https://cloud-config-oss.shalltry.com/cloudconfig/config/"

.field public static final Companion:Lcom/cloud/config/utils/Constants$Companion;

.field private static final SHUNT_OPEN_CONFIG_TEST_URL:Ljava/lang/String; = "http://cloud-config-api-test.shalltry.com/front/cloudconfig/consumer-not-login/cloudconfig/query/queryCloudConfigInfo"

.field private static final SHUNT_OPEN_CONFIG_URL:Ljava/lang/String; = "https://cloud-config-api.shalltry.com/front/cloudconfig/consumer-not-login/cloudconfig/query/queryCloudConfigInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/config/utils/Constants$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/config/utils/Constants$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/config/utils/Constants;->Companion:Lcom/cloud/config/utils/Constants$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
