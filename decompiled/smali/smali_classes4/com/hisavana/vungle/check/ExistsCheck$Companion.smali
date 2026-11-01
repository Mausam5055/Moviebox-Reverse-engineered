.class public final Lcom/hisavana/vungle/check/ExistsCheck$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/vungle/check/ExistsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J3\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052#\u0010\t\u001a\u001f\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/hisavana/vungle/check/ExistsCheck$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "initVungle",
        "",
        "vungleAppID",
        "initCallback",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "initSuccess",
        "liftoff_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/vungle/check/ExistsCheck$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final initVungle(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "vungleAppID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0}, Lcom/vungle/ads/z$a;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "Vungle_Log"

    const-string v1, "Vungle SDK already init"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/hisavana/common/bean/AppStartInfo;->userConsent:Z

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vungle/ads/a0;->setGDPRStatus(ZLjava/lang/String;)V

    sget-boolean v1, Lcom/hisavana/common/bean/AppStartInfo;->ageRestrictedUser:Z

    invoke-static {v1}, Lcom/vungle/ads/a0;->setCOPPAStatus(Z)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/hisavana/vungle/check/ExistsCheck$Companion$initVungle$1;

    invoke-direct {v2, p2}, Lcom/hisavana/vungle/check/ExistsCheck$Companion$initVungle$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/vungle/ads/z$a;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/m;)V

    :cond_1
    :goto_0
    return-void
.end method
