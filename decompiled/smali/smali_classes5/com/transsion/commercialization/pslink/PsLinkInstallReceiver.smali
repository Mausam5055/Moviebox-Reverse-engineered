.class public final Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "action",
        "e",
        "(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "a",
        "b",
        "Commercialization_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final a:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;

.field private static b:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

.field private static final c:Ljava/util/LinkedHashMap;

.field private static final d:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;

    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;-><init>()V

    sput-object v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->d:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;
    .locals 1

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->d:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;

    return-object v0
.end method

.method public static final synthetic b()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;
    .locals 1

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->b:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/LinkedHashMap;
    .locals 1

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->c:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;)V
    .locals 0

    sput-object p0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->b:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    return-void
.end method

.method private final e(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PsLinkInstallReceiver --> onReceive() --> packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->e(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->q()Z

    move-result v0

    const-string v1, "installApp"

    const-string v2, "removedApp"

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    if-eqz v0, :cond_3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v2

    :cond_2
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->c:Ljava/util/LinkedHashMap;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PsLinkInstallReceiver --> cacheEvent() --> pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " action="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (pending count="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, ""

    if-nez v0, :cond_5

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-virtual {p1}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->i()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/pslink/b;

    invoke-interface {v0, v2, v5, v4, p2}, Lcom/transsion/commercialization/pslink/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_1
    sget-object p1, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-virtual {p1}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->i()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/pslink/b;

    invoke-interface {v0, v1, v5, v4, p2}, Lcom/transsion/commercialization/pslink/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method
