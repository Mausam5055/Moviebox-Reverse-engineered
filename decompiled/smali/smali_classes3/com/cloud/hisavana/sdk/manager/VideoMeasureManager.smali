.class public final Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u0003J\r\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010!R\u0014\u0010$\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;",
        "",
        "<init>",
        "()V",
        "Lcom/cloud/hisavana/sdk/a5;",
        "measureImpl",
        "",
        "g",
        "(Lcom/cloud/hisavana/sdk/a5;)V",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adsDTO",
        "f",
        "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V",
        "startMeasure",
        "stopMeasure",
        "Landroid/view/View;",
        "view",
        "",
        "d",
        "(Landroid/view/View;)D",
        "Landroid/os/HandlerThread;",
        "a",
        "Landroid/os/HandlerThread;",
        "handlerThread",
        "Landroid/os/Handler;",
        "b",
        "Landroid/os/Handler;",
        "handler",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "c",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "measureList",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Runnable;",
        "immediateRunnable",
        "e",
        "delayRunnable",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

.field private static final a:Landroid/os/HandlerThread;

.field private static final b:Landroid/os/Handler;

.field private static final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final d:Ljava/lang/Runnable;

.field private static final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "h_video_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->a:Landroid/os/HandlerThread;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/c;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/c;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d:Ljava/lang/Runnable;

    new-instance v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager$a;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager$a;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/a5;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->j(Lcom/cloud/hisavana/sdk/a5;)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->k()V

    return-void
.end method

.method public static final synthetic e()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic h()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static final i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    if-eqz p0, :cond_1

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/a5;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/a5;->b()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    sget-object p0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current measure list size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoMeasureManager"

    invoke-virtual {p0, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_3

    sget-object p0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->stopMeasure()V

    :cond_3
    return-void
.end method

.method private static final j(Lcom/cloud/hisavana/sdk/a5;)V
    .locals 3

    const-string v0, "$measureImpl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    const/16 v1, 0x14

    if-le p0, v1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->startMeasure()V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------->measureList size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMeasureManager"

    invoke-virtual {p0, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final k()V
    .locals 2

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/a5;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/a5;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)D
    .locals 9

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v5, v2

    mul-double/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v7, p1

    mul-double/2addr v5, v7

    cmpg-double p1, v5, v0

    if-gtz p1, :cond_2

    return-wide v0

    :cond_2
    const/16 p1, 0x64

    int-to-double v0, p1

    mul-double/2addr v3, v0

    div-double/2addr v3, v5

    return-wide v3

    :cond_3
    :goto_0
    return-wide v0
.end method

.method public final f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "VideoMeasureManager"

    const-string v2, "-------------> remove video ad measure"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cloud/hisavana/sdk/manager/d;

    invoke-direct {v1, p1}, Lcom/cloud/hisavana/sdk/manager/d;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g(Lcom/cloud/hisavana/sdk/a5;)V
    .locals 3

    const-string v0, "measureImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "VideoMeasureManager"

    const-string v2, "-------------> add video ad measure"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/cloud/hisavana/sdk/manager/e;

    invoke-direct {v1, p1}, Lcom/cloud/hisavana/sdk/manager/e;-><init>(Lcom/cloud/hisavana/sdk/a5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startMeasure()V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current measure list size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VideoMeasureManager"

    invoke-virtual {v0, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final stopMeasure()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "VideoMeasureManager"

    const-string v2, "stop video ad measure"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->b:Landroid/os/Handler;

    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
