.class public final Lcom/transsion/spwaitkiller/SpWaitKiller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;,
        Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;,
        Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00152\u00020\u0001:\u0003\u0015\u0016\u0017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/spwaitkiller/SpWaitKiller;",
        "",
        "builder",
        "Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;",
        "<init>",
        "(Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;)V",
        "hiddenApiExempter",
        "Lcom/transsion/spwaitkiller/HiddenApiExempter;",
        "working",
        "",
        "neverWaitingFinishQueue",
        "neverProcessWorkOnMainThread",
        "unExpectExceptionCatcher",
        "Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;",
        "targetSdkVersion",
        "",
        "mContext",
        "Landroid/content/Context;",
        "work",
        "",
        "realWork",
        "Companion",
        "QueueWorksWorkFieldHooker",
        "Builder",
        "SpWaitKiller_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;


# instance fields
.field private hiddenApiExempter:Lcom/transsion/spwaitkiller/HiddenApiExempter;

.field private mContext:Landroid/content/Context;

.field private neverProcessWorkOnMainThread:Z

.field private neverWaitingFinishQueue:Z

.field private targetSdkVersion:I

.field private unExpectExceptionCatcher:Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

.field private working:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/spwaitkiller/SpWaitKiller;->Companion:Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getHiddenApiExempter()Lcom/transsion/spwaitkiller/HiddenApiExempter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/spwaitkiller/DefaultHiddenApiExempter;

    invoke-direct {v0}, Lcom/transsion/spwaitkiller/DefaultHiddenApiExempter;-><init>()V

    invoke-virtual {p1, v0}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->setHiddenApiExempter(Lcom/transsion/spwaitkiller/HiddenApiExempter;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getUnExpectExceptionCatcher()Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/spwaitkiller/SpWaitKiller$1;

    invoke-direct {v0}, Lcom/transsion/spwaitkiller/SpWaitKiller$1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->setUnExpectExceptionCatcher(Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getHiddenApiExempter()Lcom/transsion/spwaitkiller/HiddenApiExempter;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->hiddenApiExempter:Lcom/transsion/spwaitkiller/HiddenApiExempter;

    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getNeverProcessWorkOnMainThread()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->neverProcessWorkOnMainThread:Z

    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getNeverWaitingFinishQueue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->neverWaitingFinishQueue:Z

    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getUnExpectExceptionCatcher()Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->unExpectExceptionCatcher:Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    iget-object p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->targetSdkVersion:I

    return-void
.end method

.method private final realWork()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v0, "android.app.QueuedWork"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->neverWaitingFinishQueue:Z

    const/16 v2, 0x1a

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    const-string v1, "sPendingWorkFinishers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type java.util.concurrent.ConcurrentLinkedQueue<*>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/transsion/spwaitkiller/ProxyFinishersLinkedList;

    invoke-direct {v3, v1}, Lcom/transsion/spwaitkiller/ProxyFinishersLinkedList;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "sFinishers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type java.util.LinkedList<*>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/LinkedList;

    new-instance v3, Lcom/transsion/spwaitkiller/ProxyFinishersList;

    invoke-direct {v3, v1}, Lcom/transsion/spwaitkiller/ProxyFinishersList;-><init>(Ljava/util/LinkedList;)V

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->neverProcessWorkOnMainThread:Z

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->targetSdkVersion:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->hiddenApiExempter:Lcom/transsion/spwaitkiller/HiddenApiExempter;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/transsion/spwaitkiller/HiddenApiExempter;->exempt(Landroid/content/Context;)Z

    :cond_3
    new-instance v0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;

    invoke-direct {v0}, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->proxyWork()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public final work()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->working:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/spwaitkiller/SpWaitKiller;->realWork()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->working:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->unExpectExceptionCatcher:Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;->onException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
