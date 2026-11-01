.class public final Lcom/cloud/tmc/integration/bridge/FileBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/bridge/FileBridge$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 B2\u00020\u0001:\u0001BB\u0005\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0007\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010\u000f\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J4\u0010\u0011\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010\u0014\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J,\u0010\u0019\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J6\u0010\u001b\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0008\u0010\u001e\u001a\u00020\u0008H\u0016J\u0008\u0010\u001f\u001a\u00020\u0008H\u0016J6\u0010 \u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010!\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\n\u0010\"\u001a\u0004\u0018\u00010#H\u0016J@\u0010$\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010%\u001a\u00020&2\u0008\u0008\u0001\u0010\'\u001a\u00020(2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010)\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007JJ\u0010*\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010+\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\'\u001a\u00020&2\u0008\u0008\u0001\u0010%\u001a\u00020&2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010,\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J8\u0010-\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010.\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010/\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J \u00100\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u001a\u00101\u001a\u00020\u00082\u0006\u00102\u001a\u0002032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J6\u00104\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J8\u00105\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u00106\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J&\u00107\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u00108\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u00109\u001a\u00020\u0004H\u0002J6\u0010:\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u00042\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010;\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J8\u0010<\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010=\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010>\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007JJ\u0010?\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010@\u001a\u00020\u000c2\u0008\u0008\u0001\u0010+\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\'\u001a\u00020&2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J@\u0010A\u001a\u00020\u00082\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0001\u0010@\u001a\u00020\u000c2\u0008\u0008\u0001\u0010+\u001a\u00020\u000c2\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006C"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/FileBridge;",
        "Lcom/cloud/tmc/kernel/extension/BridgeExtension;",
        "()V",
        "sdCardEnableByEnvironment",
        "",
        "getSdCardEnableByEnvironment",
        "()Z",
        "access",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/App;",
        "path",
        "",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "close",
        "fd",
        "copyFile",
        "srcPath",
        "destPath",
        "fstat",
        "generateFileStat",
        "Lcom/google/gson/JsonObject;",
        "file",
        "Ljava/io/File;",
        "getFileInfo",
        "filePath",
        "mkdir",
        "dirPath",
        "recursive",
        "onFinalized",
        "onInitialized",
        "open",
        "flag",
        "permit",
        "Lcom/cloud/tmc/kernel/security/Permission;",
        "read",
        "length",
        "",
        "position",
        "",
        "readDir",
        "readFile",
        "encoding",
        "readSDDir",
        "rename",
        "oldPath",
        "newPath",
        "requestSDPermission",
        "requestStoragePermission",
        "context",
        "Landroid/content/Context;",
        "rmdir",
        "saveFile",
        "tempFilePath",
        "sendErrorMsg",
        "errorMsg",
        "isSticky",
        "stat",
        "unlink",
        "unzip",
        "zipFilePath",
        "targetPath",
        "write",
        "data",
        "writeFile",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/bridge/FileBridge$Companion;

.field private static final ERROR_MSG:Ljava/lang/String; = "errMsg"

.field private static final ERROR_MSG_F10001:Ljava/lang/String; = "parameter error: F10001"

.field private static final ERROR_MSG_F10002:Ljava/lang/String; = "fail sdcard not mounted: F10002"

.field private static final ERROR_MSG_F10003:Ljava/lang/String; = "bad file descriptor: F10003"

.field private static final ERROR_MSG_F10004:Ljava/lang/String; = "fail the maximum size of the file storage limit exceeded: F10004"

.field private static final ERROR_MSG_F10005:Ljava/lang/String; = "fail permission denied: F10005"

.field private static final ERROR_MSG_F10006:Ljava/lang/String; = "fail file does not exist: F10006"

.field private static final ERROR_MSG_F10007:Ljava/lang/String; = "fail no such file or directory: F10007"

.field private static final ERROR_MSG_F10008:Ljava/lang/String; = "native buffer exceeds size limit: F10008"

.field private static final ERROR_MSG_F10009:Ljava/lang/String; = "deletion of public space files is not allowed: F10009"

