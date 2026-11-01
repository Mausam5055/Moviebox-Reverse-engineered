.class public final Lcom/wecloud/load/lib/SoLoadService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wecloud/load/lib/SoLoadService$a;,
        Lcom/wecloud/load/lib/SoLoadService$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0099\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0006*\u0001X\u0018\u0000 \\2\u00020\u0001:\u0002=AB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ \u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J)\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00142\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 JI\u0010(\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000f2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00140$2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140&H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\'\u0010-\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u001f\u00101\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u00081\u00102J\u0019\u00106\u001a\u0002052\u0008\u00104\u001a\u0004\u0018\u000103H\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00088\u0010\u0003J\u000f\u00109\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00089\u0010\u0003J\r\u0010:\u001a\u00020\u0007\u00a2\u0006\u0004\u0008:\u0010\u0003J\r\u0010;\u001a\u00020\u0007\u00a2\u0006\u0004\u0008;\u0010\u0003R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010BR\u0018\u0010K\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010BR\u0014\u0010O\u001a\u00020L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u001a\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00140P8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR \u0010W\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000f0T8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0014\u0010[\u001a\u00020X8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u0010Z\u00a8\u0006]"
    }
    d2 = {
        "Lcom/wecloud/load/lib/SoLoadService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
        "s",
        "()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
        "",
        "A",
        "Lcom/wecloud/load/lib/SoDownloadRequest;",
        "request",
        "r",
        "(Lcom/wecloud/load/lib/SoDownloadRequest;)V",
        "Lcom/wecloud/load/lib/bean/SoZipInfo;",
        "soZipInfo",
        "",
        "zipIndex",
        "Lcom/wecloud/load/lib/SoLoadService$b;",
        "y",
        "(Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "methodName",
        "input",
        "soName",
        "",
        "q",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z",
        "status",
        "w",
        "(Ljava/lang/String;I)V",
        "msg",
        "x",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "groupIndex",
        "successCount",
        "failCount",
        "",
        "successSoNames",
        "",
        "failSoNames",
        "v",
        "(IIILjava/util/List;Ljava/util/Map;)V",
        "totalGroups",
        "totalSuccess",
        "totalFail",
        "t",
        "(III)V",
        "errorCode",
        "errorMessage",
        "u",
        "(ILjava/lang/String;)V",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "onDestroy",
        "onCreate",
        "B",
        "z",
        "Lkotlinx/coroutines/n0;",
        "a",
        "Lkotlinx/coroutines/n0;",
        "serviceScope",
        "Lkotlinx/coroutines/t1;",
        "b",
        "Lkotlinx/coroutines/t1;",
        "currentJob",
        "Lcom/wecloud/load/lib/h;",
        "c",
        "Lcom/wecloud/load/lib/h;",
        "callback",
        "d",
        "exitProcessCheckJob",
        "e",
        "exitMonitorJob",
        "",
        "f",
        "J",
        "MONITOR_INTERVAL_MS",
        "",
        "g",
        "Ljava/util/Set;",
        "loadedSoSet",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "h",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "downloadProgressMap",
        "com/wecloud/load/lib/SoLoadService$c",
        "i",
        "Lcom/wecloud/load/lib/SoLoadService$c;",
        "binder",
        "j",
        "lib_release"
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
.field public static final j:Lcom/wecloud/load/lib/SoLoadService$a;


# instance fields
.field private final a:Lkotlinx/coroutines/n0;

.field private b:Lkotlinx/coroutines/t1;

.field private c:Lcom/wecloud/load/lib/h;

.field private d:Lkotlinx/coroutines/t1;

.field private e:Lkotlinx/coroutines/t1;

.field private final f:J

.field private final g:Ljava/util/Set;

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;

.field private final i:Lcom/wecloud/load/lib/SoLoadService$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/wecloud/load/lib/SoLoadService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wecloud/load/lib/SoLoadService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/wecloud/load/lib/SoLoadService;->j:Lcom/wecloud/load/lib/SoLoadService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->a:Lkotlinx/coroutines/n0;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/wecloud/load/lib/SoLoadService;->f:J

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/wecloud/load/lib/SoLoadService$c;

    invoke-direct {v0, p0}, Lcom/wecloud/load/lib/SoLoadService$c;-><init>(Lcom/wecloud/load/lib/SoLoadService;)V

    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->i:Lcom/wecloud/load/lib/SoLoadService$c;

    return-void
.end method

.method private final A()V
    .locals 9

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->d:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/wecloud/load/lib/SoLoadService;->a:Lkotlinx/coroutines/n0;

    new-instance v6, Lcom/wecloud/load/lib/SoLoadService$startExitProcessCheck$1;

    invoke-direct {v6, p0, v1}, Lcom/wecloud/load/lib/SoLoadService$startExitProcessCheck$1;-><init>(Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->d:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic a(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/SoLoadService;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/wecloud/load/lib/SoLoadService;Lcom/wecloud/load/lib/SoDownloadRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wecloud/load/lib/SoLoadService;->r(Lcom/wecloud/load/lib/SoDownloadRequest;)V

    return-void
.end method

.method public static final synthetic c(Lcom/wecloud/load/lib/SoLoadService;)Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 0

    invoke-direct {p0}, Lcom/wecloud/load/lib/SoLoadService;->s()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/wecloud/load/lib/SoLoadService;)Lkotlinx/coroutines/t1;
    .locals 0

    iget-object p0, p0, Lcom/wecloud/load/lib/SoLoadService;->b:Lkotlinx/coroutines/t1;

    return-object p0
.end method

.method public static final synthetic e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/wecloud/load/lib/SoLoadService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic f(Lcom/wecloud/load/lib/SoLoadService;)Lkotlinx/coroutines/t1;
    .locals 0

    iget-object p0, p0, Lcom/wecloud/load/lib/SoLoadService;->e:Lkotlinx/coroutines/t1;

    return-object p0
.end method

.method public static final synthetic g(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/wecloud/load/lib/SoLoadService;->g:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic h(Lcom/wecloud/load/lib/SoLoadService;)J
    .locals 2

    iget-wide v0, p0, Lcom/wecloud/load/lib/SoLoadService;->f:J

    return-wide v0
.end method

.method public static final synthetic i(Lcom/wecloud/load/lib/SoLoadService;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/SoLoadService;->t(III)V

    return-void
.end method

.method public static final synthetic j(Lcom/wecloud/load/lib/SoLoadService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService;->u(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic k(Lcom/wecloud/load/lib/SoLoadService;IIILjava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wecloud/load/lib/SoLoadService;->v(IIILjava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic l(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService;->w(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic m(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic n(Lcom/wecloud/load/lib/SoLoadService;Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/SoLoadService;->y(Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/wecloud/load/lib/SoLoadService;Lcom/wecloud/load/lib/h;)V
    .locals 0

    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    return-void
.end method

.method public static final synthetic p(Lcom/wecloud/load/lib/SoLoadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/wecloud/load/lib/SoLoadService;->A()V

    return-void
.end method

.method private final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/wecloud/load/lib/SoLoadService$d;

    invoke-direct {v1, p0, p3}, Lcom/wecloud/load/lib/SoLoadService$d;-><init>(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "group4Init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/wecloud/load/lib/NativeClass;->a:Lcom/wecloud/load/lib/NativeClass;

    invoke-virtual {p1, p2, v1}, Lcom/wecloud/load/lib/NativeClass;->group4Init(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move v0, p3

    goto :goto_3

    :sswitch_1
    const-string v2, "group3Init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/wecloud/load/lib/NativeClass;->a:Lcom/wecloud/load/lib/NativeClass;

    invoke-virtual {p1, p2, v1}, Lcom/wecloud/load/lib/NativeClass;->group3Init(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V

    goto :goto_1

    :sswitch_2
    const-string v2, "group2Init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/wecloud/load/lib/NativeClass;->a:Lcom/wecloud/load/lib/NativeClass;

    invoke-virtual {p1, p2, v1}, Lcom/wecloud/load/lib/NativeClass;->group2Init(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V

    goto :goto_1

    :sswitch_3
    const-string v2, "group1Init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/wecloud/load/lib/NativeClass;->a:Lcom/wecloud/load/lib/NativeClass;

    invoke-virtual {p1, p2, v1}, Lcom/wecloud/load/lib/NativeClass;->group1Init(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V

    goto :goto_1

    :sswitch_4
    const-string v2, "group0Init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "when else methodName  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    sget-object p1, Lcom/wecloud/load/lib/NativeClass;->a:Lcom/wecloud/load/lib/NativeClass;

    invoke-virtual {p1, p2, v1}, Lcom/wecloud/load/lib/NativeClass;->group0Init(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v0, p3

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "when callNativeInit e  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SO\u52a0\u8f7d\u5931\u8d25 (UnsatisfiedLinkError): "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SoLoadService"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return v0

    :sswitch_data_0
    .sparse-switch
        0x49c78241 -> :sswitch_4
        0x49d599c2 -> :sswitch_3
        0x49e3b143 -> :sswitch_2
        0x49f1c8c4 -> :sswitch_1
        0x49ffe045 -> :sswitch_0
    .end sparse-switch
.end method

.method private final r(Lcom/wecloud/load/lib/SoDownloadRequest;)V
    .locals 8

    invoke-virtual {p1}, Lcom/wecloud/load/lib/SoDownloadRequest;->isValid()Z

    move-result v0

    const/16 v1, 0x3e9

    if-nez v0, :cond_0

    const-string p1, "\u8bf7\u6c42\u6570\u636e\u65e0\u6548"

    invoke-direct {p0, v1, p1}, Lcom/wecloud/load/lib/SoLoadService;->u(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/wecloud/load/lib/SoDownloadRequest;->getSoZipList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "SO ZIP\u5217\u8868\u4e3a\u7a7a"

    invoke-direct {p0, v1, p1}, Lcom/wecloud/load/lib/SoLoadService;->u(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/wecloud/load/lib/SoDownloadRequest;->getControlConfig()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/wecloud/load/lib/SoLoadService;->A()V

    :cond_2
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService;->b:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v2, p0, Lcom/wecloud/load/lib/SoLoadService;->a:Lkotlinx/coroutines/n0;

    new-instance v5, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;

    invoke-direct {v5, v0, p0, v1}, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService;->b:Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final s()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lgz/b;->a:Lgz/b;

    invoke-virtual {v1}, Lgz/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "so_load_control_config"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    invoke-virtual {v1}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ece MMKV \u8bfb\u53d6\u914d\u7f6e\u6210\u529f: exitProcess="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4ece MMKV \u8bfb\u53d6\u914d\u7f6e\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoLoadService"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method private final t(III)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/wecloud/load/lib/h;->n0(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u56de\u8c03\u5f02\u5e38: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SoLoadService"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final u(ILjava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/wecloud/load/lib/h;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u8c03\u5f02\u5e38: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SoLoadService"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final v(IIILjava/util/List;Ljava/util/Map;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/wecloud/load/lib/h;->q0(IIILjava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u56de\u8c03\u5f02\u5e38: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SoLoadService"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final w(Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/wecloud/load/lib/h;->e(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u8c03\u5f02\u5e38: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SoLoadService"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/wecloud/load/lib/h;->R(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u8c03\u5f02\u5e38: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SoLoadService"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private final y(Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;-><init>(Lcom/wecloud/load/lib/bean/SoZipInfo;ILcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final B()V
    .locals 0

    invoke-direct {p0}, Lcom/wecloud/load/lib/SoLoadService;->A()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService;->i:Lcom/wecloud/load/lib/SoLoadService$c;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->C(Landroid/content/Context;)Ljava/lang/String;

    sget-object v0, Lcom/wecloud/load/lib/p;->a:Lcom/wecloud/load/lib/p;

    invoke-virtual {v0, p0}, Lcom/wecloud/load/lib/p;->b(Lcom/wecloud/load/lib/SoLoadService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/wecloud/load/lib/p;->a:Lcom/wecloud/load/lib/p;

    invoke-virtual {v0}, Lcom/wecloud/load/lib/p;->d()V

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->b:Lkotlinx/coroutines/t1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->d:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->a:Lkotlinx/coroutines/n0;

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final z()V
    .locals 9

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->e:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/wecloud/load/lib/SoLoadService;->a:Lkotlinx/coroutines/n0;

    new-instance v6, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;

    invoke-direct {v6, p0, v1}, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;-><init>(Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->e:Lkotlinx/coroutines/t1;

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SoLoadManagerExample"

    const-string v3, "\u5df2\u542f\u52a8\u9000\u51fa\u76d1\u63a7\u4efb\u52a1\uff0c\u6bcf30\u5206\u949f\u68c0\u67e5\u4e00\u6b21"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
