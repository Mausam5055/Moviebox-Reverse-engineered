.class public final Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO00o;

.field public static final EXTEA_AVALIABLE:Ljava/lang/String; = "available"

.field public static final EXTEA_DISCOVERING:Ljava/lang/String; = "discovering"


# instance fields
.field public final OooO00o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TmcBluetoothBridge"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$sendFail(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$sendSuccess(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO0O0(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    return-void
.end method

.method public static synthetic sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    return-void
.end method

.method public static synthetic sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO0O0(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "errCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->values()[Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v5

    cmp-long v5, p2, v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getDescript()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getDescript()Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string p3, "errMsg"

    invoke-virtual {v0, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p4, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_4
    return-void
.end method

.method public final OooO0O0(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "code"

    invoke-virtual {v0, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p4, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_2
    return-void
.end method

.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final closeBLEConnection(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "address"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-string v0, "closeBLEConnection -> code: "

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->closeBLEConnection(Ljava/lang/String;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    cmp-long p1, v4, v0

    if-nez p1, :cond_0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final closeBluetoothAdapter(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 10
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->closeBluetoothAdapter()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeBluetoothAdapter -> code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final createBLEConnection(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "address"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBLEConnection -> address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createBLEConnection -> code: "

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->createBLEConnection(Ljava/lang/String;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    cmp-long p1, v4, v0

    if-nez p1, :cond_0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getBLEDeviceCharacteristics(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "serviceUUID"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->getBLEDeviceCharacteristicsMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBLEDeviceCharacteristics -> characteristics: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "characteristics"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO0O0(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBLEDeviceCharacteristics -> code: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getBLEDeviceServices(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    new-instance v1, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0O0;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->getBLEDeviceServices(Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;)V

    return-void
.end method

.method public final getBluetoothAdapterState(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    new-instance v1, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0OO;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->getBluetoothAdapterState(Lkotlin/jvm/functions/Function2;)J

    move-result-wide v4

    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBluetoothAdapterState fail -> code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getConnectedBluetoothDevices(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 5
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->getConnectedBluetoothDevicesMap()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedBluetoothDevices -> devices: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v1

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "devices"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO0O0(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    return-void
.end method

.method public final notifyBLECharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "serviceUUID"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "characteristicUUID"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "enable"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-string v0, "notifyBLECharacteristicValueChange -> code: "

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-interface {v1, p1, p2, p3}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->notifyBLECharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    cmp-long p1, v4, p1

    if-nez p1, :cond_0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p4

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p4

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final offBLECharacteristicValueChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    const-string v1, "offBLECharacteristicValueChange close -> "

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->offBLECharacteristicValueChange(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final offBLEConnectionStateChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    const-string v1, "offBLEConnectionStateChange -> "

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->offBLEConnectionStateChange(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final offBluetoothAdapterStateChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    const-string v1, "offBluetoothAdapterStateChange ->"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->offBluetoothAdapterStateChange(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final offBluetoothDeviceFound(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    const-string v1, "offBluetoothDeviceFound -> "

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->offBluetoothDeviceFound(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final onBLECharacteristicValueChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0o;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->onBLECharacteristicValueChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;)V

    :cond_0
    return-void
.end method

.method public final onBLEConnectionStateChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->onBLEConnectionStateChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;)V

    :cond_0
    return-void
.end method

.method public final onBluetoothAdapterStateChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOO0;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->onBluetoothAdapterStateChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;)V

    :cond_0
    return-void
.end method

.method public final onBluetoothDeviceFound(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOO0O;

    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->onBluetoothDeviceFound(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;)V

    :cond_0
    return-void
.end method

.method public onFinalized()V
    .locals 0

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public final openBluetoothAdapter(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "app.appContext!!.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;

    invoke-direct {v1, p0, p2}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->openBluetoothAdapter(Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openBluetoothAdapter fail -> code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final readBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "serviceUUID"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "characteristicUUID"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-string v0, "readBLECharacteristicValue -> code: "

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO;

    invoke-direct {v2, p0, p3}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-interface {v1, p1, p2, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->readBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-eqz p1, :cond_1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p3

    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final startBluetoothDevicesDiscovery(Ljava/lang/String;Ljava/lang/Integer;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "serviceUUIDS"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "powerLevel"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-string v0, "startBluetoothDevicesDiscovery -> code: "

    :try_start_0
    new-instance v1, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$startBluetoothDevicesDiscovery$1;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$startBluetoothDevicesDiscovery$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "fromJson(serviceUUIDS, o\u2026ist<String?>?>() {}.type)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    invoke-interface {v1, p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->startBluetoothDevicesDiscovery(Ljava/util/List;I)J

    move-result-wide v4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    cmp-long p1, v4, p1

    if-nez p1, :cond_1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final stopBluetoothDevicesDiscovery(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 10
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->stopBluetoothDevicesDiscovery()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopBluetoothDevicesDiscovery -> code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final writeBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "serviceUUID"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "characteristicUUID"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "value"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-string v0, "writeBLECharacteristicValue -> code: "

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    invoke-static {p3}, Lcom/cloud/tmc/miniutils/util/HexUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p3

    const-string v2, "hexStringToBytes(value)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOOO;

    invoke-direct {v2, p0, p4}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOOO;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->writeBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;[BLcom/cloud/tmc/miniapp/bluetooth/listener/OooO;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-eqz p1, :cond_1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p4

    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide p3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