.field private static final MAX_FILE_SIZE:I = 0x6400000

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/bridge/FileBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/bridge/FileBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/bridge/FileBridge;->Companion:Lcom/cloud/tmc/integration/bridge/FileBridge$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final generateFileStat(Ljava/io/File;)Lcom/google/gson/JsonObject;
    .locals 6

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/FileUtil;->getStat(Ljava/io/File;)Landroid/system/StructStat;

    move-result-object v0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-wide v2, v0, Landroid/system/StructStat;->st_atime:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lastAccessedTime"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-wide v2, v0, Landroid/system/StructStat;->st_mtime:J

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const/16 p1, 0x3e8

    int-to-long v4, p1

    div-long/2addr v2, v4

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "lastModifiedTime"

    invoke-virtual {v1, v0, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "create()\n            .ad\u202600))\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getSdCardEnableByEnvironment()Z
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FileUtil;->isSDCardEnableByEnvironment()Z

    move-result v0

    return v0
.end method

.method private final requestStoragePermission(Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 6

    :try_start_0
    const-string p1, "STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p1

    new-instance v0, Lcom/cloud/tmc/integration/bridge/FileBridge$requestStoragePermission$1;

    invoke-direct {v0, p2, p0}, Lcom/cloud/tmc/integration/bridge/FileBridge$requestStoragePermission$1;-><init>(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/bridge/FileBridge;)V

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "fail permission denied: F10005"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string p2, "FileBridge"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final sendErrorMsg(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    :cond_1
    return-void
.end method

.method static synthetic sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "path"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileAccess"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v0, p2

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "fail sdcard not mounted: F10002"

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    :cond_2
    return-void

    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail no such file or directory: F10007 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p3

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v11, "parameter error: F10001"

    const/4 v12, 0x0

    move-object v9, p0

    move-object/from16 v10, p3

    invoke-static/range {v9 .. v14}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final close(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 12
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "fd"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileClose"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->close(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "bad file descriptor: F10003"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "parameter error: F10001"

    const/4 v9, 0x0

    move-object v6, p0

    move-object v7, p3

    invoke-static/range {v6 .. v11}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final copyFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 14
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "srcPath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "destPath"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileCopyFile"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object v7, p1

    move-object/from16 v8, p3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const-string v0, "srcPath"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destPath"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_9

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "fail sdcard not mounted: F10002"

    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "fail no such file or directory: F10007, copyFile %s -> %s"

    const-string v13, "format(format, *args)"

    if-nez v0, :cond_3

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v8}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v10

    aput-object v2, v3, v9

    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v3, p4

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {p1, v8}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v9, :cond_8

    const-string v0, "local_data"

    const/4 v1, 0x0

    invoke-static {v8, v0, v10, v11, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, v1, v11, v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkLocalDataFileDir$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {p1, v1, v11, v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkTempFileDirRunTime$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "fail the maximum size of the file storage limit exceeded: F10004"

    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_5
    :try_start_0
    new-instance v6, Lcom/cloud/tmc/integration/bridge/FileBridge$copyFile$copySuccess$1;

    invoke-direct {v6, p1}, Lcom/cloud/tmc/integration/bridge/FileBridge$copyFile$copySuccess$1;-><init>(Lcom/cloud/tmc/integration/structure/App;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/utils/FileUtil;->copyFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function3;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "FileBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v10

    :goto_1
    if-eqz v0, :cond_6

    if-eqz p4, :cond_7

    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_2

    :cond_6
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v8}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v0, v2, v10

    aput-object v1, v2, v9

    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fail permission denied: F10005, copyFile %s -> %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v3, p4

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v8}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v10

    aput-object v2, v3, v9

    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v3, p4

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_9
    :goto_3
    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v10, "parameter error: F10001"

    const/4 v11, 0x0

    move-object v8, p0

    move-object/from16 v9, p4

    invoke-static/range {v8 .. v13}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final fstat(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "fd"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileFstat"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-class v3, Lcom/cloud/tmc/integration/model/FileCache;

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "app.getData(FileCache::class.java, true)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/integration/model/FileCache;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFileCache()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v3, "stats"

    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->generateFileStat(Ljava/io/File;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "FileBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v3, "fail permission denied: F10005"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, v3

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v3, "bad file descriptor: F10003"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, v3

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_5
    :goto_3
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v3, "parameter error: F10001"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, v3

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final getFileInfo(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 12
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileGetFileInfo"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->NORMAL:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result v1

    const-string v2, "size"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    move-result-wide p1

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_4
    return-void

    :cond_5
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "fail file does not exist: F10006"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_6
    :goto_1
    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "parameter error: F10001"

    const/4 v9, 0x0

    move-object v6, p0

    move-object v7, p3

    invoke-static/range {v6 .. v11}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final mkdir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "dirPath"
            }
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "recursive"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileMkdir"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "fail sdcard not mounted: F10002"

    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail file already exists "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p4

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail no such file or directory: F10007 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p4

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-string v2, "FileBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    if-eqz p4, :cond_7

    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail permission denied: F10005, open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p4

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v11, "parameter error: F10001"

    const/4 v12, 0x0

    move-object v9, p0

    move-object/from16 v10, p4

    invoke-static/range {v9 .. v14}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onFinalized()V
    .locals 2

    const-string v0, "FileBridge"

    const-string v1, "onFinalized"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitialized()V
    .locals 2

    const-string v0, "FileBridge"

    const-string v1, "onInitialized"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final open(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "flag"
            }
            stringDefault = "r"
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileOpen"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-string v0, "flag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "fail sdcard not mounted: F10002"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail no such file or directory: F10007 "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    :try_start_0
    invoke-static {p1, v0, p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->open(Lcom/cloud/tmc/integration/structure/App;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "FileBridge"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_5

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p2

    const-string p3, "fd"

    invoke-virtual {p2, p3, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "parameter error: F10001"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final read(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IJLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 11
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "fd"
            }
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "length"
            }
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "position"
            }
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileRead"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p4

    move-object/from16 v4, p6

    const-string v5, "FileBridge"

    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_7

    :cond_0
    const-class v6, Lcom/cloud/tmc/integration/model/FileCache;

    const/4 v7, 0x1

    invoke-interface {p1, v6, v7}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "app.getData(FileCache::class.java, true)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/integration/model/FileCache;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFlags()Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "parameter error: F10001"

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFileCache()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    move-result-wide v7

    const-wide/32 v9, 0x6400000

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "native buffer exceeds size limit: F10008"

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_4
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x72

    if-eq v7, v8, :cond_a

    const/16 v8, 0xbea

    if-eq v7, v8, :cond_9

    const/16 v8, 0xdf9

    if-eq v7, v8, :cond_8

    const/16 v8, 0xe94

    if-eq v7, v8, :cond_7

    const v8, 0x17a39

    if-eq v7, v8, :cond_6

    const v8, 0x17ad4

    if-eq v7, v8, :cond_5

    const v8, 0x1cd6a

    if-ne v7, v8, :cond_d

    const-string v7, "wx+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_5
    const-string v7, "ax+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_1

    :cond_6
    const-string v7, "as+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_1

    :cond_7
    const-string v7, "w+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_1

    :cond_8
    const-string v7, "r+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_1

    :cond_9
    const-string v7, "a+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_1

    :cond_a
    const-string v7, "r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :goto_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_b

    goto :goto_2

    :cond_b
    move v0, p3

    :goto_2
    new-array v0, v0, [B

    invoke-virtual {v7, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "position: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , skip: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eqz v4, :cond_c

    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v6, "bytesRead"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "arrayBuffer"

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/HexUtil;->formatHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :cond_c
    :goto_3
    const-string v0, "read File finish"

    invoke-static {v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Permission not supported for reading to file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "fail permission denied: F10005"

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_e
    :goto_6
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "bad file descriptor: F10003"

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_f
    :goto_7
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "parameter error: F10001"

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final readDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "dirPath"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileReadDir"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "fail sdcard not mounted: F10002"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail no such file or directory: F10007 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/bridge/FileBridge$readDir$files$1;->INSTANCE:Lcom/cloud/tmc/integration/bridge/FileBridge$readDir$files$1;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->listFiles(Ljava/io/File;ZLkotlin/jvm/functions/Function1;)[Ljava/io/File;

    move-result-object v0

    new-instance v4, Lcom/google/gson/JsonArray;

    array-length v5, v0

    invoke-direct {v4, v5}, Lcom/google/gson/JsonArray;-><init>(I)V

    array-length v5, v0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    const-string v3, "files"

    invoke-virtual {v0, v3, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v3, "FileBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail permission denied: F10005 , open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "parameter error: F10001"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final readFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;IILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 8
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "encoding"
            }
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "position"
            }
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "length"
            }
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileReadFile"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const-string v3, "encoding"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v3, "fail sdcard not mounted: F10002"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p6

    move-object v2, v3

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail no such file or directory: F10007 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p6

    move-object v2, v3

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getTotalSize(Ljava/io/File;)J

    move-result-wide v4

    const-wide/32 v6, 0x6400000

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v3, "native buffer exceeds size limit: F10008"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p6

    move-object v2, v3

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {v3}, Lcom/cloud/tmc/worker/utils/FileIOUtils;->readFile2BytesByStream(Ljava/io/File;)[B

    move-result-object v3

    const-string v4, "readFile2BytesByStream(file)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_5

    add-int v4, p4, p5

    goto :goto_0

    :cond_5
    array-length v4, v3

    :goto_0
    invoke-static {v3, p4, v4}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->subArray([BII)[B

    move-result-object v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v4, "data"

    if-nez v3, :cond_8

    if-eqz p6, :cond_7

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    if-nez v0, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ArrayUtils;->newByteArray([B)[B

    move-result-object v0

    const-string v3, "newByteArray()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/HexUtil;->formatHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_7
    return-void

    :cond_8
    :try_start_0
    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkEncoding(Ljava/lang/String;)V

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_9
    invoke-static {v0, p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->getByteArrayByDecode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p6, :cond_a

    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, v3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v3, "FileBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the named is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " charset is not supported!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p6

    move-object v2, v3

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_a
    :goto_3
    return-void

    :cond_b
    :goto_4
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v3, "parameter error: F10001"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p6

    move-object v2, v3

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final readSDDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "dirPath"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "fail sdcard not mounted: F10002"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    new-instance v2, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$block$1;

    invoke-direct {v2, p0, p3, p2, v1}, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$block$1;-><init>(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    const-string v3, "fail file does not exist: F10006"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_4
    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permissionGroup([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;

    invoke-direct {v1, v2, p2, p0, p3}, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail no such file or directory: F10007 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v1, "FileBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail permission denied: F10005 , open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_3
    return-void

    :cond_6
    :goto_4
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "parameter error: F10001"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final rename(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 18
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "oldPath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "newPath"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileRename"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v1, :cond_b

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static/range {p2 .. p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p4, :cond_2

    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    :cond_2
    return-void

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "fail sdcard not mounted: F10002"

    const/4 v9, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    invoke-static/range {v6 .. v11}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_4
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result v6

    const-string v7, "fail no such file or directory: F10007, rename %s -> %s"

    const-string v8, "format(format, *args)"

    if-eqz v5, :cond_a

    if-nez v6, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v1, v5, v2

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_6
    :try_start_0
    invoke-static {v5, v1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v12

    const-string v0, "app.appId"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v13, v5

    move-object v14, v1

    invoke-static/range {v12 .. v17}, Lcom/cloud/tmc/integration/utils/FileUtil;->notifyNewFileGenerateVUrl$default(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v6, "FileBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v6, v3

    :cond_7
    :goto_0
    if-eqz v6, :cond_8

    if-eqz p4, :cond_9

    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_1

    :cond_8
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v1, v5, v2

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fail permission denied: F10005, rename %s -> %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v5, v1, v3

    aput-object v0, v1, v2

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_b
    :goto_3
    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v9, "parameter error: F10001"

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    invoke-static/range {v7 .. v12}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final requestSDPermission(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 8
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
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "parameter error: F10001"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/bridge/FileBridge;->requestStoragePermission(Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "FileBridge"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "fail permission denied: F10005"

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final rmdir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 14
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "dirPath"
            }
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "recursive"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileRmdir"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "fail sdcard not mounted: F10002"

    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail no such file or directory: F10007 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p4

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    move/from16 v0, p3

    :try_start_0
    invoke-static {v1, v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->deleteDir(Ljava/io/File;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    const-string v0, "FileBridge"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p4, :cond_4

    invoke-interface/range {p4 .. p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail permission denied: F10005, open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v3, p4

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v10, "parameter error: F10001"

    const/4 v11, 0x0

    move-object v8, p0

    move-object/from16 v9, p4

    invoke-static/range {v8 .. v13}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final saveFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 10
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "tempFilePath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileSaveFile"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p3, :cond_c

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "fail sdcard not mounted: F10002"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "local_data"

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p2, v1, v7, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {p1, p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {p3, v1, v7, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {p3, v1, v7, v4, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1, v5, v4, v5}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkLocalDataFileDir$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_5
    invoke-static {p1, v5, v4, v5}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkTempFileDirRunTime$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "fail the maximum size of the file storage limit exceeded: F10004"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_6
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_0
    new-instance v6, Lcom/cloud/tmc/integration/bridge/FileBridge$saveFile$copySuccess$1;

    invoke-direct {v6, v9, p1}, Lcom/cloud/tmc/integration/bridge/FileBridge$saveFile$copySuccess$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/cloud/tmc/integration/structure/App;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/utils/FileUtil;->copyFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function3;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FileBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v7, :cond_8

    if-eqz p4, :cond_9

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    const-string v2, "savedFilePath"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail permission denied: F10005, open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    :goto_3
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail no such file or directory: F10007 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_b
    :goto_4
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "fail tempFilePath file not exist"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_c
    :goto_5
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "parameter error: F10001"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final stat(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;ZLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 17
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "path"
            }
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "recursive"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileStat"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    const-string v0, "path"

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "fail sdcard not mounted: F10002"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "stats"

    if-eqz v1, :cond_3

    :try_start_1
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-direct {v7, v1}, Lcom/cloud/tmc/integration/bridge/FileBridge;->generateFileStat(Ljava/io/File;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/cloud/tmc/integration/bridge/FileBridge$stat$files$1;->INSTANCE:Lcom/cloud/tmc/integration/bridge/FileBridge$stat$files$1;

    move/from16 v3, p3

    invoke-static {v9, v3, v1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->listFiles(Ljava/io/File;ZLkotlin/jvm/functions/Function1;)[Ljava/io/File;

    move-result-object v1

    new-instance v3, Lcom/google/gson/JsonArray;

    array-length v4, v1

    invoke-direct {v3, v4}, Lcom/google/gson/JsonArray;-><init>(I)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v4

    invoke-direct {v7, v9}, Lcom/cloud/tmc/integration/bridge/FileBridge;->generateFileStat(Ljava/io/File;)Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "childFile.absolutePath"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v10

    invoke-direct {v7, v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->generateFileStat(Ljava/io/File;)Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v10, v2, v6}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail no such file or directory: F10007 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    const-string v1, "FileBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail permission denied: F10005, open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_3
    return-void

    :cond_7
    :goto_4
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "parameter error: F10001"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final unlink(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileUnlink"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, "fail sdcard not mounted: F10002"

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p3

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fail operation not permitted, unlink %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "format(format, *args)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail no such file or directory: F10007 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p3

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/FileUtil;->isFileInAppPrivateDirectory(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletion of public space files is not allowed: F10009 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p3

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_5
    :try_start_0
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getDelete(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/FileUtil;->notifyOldFileRemoveVUrl(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_6
    :goto_0
    move v1, v0

    goto :goto_2

    :goto_1
    const-string v3, "FileBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v1, :cond_7

    if-eqz p3, :cond_8

    invoke-interface/range {p3 .. p3}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail permission denied: F10005 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p3

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    :goto_4
    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v11, "parameter error: F10001"

    const/4 v12, 0x0

    move-object v9, p0

    move-object/from16 v10, p3

    invoke-static/range {v9 .. v14}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final unzip(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 11
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "zipFilePath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "targetPath"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileUnzip"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/bridge/FileBridge;->getSdCardEnableByEnvironment()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, "fail sdcard not mounted: F10002"

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p4

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {p1, p3}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result v0

    const-string v3, " -> "

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/cloud/tmc/integration/utils/compress/CompressUtils;->unzip(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_4

    invoke-interface {p4}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unzip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileBridge"

    invoke-static {v5, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail permission denied: F10005, unzip "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p4

    invoke-static/range {v5 .. v10}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail no such file or directory: F10007, unzip "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p4

    invoke-static/range {v5 .. v10}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_6
    :goto_2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "parameter error: F10001"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final write(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 15
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "fd"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "data"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "encoding"
            }
            stringDefault = "utf8"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "position"
            }
        .end annotation
    .end param
    .param p6    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileWrite"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v9, p6

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "FileBridge"

    const-string v4, "data"

    move-object/from16 v5, p3

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "encoding"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_b

    :cond_0
    const-class v4, Lcom/cloud/tmc/integration/model/FileCache;

    invoke-interface {v0, v4, v11}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "app.getData(FileCache::class.java, true)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/integration/model/FileCache;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFlags()Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "parameter error: F10001"

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/FileCache;->getFileCache()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "bad file descriptor: F10003"

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkEncoding(Ljava/lang/String;)V

    invoke-static/range {p3 .. p4}, Lcom/cloud/tmc/integration/utils/FileUtil;->getByteArrayByEncode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FileUtil;->getDefaultBufferSize()I

    move-result v6

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v7, 0x61

    if-eq v5, v7, :cond_c

    const/16 v7, 0x77

    if-eq v5, v7, :cond_b

    const/16 v7, 0xbea

    if-eq v5, v7, :cond_a

    const/16 v7, 0xc32

    if-eq v5, v7, :cond_9

    const/16 v7, 0xc37

    if-eq v5, v7, :cond_8

    const/16 v7, 0xe94

    if-eq v5, v7, :cond_7

    const/16 v7, 0xee1

    if-eq v5, v7, :cond_6

    const v7, 0x17a39

    if-eq v5, v7, :cond_5

    const v7, 0x17ad4

    if-eq v5, v7, :cond_4

    const v7, 0x1cd6a

    if-ne v5, v7, :cond_12

    const-string v5, "wx+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    :cond_4
    const-string v5, "ax+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_2

    :cond_5
    const-string v5, "as+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_2

    :cond_6
    const-string v5, "wx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_1

    :cond_7
    const-string v5, "w+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_1

    :cond_8
    const-string v5, "ax"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_2

    :cond_9
    const-string v5, "as"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_2

    :cond_a
    const-string v5, "a+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_2

    :cond_b
    const-string v5, "w"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_3

    :cond_c
    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_3
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array v0, v6, [B

    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move v5, v10

    :goto_4
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    iput v6, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_10

    if-nez v5, :cond_d

    move v7, v3

    goto :goto_5

    :cond_d
    move v7, v10

    :goto_5
    if-nez v5, :cond_e

    sub-int/2addr v6, v3

    :cond_e
    if-gez v6, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid position: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", The offset is more than the length of the written data!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v4, p6

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v14, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :cond_f
    :try_start_5
    invoke-virtual {v14, v0, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v5, v6

    goto :goto_4

    :cond_10
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    if-eqz v9, :cond_11

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    const-string v3, "bytesWritten"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_11
    const-string v0, "write File finish"

    invoke-static {v12, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v14, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    :goto_6
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-static {v14, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_12
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Permission not supported for writing to file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_7
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-static {v13, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "fail permission denied: F10005"

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_a

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v2, v0, v10

    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "the named is %s charset is not supported!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "format(format, *args)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_a
    return-void

    :cond_13
    :goto_b
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "parameter error: F10001"

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final writeFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 16
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "filePath"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "data"
            }
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            name = {
                "encoding"
            }
            stringDefault = "utf8"
        .end annotation
    .end param
    .param p5    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = "fileWriteFile"
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, "FileBridge"

    const-string v5, "data"

    move-object/from16 v6, p3

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "encoding"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FileUtil;->isSDCardEnableByEnvironment()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "fail sdcard not mounted: F10002"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->getFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->generateFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/cloud/tmc/integration/utils/FileUtil;->accessDir(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail no such file or directory: F10007, open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    const-string v7, "local_data"

    const/4 v13, 0x0

    const/4 v8, 0x2

    const/4 v14, 0x0

    invoke-static {v1, v7, v13, v8, v14}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v0, v14, v8, v14}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkLocalDataFileDir$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v7

    goto :goto_0

    :cond_4
    invoke-static {v0, v14, v8, v14}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkTempFileDirRunTime$default(Lcom/cloud/tmc/integration/structure/App;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v7

    :goto_0
    if-eqz v7, :cond_5

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "fail the maximum size of the file storage limit exceeded: F10004"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->createFile(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result v1

    const-string v15, "fail permission denied: F10005, open "

    if-nez v1, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    const-string v0, "app.appId"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v9, v5

    invoke-static/range {v7 .. v12}, Lcom/cloud/tmc/integration/utils/FileUtil;->notifyNewFileGenerateVUrl$default(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkEncoding(Ljava/lang/String;)V

    invoke-static/range {p3 .. p4}, Lcom/cloud/tmc/integration/utils/FileUtil;->getByteArrayByEncode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FileUtil;->getDefaultBufferSize()I

    move-result v1

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-array v0, v1, [B

    move v1, v13

    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    invoke-virtual {v7, v0, v13, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v1, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    const-string v8, "bytesWritten"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_8
    const-string v0, "writeFile File finish"

    invoke-static {v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v7, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v6, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :goto_2
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v8, v0

    :try_start_6
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object v7, v0

    :try_start_8
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the named is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " charset is not supported!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_6
    return-void

    :cond_9
    :goto_7
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "parameter error: F10001"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
