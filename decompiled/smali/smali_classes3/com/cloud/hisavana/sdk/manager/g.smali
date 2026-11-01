.class public final Lcom/cloud/hisavana/sdk/manager/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/manager/g$a;,
        Lcom/cloud/hisavana/sdk/manager/g$b;,
        Lcom/cloud/hisavana/sdk/manager/g$c;
    }
.end annotation


# static fields
.field public static final d:Lcom/cloud/hisavana/sdk/manager/g$a;

.field private static final e:Lcom/cloud/hisavana/sdk/manager/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/manager/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/g;->d:Lcom/cloud/hisavana/sdk/manager/g$a;

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/g;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/g;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/g;->e:Lcom/cloud/hisavana/sdk/manager/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RetryTrackingManager"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/manager/g;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/g;->k(Lcom/cloud/hisavana/sdk/manager/g;)V

    return-void
.end method

.method public static final synthetic b(Lcom/cloud/hisavana/sdk/manager/g;)J
    .locals 2

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/g;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic c()Lcom/cloud/hisavana/sdk/manager/g;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/g;->e:Lcom/cloud/hisavana/sdk/manager/g;

    return-object v0
.end method

.method public static final synthetic e(Lcom/cloud/hisavana/sdk/manager/g;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g;->l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    return-void
.end method

.method private final f()J
    .locals 4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x7d0

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static final synthetic g(Lcom/cloud/hisavana/sdk/manager/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static final k(Lcom/cloud/hisavana/sdk/manager/g;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/R0;->e:Lcom/cloud/hisavana/sdk/R0$a;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/R0$a;->a()Lcom/cloud/hisavana/sdk/R0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/R0;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->setNext(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/manager/g;->l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    return-void

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private final l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tracking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getRetryTimes()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/g;->c:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g;->j(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getNext()Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g;->l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->a:Ljava/lang/String;

    const-string v1, "tracking,net is not ok"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/manager/g$d;

    invoke-direct {v0, p1, p0}, Lcom/cloud/hisavana/sdk/manager/g$d;-><init>(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g;)V

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/c1;->g(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g$b;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getRetryTimes()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getRetryTimes()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/manager/g;->c:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/manager/g;->j(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/R0;->e:Lcom/cloud/hisavana/sdk/R0$a;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/R0$a;->a()Lcom/cloud/hisavana/sdk/R0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/R0;->l(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrackingBean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/R0;->e:Lcom/cloud/hisavana/sdk/R0$a;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/R0$a;->a()Lcom/cloud/hisavana/sdk/R0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/R0;->k()V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/R0$a;->a()Lcom/cloud/hisavana/sdk/R0;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getUuid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, ""

    :cond_1
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/R0;->h(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/R0$a;->a()Lcom/cloud/hisavana/sdk/R0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/R0;->j(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    :cond_2
    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/manager/g;->a:Ljava/lang/String;

    const-string v2, "startRetryTracking,is retrying"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/manager/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/manager/f;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/manager/f;-><init>(Lcom/cloud/hisavana/sdk/manager/g;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/R0;->e:Lcom/cloud/hisavana/sdk/R0$a;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/R0$a;->a()Lcom/cloud/hisavana/sdk/R0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/R0;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
