.class public final Lcom/cloud/config/utils/SPHelper;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\n\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cloud/config/utils/SPHelper;",
        "",
        "<init>",
        "()V",
        "",
        "spName",
        "Ljava/lang/String;",
        "Lcom/transsion/core/utils/f;",
        "getInstance",
        "()Lcom/transsion/core/utils/f;",
        "instance",
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
.field public static final INSTANCE:Lcom/cloud/config/utils/SPHelper;

.field private static final spName:Ljava/lang/String; = "cloud_config_sdk"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/config/utils/SPHelper;

    invoke-direct {v0}, Lcom/cloud/config/utils/SPHelper;-><init>()V

    sput-object v0, Lcom/cloud/config/utils/SPHelper;->INSTANCE:Lcom/cloud/config/utils/SPHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/transsion/core/utils/f;
    .locals 2

    const-string v0, "cloud_config_sdk"

    invoke-static {v0}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    move-result-object v0

    const-string v1, "getInstance(spName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
