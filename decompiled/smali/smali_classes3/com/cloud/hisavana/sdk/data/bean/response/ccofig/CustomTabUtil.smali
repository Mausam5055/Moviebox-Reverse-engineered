.class public final Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u000c\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0007J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;",
        "",
        "()V",
        "TAG",
        "",
        "cctConfig",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;",
        "commmonConfig",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;",
        "formatCCTConfig",
        "",
        "customTabConfig",
        "formatCommonConfig",
        "commonConfig",
        "getCCTConfig",
        "getCommonConfig",
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
.field public static final INSTANCE:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;

.field public static final TAG:Ljava/lang/String; = "CustomTabUtil"

.field private static volatile cctConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

.field private static volatile commmonConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->INSTANCE:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatCCTConfig(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    invoke-static {p0, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    sput-object p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->cctConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "CustomTabUtil"

    const-string v1, "formatCCTConfig: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->cctConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    :goto_0
    return-void
.end method

.method public static final formatCommonConfig(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    invoke-static {p0, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    sput-object p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->commmonConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "CustomTabUtil"

    const-string v1, "formatCommonConfig: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->commmonConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    :goto_0
    return-void
.end method

.method public static final getCCTConfig()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->cctConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    return-object v0
.end method

.method public static final getCommonConfig()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;->commmonConfig:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    return-object v0
.end method
