.class public final Lcom/cloud/hisavana/sdk/manager/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/manager/a;

.field private static b:Ljava/lang/Long;

.field private static c:Ljava/lang/Long;

.field private static d:Ljava/lang/Long;

.field private static e:Ljava/lang/Integer;

.field private static f:Ljava/lang/Integer;

.field private static g:Z

.field private static h:Ljava/lang/Integer;

.field private static volatile i:J

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/ref/WeakReference;

.field private static m:Z

.field private static n:Z

.field private static o:Z

.field private static p:J

.field private static q:J

.field private static r:J

.field private static s:J

.field private static t:J

.field private static u:Landroidx/browser/customtabs/f;

.field private static v:Landroidx/browser/customtabs/CustomTabsClient;

.field private static w:Landroidx/browser/customtabs/j;

.field private static x:Z

.field private static final y:Lcom/cloud/hisavana/sdk/manager/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/a;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/a;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->e:Ljava/lang/Integer;

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->h:Ljava/lang/Integer;

    const-string v0, ""

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->k:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/a$e;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/a$e;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->y:Lcom/cloud/hisavana/sdk/manager/a$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic B(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/manager/a;->k:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic C(Z)V
    .locals 0

    sput-boolean p0, Lcom/cloud/hisavana/sdk/manager/a;->m:Z

    return-void
.end method

.method public static final synthetic D(Lcom/cloud/hisavana/sdk/manager/a;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->U(Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic F()Landroidx/browser/customtabs/f;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->u:Landroidx/browser/customtabs/f;

    return-object v0
.end method

.method private final H(IJ)V
    .locals 11

    :try_start_0
    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    sget-wide v2, Lcom/cloud/hisavana/sdk/manager/a;->q:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->l:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-boolean p1, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    sget-wide p1, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/manager/a;->f0()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->Q(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static final synthetic I(J)V
    .locals 0

    sput-wide p0, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    return-void
.end method

.method private final J(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->l:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static final synthetic K(Lcom/cloud/hisavana/sdk/manager/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/a;->j0()V

    return-void
.end method

.method public static final synthetic L(Lcom/cloud/hisavana/sdk/manager/a;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/manager/a;->H(IJ)V

    return-void
.end method

.method private final N(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/cloud/hisavana/sdk/manager/a;->n:Z

    const/4 v1, 0x0

    const-string v2, "CustomTabsManager"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/cloud/hisavana/sdk/manager/a;->o:Z

    if-eqz p1, :cond_3

    :cond_0
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/m;->k(Lcom/cloud/sdk/commonutil/util/m$b;)V

    sput-boolean v3, Lcom/cloud/hisavana/sdk/manager/a;->m:Z

    const/4 p1, 0x0

    sput-boolean p1, Lcom/cloud/hisavana/sdk/manager/a;->o:Z

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "upload finish tracking"

    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/a;->k0()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v3, Lcom/cloud/hisavana/sdk/manager/a;->o:Z

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "isActivityResume true"

    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/m;->k(Lcom/cloud/sdk/commonutil/util/m$b;)V

    sput-boolean v3, Lcom/cloud/hisavana/sdk/manager/a;->m:Z

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivityResume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final synthetic O(Z)V
    .locals 0

    sput-boolean p0, Lcom/cloud/hisavana/sdk/manager/a;->n:Z

    return-void
.end method

.method public static final synthetic P()Landroidx/browser/customtabs/j;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    return-object v0
.end method

.method public static final synthetic Q(J)V
    .locals 0

    sput-wide p0, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    return-void
.end method

.method public static final synthetic R(Z)V
    .locals 0

    sput-boolean p0, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    return-void
.end method

.method public static final synthetic S()J
    .locals 2

    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    return-wide v0
.end method

.method public static final synthetic T(J)V
    .locals 0

    sput-wide p0, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    return-void
.end method

.method private final U(Z)Z
    .locals 7

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->u:Landroidx/browser/customtabs/f;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v3, "checkServerIsAvailable: service is connected check alive"

    const-string v4, "CustomTabsManager"

    invoke-virtual {p1, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    sget-object v3, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    if-eqz v3, :cond_1

    const-string v5, "test"

    invoke-virtual {v3, v5, p1}, Landroidx/browser/customtabs/j;->i(Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move v1, v2

    :cond_1
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkServerIsAvailable: alive ->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v3, :cond_2

    sget-object v5, Lcom/cloud/hisavana/sdk/manager/a;->y:Lcom/cloud/hisavana/sdk/manager/a$e;

    invoke-virtual {v3, v5}, Landroidx/browser/customtabs/CustomTabsClient;->c(Landroidx/browser/customtabs/c;)Landroidx/browser/customtabs/j;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p1

    :goto_2
    sput-object v3, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "checkServerIsAvailable: service is not connected,need bind"

    invoke-virtual {v0, v4, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    sput-object p1, Lcom/cloud/hisavana/sdk/manager/a;->u:Landroidx/browser/customtabs/f;

    sput-boolean v2, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    return v2

    :cond_3
    return v0
.end method

.method public static final synthetic V()J
    .locals 2

    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    return-wide v0
.end method

.method public static final synthetic W(J)V
    .locals 0

    sput-wide p0, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    return-void
.end method

.method public static final synthetic X()J
    .locals 2

    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    return-wide v0
.end method

.method public static final synthetic Y()J
    .locals 2

    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    return-wide v0
.end method

.method public static final synthetic Z()Z
    .locals 1

    sget-boolean v0, Lcom/cloud/hisavana/sdk/manager/a;->m:Z

    return v0
.end method

.method public static final synthetic a0()Z
    .locals 1

    sget-boolean v0, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    return v0
.end method

.method public static final synthetic d()Landroidx/browser/customtabs/CustomTabsClient;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    return-object v0
.end method

.method private final d0()V
    .locals 2

    const-wide/16 v0, 0x0

    :try_start_0
    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    sput-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private final e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/manager/a$i;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/cloud/hisavana/sdk/manager/a$i;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/manager/a$g;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/cloud/hisavana/sdk/manager/a$g;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final g(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    :try_start_0
    new-instance v1, Lcom/cloud/hisavana/sdk/manager/a$c;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/manager/a$c;-><init>(Lkotlinx/coroutines/n;)V

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/manager/a;->u(Landroidx/browser/customtabs/f;)V

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-virtual {v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b()Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/cloud/hisavana/sdk/manager/a$d;

    const/4 v1, 0x0

    invoke-direct {v5, p1, v0, v1}, Lcom/cloud/hisavana/sdk/manager/a$d;-><init>(Landroid/content/Context;Lkotlinx/coroutines/n;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "CustomTabsManager"

    const-string v2, "bindCustomTabsService: "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method private final h(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/cloud/hisavana/sdk/manager/a$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/cloud/hisavana/sdk/manager/a$a;

    iget v1, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/a$a;

    invoke-direct {v0, p0, p3}, Lcom/cloud/hisavana/sdk/manager/a$a;-><init>(Lcom/cloud/hisavana/sdk/manager/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->e:I

    const/16 v3, 0x1b5e

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-boolean p2, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->b:Z

    iget-object p1, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->a:Ljava/lang/Object;

    check-cast p1, Lcom/cloud/hisavana/sdk/manager/a;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getCctBindTimeout()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x3e8

    :goto_1
    new-instance p3, Lcom/cloud/hisavana/sdk/manager/a$b;

    invoke-direct {p3, p1, v4}, Lcom/cloud/hisavana/sdk/manager/a$b;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->a:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->b:Z

    iput v5, v0, Lcom/cloud/hisavana/sdk/manager/a$a;->e:I

    invoke-static {v6, v7, p3, v0}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_5
    move p1, v3

    :goto_3
    if-nez p1, :cond_9

    if-eqz p2, :cond_7

    sget-object p2, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz p2, :cond_6

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->e(J)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    sput-boolean v5, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    :cond_7
    sget-object p2, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz p2, :cond_8

    sget-object p3, Lcom/cloud/hisavana/sdk/manager/a;->y:Lcom/cloud/hisavana/sdk/manager/a$e;

    invoke-virtual {p2, p3}, Landroidx/browser/customtabs/CustomTabsClient;->c(Landroidx/browser/customtabs/c;)Landroidx/browser/customtabs/j;

    move-result-object v4

    :cond_8
    sput-object v4, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string p3, "CustomTabsManager"

    const-string v0, "bindCustomTabsService success now "

    invoke-virtual {p2, p3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic i(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/manager/a;->e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/manager/a;->f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final j0()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->u:Landroidx/browser/customtabs/f;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/a;->d0()V

    return-void
.end method

.method public static final synthetic k(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/manager/a;->g(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final k0()V
    .locals 23

    move-object/from16 v0, p0

    sget-wide v1, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/16 v2, 0x1f4a

    const/16 v5, 0x1f49

    if-nez v1, :cond_1

    sget-wide v6, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    cmp-long v1, v6, v3

    if-nez v1, :cond_1

    sget-wide v6, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    cmp-long v1, v6, v3

    if-eqz v1, :cond_0

    invoke-direct {v0, v5, v6, v7}, Lcom/cloud/hisavana/sdk/manager/a;->H(IJ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    sub-long/2addr v6, v8

    invoke-direct {v0, v2, v6, v7}, Lcom/cloud/hisavana/sdk/manager/a;->n(IJ)V

    :cond_1
    :goto_0
    :try_start_0
    sget-wide v6, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    sget-wide v8, Lcom/cloud/hisavana/sdk/manager/a;->q:J

    sub-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    sub-long/2addr v8, v10

    sget-wide v10, Lcom/cloud/hisavana/sdk/manager/a;->s:J

    cmp-long v1, v10, v3

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    move v2, v12

    goto :goto_1

    :cond_2
    sget-wide v10, Lcom/cloud/hisavana/sdk/manager/a;->t:J

    cmp-long v1, v10, v3

    if-eqz v1, :cond_3

    const/16 v2, 0x1f48

    goto :goto_1

    :cond_3
    sget-wide v10, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    cmp-long v1, v10, v3

    if-eqz v1, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    move-wide v10, v8

    :goto_1
    sget-object v13, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->l:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    :goto_2
    move-object v15, v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    sget-boolean v1, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    sget-object v20, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    sget-wide v1, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    const/4 v12, 0x1

    :cond_6
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/manager/a;->f0()Landroid/os/Bundle;

    move-result-object v22

    invoke-virtual/range {v13 .. v22}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->S(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static final synthetic l(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/manager/a;->h(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final n(IJ)V
    .locals 11

    :try_start_0
    sget-wide v0, Lcom/cloud/hisavana/sdk/manager/a;->p:J

    sget-wide v2, Lcom/cloud/hisavana/sdk/manager/a;->q:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->l:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-boolean p1, Lcom/cloud/hisavana/sdk/manager/a;->x:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    sget-wide p1, Lcom/cloud/hisavana/sdk/manager/a;->r:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/manager/a;->f0()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->Q(Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static final synthetic p(J)V
    .locals 0

    sput-wide p0, Lcom/cloud/hisavana/sdk/manager/a;->q:J

    return-void
.end method

.method private final q(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/util/b;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x5

    if-ne p3, v1, :cond_2

    sget-object p3, Lcom/cloud/hisavana/sdk/k4;->a:Lcom/cloud/hisavana/sdk/k4;

    invoke-virtual {p3, p1, p2}, Lcom/cloud/hisavana/sdk/k4;->l(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void

    :cond_2
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    const-string p3, "CustomTabsManager"

    if-nez p1, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "preload h5, mCCTSession is null"

    invoke-virtual {p1, p3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/b;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/cloud/hisavana/sdk/manager/a;->i:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long p1, v4, v6

    if-gtz p1, :cond_6

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "preload h5, cool down time is 2000ms"

    invoke-virtual {p1, p3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPreloadStatus()I

    move-result p1

    const/4 p3, 0x2

    if-ge p1, p3, :cond_5

    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start preload h5, url is : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->w:Landroidx/browser/customtabs/j;

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    move-result-object p3

    const-string v0, "getRealLandUrl(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v0, "parse(this)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, v0}, Landroidx/browser/customtabs/j;->h(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    :cond_7
    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    sput-wide v2, Lcom/cloud/hisavana/sdk/manager/a;->i:J

    return-void
.end method

.method public static final synthetic t(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/manager/a;->v:Landroidx/browser/customtabs/CustomTabsClient;

    return-void
.end method

.method public static final synthetic u(Landroidx/browser/customtabs/f;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/manager/a;->u:Landroidx/browser/customtabs/f;

    return-void
.end method

.method public static final synthetic v(Lcom/cloud/hisavana/sdk/manager/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/a;->d0()V

    return-void
.end method

.method public static final synthetic w(Lcom/cloud/hisavana/sdk/manager/a;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/manager/a;->n(IJ)V

    return-void
.end method

.method public static final synthetic x(Lcom/cloud/hisavana/sdk/manager/a;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/manager/a;->q(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    return-void
.end method

.method public static final synthetic y(Lcom/cloud/hisavana/sdk/manager/a;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->J(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static final synthetic z(Lcom/cloud/hisavana/sdk/manager/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->N(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Integer;)V
    .locals 0

    sput-object p1, Lcom/cloud/hisavana/sdk/manager/a;->h:Ljava/lang/Integer;

    return-void
.end method

.method public final E(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)I
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->A(Ljava/lang/Integer;)V

    invoke-static {p3, p2}, Lcom/cloud/hisavana/sdk/common/activity/b;->a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getSplicedURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getOriginalUrl()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3, p2, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->G(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x1b6e

    return p1

    :catchall_0
    const/16 p1, 0x1b67

    return p1
.end method

.method public final G(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.hisavana.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final M(Ljava/lang/Integer;)V
    .locals 0

    sput-object p1, Lcom/cloud/hisavana/sdk/manager/a;->e:Ljava/lang/Integer;

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1c

    const-string v2, "http://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_9

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getEnableSplashADcct()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    if-nez p2, :cond_3

    const/16 p1, 0x1b64

    return p1

    :cond_3
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p2

    const-string v0, "cct_switch_state"

    invoke-virtual {p2, v0, v3}, Lj7/a;->g(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "CustomTabsManager"

    if-eqz p2, :cond_6

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    const-string v4, "cct_switch_timestamp"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lj7/a;->i(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getDIntervalTime()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x7

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const v4, 0x5265c00

    mul-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, v6, v4

    if-gez v2, :cond_5

    return p2

    :cond_5
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lj7/a;->p(Ljava/lang/String;I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkInstallChromOrEnableCCT: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getEnableCctSwitch()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_3

    :cond_7
    move p2, v0

    :goto_3
    if-nez p2, :cond_8

    const/16 p1, 0x1b61

    return p1

    :cond_8
    sget-object p2, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v0

    goto :goto_4

    :cond_9
    move v2, v3

    :goto_4
    if-eqz v2, :cond_a

    sget-object p2, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/manager/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_a
    sput-object p2, Lcom/cloud/hisavana/sdk/manager/a;->j:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_b

    move p1, v0

    goto :goto_5

    :cond_b
    move p1, v3

    :goto_5
    if-eqz p1, :cond_c

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "checkInstallChromOrEnableCCT:"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1b60

    return p1

    :cond_c
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getSysBlackVersion()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_e

    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p1, 0x1b62

    return p1

    :cond_f
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "devide model is -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getWhiteDeviceModel()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_11

    :cond_10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_11
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/16 v2, 0x1b63

    if-nez v1, :cond_15

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    move v0, v3

    :cond_14
    :goto_6
    if-eqz v0, :cond_1b

    return v2

    :cond_15
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object p2

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getBlackDeviceModel()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_17

    :cond_16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_7

    :cond_18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_8

    :cond_1a
    :goto_7
    move v0, v3

    :goto_8
    if-eqz v0, :cond_1b

    return v2

    :cond_1b
    return v3

    :cond_1c
    :goto_9
    const/16 p1, 0x1b6f

    return p1
.end method

.method public final b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)I
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/m;->h()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/manager/a;->J(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    new-instance v0, Landroidx/browser/customtabs/d$b;

    invoke-direct {v0}, Landroidx/browser/customtabs/d$b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v0, v3}, Landroidx/browser/customtabs/d$b;->e(I)Landroidx/browser/customtabs/d$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v0, v3}, Landroidx/browser/customtabs/d$b;->f(Z)Landroidx/browser/customtabs/d$b;

    invoke-virtual {v0}, Landroidx/browser/customtabs/d$b;->a()Landroidx/browser/customtabs/d;

    move-result-object v0

    const-string v4, "build(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    const-string v4, "com.android.chrome"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    const-string v4, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    const-string v4, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    const-string v4, "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    const-string v4, "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->A(Ljava/lang/Integer;)V

    invoke-static {p3, p2}, Lcom/cloud/hisavana/sdk/common/activity/b;->a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getSplicedURL()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, ""

    if-nez v1, :cond_2

    move-object v1, v3

    :cond_2
    :try_start_3
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;->getOriginalUrl()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, p3

    :goto_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v1, "parse(this)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3}, Landroidx/browser/customtabs/d;->a(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/j3;->a()Ljava/lang/String;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, p2, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->G(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "launchUrl failed,error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CustomTabsManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1b65

    :goto_3
    return v2
.end method

.method public final b0()I
    .locals 7

    const-string v0, "custom_tab"

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getABTestData(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getLayerId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getSwitch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;->getReqInterval()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/cloud/hisavana/abtestkit/ABTestKit;->getABTestVariant(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isOpen()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    instance-of v1, v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;->getVariant()Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "customTabGroup"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v4

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getLayerId()Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    sput-object v2, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getExpId()Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v4

    :goto_4
    sput-object v2, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->getSubExpId()Ljava/lang/Long;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v0, v4

    :goto_5
    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    const-string v0, "true"

    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-static {v1, v0, v2, v5, v4}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    const/16 v0, 0x1b6a

    return v0

    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    const/16 v0, 0x1b66

    return v0

    :cond_7
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isPushAll()Z

    move-result v2

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_8

    sput-boolean v3, Lcom/cloud/hisavana/sdk/manager/a;->g:Z

    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    const/16 v0, 0x1b6b

    return v0

    :cond_8
    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_b

    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    instance-of v1, v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    goto :goto_6

    :cond_9
    move-object v0, v4

    :goto_6
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_a
    sput-object v4, Lcom/cloud/hisavana/sdk/manager/a;->e:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    const/16 v0, 0x1b6c

    return v0

    :cond_b
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    const/16 v0, 0x1b6d

    return v0
.end method

.method public final c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getOpenDefaultBycIds()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x1b68

    return p1

    :cond_4
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public final c0()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getEnableDefaultBrowserSwitch()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e0()Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public final f0()Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-string v1, "s_ab_layer_id"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-string v1, "s_ab_exp_id"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-string v3, "var_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "s_ab_reason"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    sget-boolean v1, Lcom/cloud/hisavana/sdk/manager/a;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_9

    const-string v1, "s_ab_push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    sget-object v1, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_b

    :goto_5
    move-object v4, v1

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "s_ab_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_c
    return-object v0
.end method

.method public final g0()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public final h0()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public final i0()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->b:Ljava/lang/Long;

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->c:Ljava/lang/Long;

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/a;->d:Ljava/lang/Long;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->e:Ljava/lang/Integer;

    sput-boolean v0, Lcom/cloud/hisavana/sdk/manager/a;->g:Z

    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->f:Ljava/lang/Integer;

    sput-object v1, Lcom/cloud/hisavana/sdk/manager/a;->h:Ljava/lang/Integer;

    return-void
.end method

.method public final m(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "com.android.chrome"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    move-object p1, v0

    :cond_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v0, p1

    :cond_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final o(IZ)V
    .locals 3

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "cct_switch_state"

    invoke-virtual {v0, v2, v1}, Lj7/a;->g(Ljava/lang/String;I)I

    move-result v0

    if-nez p2, :cond_0

    if-nez v0, :cond_1

    const/16 p2, 0x1b61

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b64

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b66

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b5e

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b5f

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b5d

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b68

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b69

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b6f

    if-eq p1, p2, :cond_1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    :cond_0
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Lj7/a;->p(Ljava/lang/String;I)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "cct_switch_timestamp"

    invoke-virtual {p1, p2, v0, v1}, Lj7/a;->q(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public final r(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b()Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/a$f;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/manager/a$f;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", preloadEnable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPreloadEnable()Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", realLandUrl is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CustomTabsManager"

    invoke-virtual {v0, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_2

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/util/b;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCustomTabData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;->getEnableWarmUp()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p3, :cond_4

    return-void

    :cond_4
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b()Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/cloud/hisavana/sdk/manager/a$h;

    invoke-direct {v6, p1, p2, p3, v2}, Lcom/cloud/hisavana/sdk/manager/a$h;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
