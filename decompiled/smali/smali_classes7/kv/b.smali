.class public final Lkv/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkv/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkv/b;

    invoke-direct {v0}, Lkv/b;-><init>()V

    sput-object v0, Lkv/b;->a:Lkv/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    const-class v0, Lkv/b;

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

    return-object v0
.end method

.method private final c(Ljava/util/Map;)V
    .locals 2

    sget-object v0, Lhj/i;->a:Lhj/i;

    const-string v1, "transfer_status"

    invoke-virtual {v0, v1, p1}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->xREPORT_TRANSFER_ACTION_CLIENT_CONNECT_FAILED:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v1}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string p1, "transfer_id"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> reportClientConnectFailed() --> map = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p2, v3, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CLIENT_CONNECT_SUCCESS:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> reportClientConnectSuccess() --> map = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "transfer_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CLIENT_DISCONNECT_BY_USER:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "transfer_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportServerReceiveDisconnectClick() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final g(Ljava/lang/String;ZLjava/lang/String;JJLjava/lang/String;)V
    .locals 4

    const-string v0, ""

    const-string v1, "remoteFilePath"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CLIENT_DOWNLOAD_FILE_END:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v1}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "task_id"

    invoke-static {p1}, Ljv/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Ljv/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2e

    invoke-static {p1, v2, v0}, Lkotlin/text/StringsKt;->c1(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v0

    :cond_0
    const-string v2, "file_type"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "success"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    move-object p3, v0

    :cond_1
    const-string p1, "error"

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "file_size"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time_cost"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p8, :cond_2

    move-object p8, v0

    :cond_2
    const-string p1, "transfer_id"

    invoke-interface {v1, p1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> reportClientDownloadFileEnd() --> map = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static {p1, p2, p5, p3, p4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final h(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CLIENT_DOWNLOAD_FILE_START:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "task_id"

    invoke-static {p1}, Ljv/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "file_size"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    const-string p1, "transfer_id"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> reportClientDownloadFileStart() --> map = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, p3, p4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CLIENT_FETCH_FILES_START:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "transfer_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportClientFetchFilesStart() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CLIENT_DISCONNECT:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "type"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p1, "transfer_id"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> reportClientReceiveDisconnect() --> map = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p2, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CLIENT_RECEIVE_FILE_CMD:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "transfer_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportClientReceiveServerUpdateFileList() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CLIENT_SEND_FILE_NOTIFY:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "transfer_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportClientSendFileNotify() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final m(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CLIENT_NOTIFY_FINISH:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "file_list_size"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string p1, "transfer_id"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> reportClientServerFilesFinish() --> map = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p2, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CLIENT_CONNECT_START:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "transfer_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportClientStartConnect() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_SERVER_CONNECT_SUCCESS:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "transfer_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/impl/l;->a:Lcom/transsion/transfer/impl/l;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/l;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "transfer_channel_info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportServerConnectSuccess() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_SERVER_DISCONNECT_BY_USER:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "transfer_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/impl/l;->a:Lcom/transsion/transfer/impl/l;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/l;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "transfer_channel_info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportServerReceiveDisconnectClick() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final q(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_SERVER_FETCH_FILES_HANDLE:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "file_list_size"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string p1, "transfer_id"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/impl/l;->a:Lcom/transsion/transfer/impl/l;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/l;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "transfer_channel_info"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> reportServerHandleFetchFiles() --> map = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p2, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final r()V
    .locals 6

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_SERVER_OPEN:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> reportServerOpen() --> map = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_SERVER_DISCONNECT:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "type"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p1, "transfer_id"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/impl/l;->a:Lcom/transsion/transfer/impl/l;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/l;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "transfer_channel_info"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> reportServerReceiveDisconnect() --> map = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p2, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_SERVER_RECEIVE_FILE_READY:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "transfer_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/impl/l;->a:Lcom/transsion/transfer/impl/l;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/l;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "transfer_channel_info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportServerReceiveFile() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_SERVER_SEND_FILE_CMD:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    invoke-direct {p0, v0}, Lkv/b;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "transfer_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/impl/l;->a:Lcom/transsion/transfer/impl/l;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/l;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "transfer_channel_info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    invoke-direct {p0}, Lkv/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> reportServerSendFileClick() --> map = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lkv/b;->c(Ljava/util/Map;)V

    return-void
.end method
