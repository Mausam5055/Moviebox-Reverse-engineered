.class public final enum Lcom/cloud/tmc/integration/model/AppInfoScene;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/model/AppInfoScene;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/AppInfoScene;",
        "",
        "(Ljava/lang/String;I)V",
        "isOnline",
        "",
        "()Z",
        "ONLINE",
        "DEBUG",
        "TRIAL",
        "REVIEW",
        "YUNTEST",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/model/AppInfoScene;

.field public static final Companion:Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;

.field public static final enum DEBUG:Lcom/cloud/tmc/integration/model/AppInfoScene;

.field public static final enum ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

.field private static final PARAM_SCENE:Ljava/lang/String; = "nbsn"

.field private static final PARAM_SCENE_VERSION:Ljava/lang/String; = "nbsv"

.field private static final PARAM_SOURCE:Ljava/lang/String; = "nbsource"

.field public static final enum REVIEW:Lcom/cloud/tmc/integration/model/AppInfoScene;

.field public static final enum TRIAL:Lcom/cloud/tmc/integration/model/AppInfoScene;

.field public static final enum YUNTEST:Lcom/cloud/tmc/integration/model/AppInfoScene;


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/integration/model/AppInfoScene;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cloud/tmc/integration/model/AppInfoScene;

    sget-object v1, Lcom/cloud/tmc/integration/model/AppInfoScene;->ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/model/AppInfoScene;->DEBUG:Lcom/cloud/tmc/integration/model/AppInfoScene;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/model/AppInfoScene;->TRIAL:Lcom/cloud/tmc/integration/model/AppInfoScene;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/model/AppInfoScene;->REVIEW:Lcom/cloud/tmc/integration/model/AppInfoScene;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/model/AppInfoScene;->YUNTEST:Lcom/cloud/tmc/integration/model/AppInfoScene;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    const-string v1, "ONLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppInfoScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppInfoScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->DEBUG:Lcom/cloud/tmc/integration/model/AppInfoScene;

    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    const-string v1, "TRIAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppInfoScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->TRIAL:Lcom/cloud/tmc/integration/model/AppInfoScene;

    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    const-string v1, "REVIEW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppInfoScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->REVIEW:Lcom/cloud/tmc/integration/model/AppInfoScene;

    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    const-string v1, "YUNTEST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/integration/model/AppInfoScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->YUNTEST:Lcom/cloud/tmc/integration/model/AppInfoScene;

    invoke-static {}, Lcom/cloud/tmc/integration/model/AppInfoScene;->$values()[Lcom/cloud/tmc/integration/model/AppInfoScene;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->$VALUES:[Lcom/cloud/tmc/integration/model/AppInfoScene;

    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->Companion:Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;

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

.method public static final isDevSource(Landroid/os/Bundle;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->Companion:Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/model/AppInfoScene$Companion;->isDevSource(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoScene;
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/model/AppInfoScene;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/model/AppInfoScene;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->$VALUES:[Lcom/cloud/tmc/integration/model/AppInfoScene;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/integration/model/AppInfoScene;

    return-object v0
.end method


# virtual methods
.method public final isOnline()Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/model/AppInfoScene;->ONLINE:Lcom/cloud/tmc/integration/model/AppInfoScene;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
