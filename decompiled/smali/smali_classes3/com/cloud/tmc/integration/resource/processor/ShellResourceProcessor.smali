.class public final Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/resource/IResourceProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J)\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096\u0002J3\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096\u0002J\u001f\u0010\u0008\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J)\u0010\u0008\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\u001c\u0010\u0012\u001a\u00020\u00132\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0016J\u001c\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;",
        "Lcom/cloud/tmc/kernel/resource/IResourceProcessor;",
        "()V",
        "TAG",
        "",
        "fuzzySearch",
        "",
        "appId",
        "get",
        "Landroid/webkit/WebResourceResponse;",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "commonResId",
        "Ljava/io/File;",
        "url",
        "commonresId",
        "shouldIntercept",
        "",
        "shouldInterceptFuzzySearch",
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


# static fields
.field public static final ASSET_SHELL_JS_BRIDGE_FILE_NAME:Ljava/lang/String; = "byteh5bridge.aio.min.js"

.field public static final ASSET_SHELL_JS_BRIDGE_FOLDER_NAME:Ljava/lang/String; = "ShellJSBridge"

.field public static final Companion:Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor$Companion;

.field private static final regex:Lkotlin/text/Regex;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->Companion:Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor$Companion;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "byteh5bridge.*.aio.min.js"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->regex:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "miniShell"

    iput-object v0, p0, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getRegex$cp()Lkotlin/text/Regex;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->regex:Lkotlin/text/Regex;

    return-object v0
.end method


# virtual methods
.method public fuzzySearch(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public get(Landroid/webkit/WebResourceRequest;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Landroid/webkit/WebResourceResponse;
    .locals 8

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShellJSBridge requestUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v1, :cond_3

    check-cast p3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_1

    :cond_3
    move-object p3, p2

    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/PageContext;->getActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    goto :goto_2

    :cond_4
    move-object p3, p2

    :goto_2
    if-eqz p3, :cond_a

    const-string v1, "ShellJSBridge"

    invoke-virtual {p3, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v2, v1

    if-nez v2, :cond_5

    goto/16 :goto_3

    :cond_5
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->TAG:Ljava/lang/String;

    const-string p3, "ShellJSBridge Folder only keep one byteh5bridge.aio.min.js"

    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_6
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->regex:Lkotlin/text/Regex;

    invoke-virtual {v2, v1}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->TAG:Ljava/lang/String;

    const-string p3, "ShellJSBridge Folder have file must match to byteh5bridge.aio.min.js"

    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_7
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string p1, "/"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "byteh5bridge.aio.min.js"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShellJSBridge get file From Assets:ShellJSBridge/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ShellJSBridge/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "assetManager.open(\"$ASSE\u2026E_FOLDER_NAME/$fileName\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->getContentTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/cloud/tmc/integration/resource/BaseResourceProcessor;->getResourceResponseEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-static {p2}, Lcom/cloud/tmc/integration/resource/BaseResourceProcessor;->addCommonWebRespHeaders(Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->TAG:Ljava/lang/String;

    const-string p3, "ShellJSBridge Folder must have byteh5bridge.aio.min.js"

    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object p2
.end method

.method public get(Landroid/webkit/WebResourceRequest;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Landroid/webkit/WebResourceResponse;
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->get(Landroid/webkit/WebResourceRequest;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public shouldIntercept(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Z
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "/"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->regex:Lkotlin/text/Regex;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldIntercept(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "getPath(it)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "/"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;->regex:Lkotlin/text/Regex;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldInterceptFuzzySearch(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
