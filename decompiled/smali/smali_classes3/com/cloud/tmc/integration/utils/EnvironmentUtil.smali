.class public final Lcom/cloud/tmc/integration/utils/EnvironmentUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;,
        Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Package;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/EnvironmentUtil;",
        "",
        "()V",
        "Companion",
        "Package",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;

.field private static final PKG_CHROME:Ljava/lang/String; = "com.android.chrome"

.field private static final TAG:Ljava/lang/String; = "EnvironmentUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/utils/EnvironmentUtil;->Companion:Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final openByBrowser(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/integration/utils/EnvironmentUtil;->Companion:Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;->openByBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
