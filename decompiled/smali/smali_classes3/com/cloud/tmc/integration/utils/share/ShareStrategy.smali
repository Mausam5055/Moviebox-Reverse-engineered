.class public final Lcom/cloud/tmc/integration/utils/share/ShareStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/share/ShareStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0012\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J#\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0002J\"\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J4\u0010\u001a\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH\u0002J\"\u0010\u001f\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/share/ShareStrategy;",
        "Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;",
        "()V",
        "bytes2HexString",
        "",
        "data",
        "",
        "doShare",
        "",
        "context",
        "Landroid/content/Context;",
        "shareParams",
        "Lcom/cloud/tmc/integration/utils/share/ShareParams;",
        "listener",
        "Lcom/cloud/tmc/integration/utils/share/OnShareListener;",
        "getExternalDownloadAppPath",
        "getExternalDownloadPath",
        "getFileMD5",
        "file",
        "Ljava/io/File;",
        "getFileUriByCursor",
        "Landroid/net/Uri;",
        "(Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFileUriByProvider",
        "getSDCardPathByEnvironment",
        "handleShareChannels",
        "handleShareFile",
        "block",
        "Lkotlin/Function0;",
        "isSDCardEnableByEnvironment",
        "",
        "queryFileUriByCursor",
        "fileName",
        "absolutePath",
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
.field public static final Companion:Lcom/cloud/tmc/integration/utils/share/ShareStrategy$Companion;

.field private static final DIR_BYTEAPP:Ljava/lang/String; = "MiniApp"

.field private static final HANDLER:Landroid/os/Handler;

.field private static final MAX_QUERY_BY_CURSOR_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShareStrategy"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->Companion:Lcom/cloud/tmc/integration/utils/share/ShareStrategy$Companion;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareFile$lambda$1$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getFileUriByCursor(Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getFileUriByCursor(Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHANDLER$cp()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareFile$lambda$2(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final bytes2HexString([B)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p1, v3

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "r.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getExternalDownloadAppPath()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->isSDCardEnableByEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getExternalDownloadPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniApp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{\n            File(getEx\u2026P).absolutePath\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private final getExternalDownloadPath()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->isSDCardEnableByEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getSDCardPathByEnvironment()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{\n            File(getSD\u2026S).absolutePath\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private final getFileMD5(Ljava/io/File;)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "MD5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, v1, p1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 p1, 0x40000

    :try_start_2
    new-array p1, p1, [B

    :cond_1
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_1

    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v3, "digest.digest()"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    :try_start_3
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_6
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_0
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v2

    :try_start_8
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_1
    const-string v1, "ShareStrategy"

    const-string v2, "getFileMD5: "

    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p1, v0, [B

    return-object p1

    :cond_2
    :goto_2
    new-array p1, v0, [B

    return-object p1
.end method

.method private final getFileUriByCursor(Landroid/content/Context;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;

    iget v3, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;

    invoke-direct {v2, v1, v0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;-><init>(Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->label:I

    const-string v5, "ShareStrategy"

    const-string v6, "destFile.absolutePath"

    const-string v7, "destFile.name"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v9, :cond_1

    iget v4, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->I$0:I

    iget-object v10, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/io/File;

    iget-object v11, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$1:Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    iget-object v12, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v11

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getExternalDownloadAppPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v4, p2

    invoke-direct {v1, v4}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getFileMD5(Ljava/io/File;)[B

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getFileMD5(Ljava/io/File;)[B

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p2

    move-object v11, v0

    invoke-static/range {v10 .. v15}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->moveTo$default(Ljava/io/File;Ljava/io/File;ZZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->notifySystemToScan(Ljava/io/File;)V

    const/4 v4, 0x0

    move-object v10, v0

    move-object v12, v1

    move-object v11, v8

    move-object/from16 v0, p1

    :goto_1
    if-nez v11, :cond_5

    const/4 v13, 0x3

    if-ge v4, v13, :cond_5

    iput-object v12, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->L$2:Ljava/lang/Object;

    iput v4, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->I$0:I

    iput v9, v2, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$getFileUriByCursor$1;->label:I

    const-wide/16 v13, 0xfa

    invoke-static {v13, v14, v2}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_4

    return-object v3

    :cond_4
    :goto_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v0, v11, v13}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->queryFileUriByCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getFileUriByCursor: queryFileUriByCursor uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-object v11

    :cond_6
    return-object v8

    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v2, v0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->queryFileUriByCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :goto_4
    const-string v2, "getFileUriByCursor: "

    invoke-static {v5, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v8
.end method

.method private final getFileUriByProvider(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".fileprovider"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "ShareStrategy"

    const-string v0, "getFileUri: "

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getSDCardPathByEnvironment()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->isSDCardEnableByEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private final handleShareChannels(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;

    invoke-direct {v0, p2, p1, p3}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;-><init>(Lcom/cloud/tmc/integration/utils/share/ShareParams;Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareFile(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final handleShareFile(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;Lkotlin/jvm/functions/Function0;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/integration/utils/share/ShareParams;",
            "Lcom/cloud/tmc/integration/utils/share/OnShareListener;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v6, p4

    const-string v9, "ShareStrategy"

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getShareFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x2

    if-lt v1, v2, :cond_0

    new-array v2, v10, [Ljava/lang/String;

    const-string v7, "android.permission.READ_MEDIA_IMAGES"

    aput-object v7, v2, v4

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    aput-object v4, v2, v3

    goto :goto_0

    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    :goto_0
    :try_start_0
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x22

    if-ge v1, v2, :cond_2

    const-string v0, "handleShareFile: has no write permission"

    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getChannel()I

    move-result v0

    invoke-interface {v8, v0, v10}, Lcom/cloud/tmc/integration/utils/share/OnShareListener;->onShare(II)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v11, p0

    :goto_1
    move-object/from16 v12, p2

    goto :goto_3

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->isFileProvider()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    move-object/from16 v11, p0

    :try_start_1
    invoke-direct {v11, v0, v5}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->getFileUriByProvider(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v12, v0}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->setFileUri(Landroid/net/Uri;)V

    sget-object v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/cloud/tmc/integration/utils/share/a;

    invoke-direct {v1, v6}, Lcom/cloud/tmc/integration/utils/share/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_1

    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v13

    new-instance v16, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;

    const/4 v7, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareFile$1$2;-><init>(Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Landroid/content/Context;Ljava/io/File;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_4
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    const-string v0, "handleShareFile: file is not exist"

    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    const-string v1, "handleShareFile: exception"

    invoke-static {v9, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    if-eqz v8, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getChannel()I

    move-result v0

    invoke-interface {v8, v0, v10}, Lcom/cloud/tmc/integration/utils/share/OnShareListener;->onShare(II)V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v11, p0

    sget-object v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/cloud/tmc/integration/utils/share/b;

    invoke-direct {v1, v6}, Lcom/cloud/tmc/integration/utils/share/b;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic handleShareFile$default(Lcom/cloud/tmc/integration/utils/share/ShareStrategy;Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareFile(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final handleShareFile$lambda$1$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final handleShareFile$lambda$2(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final isSDCardEnableByEnvironment()Z
    .locals 2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final queryFileUriByCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getContentUri(\"external\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v4, "_display_name=? AND _data=?"

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "_id"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "withAppendedId(contentUri, id)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "_display_name"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFileUriByCursor: uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " displayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " path: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ShareStrategy"

    invoke-static {v0, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public doShare(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doShare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareStrategy"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareChannels(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    return-void
.end method
