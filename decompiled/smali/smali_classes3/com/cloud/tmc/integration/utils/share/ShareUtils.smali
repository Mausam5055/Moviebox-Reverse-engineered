.class public final Lcom/cloud/tmc/integration/utils/share/ShareUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J)\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00082\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u000f\"\u00020\u0004H\u0007\u00a2\u0006\u0002\u0010\u0010J\"\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002JR\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u001a\u001a\u00020\r2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J0\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u001c2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/share/ShareUtils;",
        "",
        "()V",
        "TAG",
        "",
        "createShareIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "shareParams",
        "Lcom/cloud/tmc/integration/utils/share/ShareParams;",
        "getAppName",
        "isGranted",
        "",
        "permission",
        "",
        "(Landroid/content/Context;[Ljava/lang/String;)Z",
        "share",
        "",
        "listener",
        "Lcom/cloud/tmc/integration/utils/share/OnShareListener;",
        "shareFile",
        "Ljava/io/File;",
        "shareType",
        "text",
        "targetPackageName",
        "isFileProvider",
        "shareText",
        "",
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
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/share/ShareUtils;

.field private static final TAG:Ljava/lang/String; = "ShareUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/share/ShareUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createShareIntent(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;)Landroid/content/Intent;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getShareType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getSubLine()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getThumbnail()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getTargetPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    sget-object p1, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/share/ShareUtils;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "createChooser(Intent(Int\u2026  }, getAppName(context))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p1

    goto :goto_2

    :goto_1
    const-string v1, "ShareUtils"

    const-string v2, "getAppName failed!"

    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method public static final varargs isGranted(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    invoke-static {p0, v5}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v4

    :cond_3
    :goto_2
    return v2
.end method

.method private final share(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 1

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getStrategy()Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy;-><init>()V

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->setStrategy(Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;)V

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getStrategy()Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/share/config/IShareStrategy;->doShare(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    :cond_1
    return-void
.end method

.method public static final shareFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shareFile"

    move-object/from16 v5, p1

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/share/ShareUtils;

    new-instance v15, Lcom/cloud/tmc/integration/utils/share/ShareParams;

    if-nez p3, :cond_0

    const-string v2, ""

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    :goto_0
    if-nez p2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    const/16 v14, 0x578

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v2, v15

    move-object/from16 v5, p1

    move-object/from16 v10, p4

    move/from16 v12, p5

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lcom/cloud/tmc/integration/utils/share/ShareParams;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p6

    move-object/from16 v3, v17

    invoke-direct {v1, v0, v3, v2}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->share(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    return-void
.end method

.method public static synthetic shareFile$default(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/utils/share/OnShareListener;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x20

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x40

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move p7, v4

    move-object p8, v1

    invoke-static/range {p2 .. p8}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->shareFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    return-void
.end method

.method public static final shareText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "text"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/share/ShareUtils;

    new-instance v15, Lcom/cloud/tmc/integration/utils/share/ShareParams;

    const/16 v14, 0x77c

    const/16 v16, 0x0

    const-string v4, "text/plain"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v15

    move-object/from16 v10, p2

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lcom/cloud/tmc/integration/utils/share/ShareParams;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/io/File;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/ClipData;Ljava/lang/String;Landroid/net/Uri;ZLcom/cloud/tmc/integration/utils/share/config/IShareStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v1, v0, v3, v2}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->share(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    return-void
.end method

.method public static synthetic shareText$default(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/share/OnShareListener;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x4

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    return-void
.end method
