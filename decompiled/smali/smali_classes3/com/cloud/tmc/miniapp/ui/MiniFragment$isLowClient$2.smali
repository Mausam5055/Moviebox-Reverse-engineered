.class final Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2

    :try_start_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;->isLowClient()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MiniFragment"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
