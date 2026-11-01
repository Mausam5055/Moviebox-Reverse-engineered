.class public final Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/base/infras_config/api/InfraInitApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;",
        "",
        "<init>",
        "()V",
        "INIT_PATH",
        "",
        "TEST_HOST",
        "RELEASE_HOST",
        "base_infras_config_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;

.field public static final INIT_PATH:Ljava/lang/String; = "/infras-mobile-bff/v1/init"

.field public static final RELEASE_HOST:Ljava/lang/String; = "https://i-api.aoneroom.com"

.field public static final TEST_HOST:Ljava/lang/String; = "https://i-api-test.aoneroom.com"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;

    invoke-direct {v0}, Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;-><init>()V

    sput-object v0, Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;->$$INSTANCE:Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
