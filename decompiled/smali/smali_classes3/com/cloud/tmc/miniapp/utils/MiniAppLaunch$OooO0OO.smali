.class public final Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0OO;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->byteAppInit$com_cloud_tmc_miniapp_sdk(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0OO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0OO;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0OO;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO0OO;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "launcher"

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ByteAppManager;->setAppId(Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$byteAppInit$1$1;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$byteAppInit$1$1;-><init>()V

    const-class v1, Lcom/cloud/tmc/kernel/intf/ISDKConfig;

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
