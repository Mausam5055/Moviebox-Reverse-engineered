.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp;->getOfflineAppsForBridgeApi(ZLcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offlineApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toJson(offlineApps)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
