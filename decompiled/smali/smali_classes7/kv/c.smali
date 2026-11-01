.class public final Lkv/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkv/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkv/c;

    invoke-direct {v0}, Lkv/c;-><init>()V

    sput-object v0, Lkv/c;->a:Lkv/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    const-class v0, Lkv/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->q()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "is_p2p_supported"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdk_int"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final c(Ljava/util/Map;)V
    .locals 3

    sget-object v0, Lhj/i;->a:Lhj/i;

    const-string v1, "wifi_p2p"

    const-string v2, "transfer"

    invoke-virtual {v0, v1, v2, p1}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 6

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CONNECT_CANCEL:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/c;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> reportConnectWifiCancel() --> map = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final e(I)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CONNECT_FAIL:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportConnectWifiFail() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final f(J)V
    .locals 4

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CONNECT_SUCCESS:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "duration"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/c;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> reportConnectWifiSuccess() --> map = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p2, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final g()V
    .locals 6

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CONNECT_TRIGGER:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/c;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> reportConnectWifiTrigger() --> map = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final h()V
    .locals 6

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CREATE_CANCEL:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/c;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> reportCreateWifiP2PCancel() --> map = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final i(I)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CREATE_FAIL:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportCreateWifiP2PFail() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final j(JJ)V
    .locals 2

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CREATE_SUCCESS:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "duration"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "qr_duration"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/c;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> reportCreateWifiP2PSuccess() --> map = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, p3, p4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final k()V
    .locals 6

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CREATE_TRIGGER:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/c;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> reportCreateWifiP2PTrigger() --> map = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;)V
    .locals 3

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "permissionsState"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_PERMISSION_REQUEST:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v1}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "com.transsion.transfer.wifi.util.send"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "sender"

    goto :goto_0

    :cond_0
    const-string p1, "receiver"

    :goto_0
    const-string v2, "user_role"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "state"

    invoke-virtual {p3}, Lcom/transsion/transfer/wifi/bean/PermissionState;->getState()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_PERMISSION_PAGE_PV:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "com.transsion.transfer.wifi.util.send"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/permission/d;->e()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getState()Lcom/transsion/transfer/wifi/bean/PermissionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/bean/PermissionState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, "sender"

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/permission/d;->c()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getState()Lcom/transsion/transfer/wifi/bean/PermissionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/bean/PermissionState;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p1, "receiver"

    :goto_2
    const-string v1, "user_role"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportPermission() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final n()V
    .locals 6

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_SHARE_APK_DIALOG:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/c;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> reportShareApkDialogShow() --> map = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/c;->c(Ljava/util/Map;)V

    return-void
.end method
