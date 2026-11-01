.class public final Lcom/cloud/tmc/kernel/utils/HybridHelper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/utils/HybridHelper;",
        "",
        "()V",
        "Dark_THEME_ENABLE_STATUS_PARAM_KEY",
        "",
        "getDarkThemeEnableStatusParamValue",
        "",
        "context",
        "Landroid/content/Context;",
        "com.cloud.tmc.kernel"
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
.field public static final Dark_THEME_ENABLE_STATUS_PARAM_KEY:Ljava/lang/String; = "_transsion_dlt_miniapp_dark_theme_is_enabled"

.field public static final INSTANCE:Lcom/cloud/tmc/kernel/utils/HybridHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/utils/HybridHelper;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/utils/HybridHelper;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/utils/HybridHelper;->INSTANCE:Lcom/cloud/tmc/kernel/utils/HybridHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDarkThemeEnableStatusParamValue(Landroid/content/Context;)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
