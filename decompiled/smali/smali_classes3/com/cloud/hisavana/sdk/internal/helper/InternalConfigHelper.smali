.class public final Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper;",
        "",
        "<init>",
        "()V",
        "Companion",
        "a",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper;->Companion:Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getExtInfo()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper;->Companion:Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper$a;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper$a;->a()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    move-result-object v0

    return-object v0
.end method
