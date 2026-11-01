.class public final Lcom/transsion/shorttv/ui/widget/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/widget/c$a;,
        Lcom/transsion/shorttv/ui/widget/c$b;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/shorttv/ui/widget/c$a;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/transsion/shorttv/ui/widget/c$b;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv/ui/widget/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/widget/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv/ui/widget/c;->f:Lcom/transsion/shorttv/ui/widget/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/shorttv/ui/widget/c$b;)V
    .locals 1

    const-string v0, "bubbleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conditionProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/c;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/c;->b:Lcom/transsion/shorttv/ui/widget/c$b;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    new-instance p1, Lcom/transsion/shorttv/ui/widget/a;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/a;-><init>(Lcom/transsion/shorttv/ui/widget/c;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/c;->d:Ljava/lang/Runnable;

    new-instance p1, Lcom/transsion/shorttv/ui/widget/b;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/b;-><init>(Lcom/transsion/shorttv/ui/widget/c;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/c;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/shorttv/ui/widget/c;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/c;->g(Lcom/transsion/shorttv/ui/widget/c;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv/ui/widget/c;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/c;->k(Lcom/transsion/shorttv/ui/widget/c;)V

    return-void
.end method

.method private final e()J
    .locals 7

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableStorageBytes error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "DownloadGuideBubble"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method private static final g(Lcom/transsion/shorttv/ui/widget/c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/c;->f()V

    return-void
.end method

.method private final j()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->b:Lcom/transsion/shorttv/ui/widget/c$b;

    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/c$b;->d()V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "DownloadGuideBubble"

    const-string v3, "showBubble: UI restored, showing bubble"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->a:Landroid/view/View;

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final k(Lcom/transsion/shorttv/ui/widget/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/c;->l()V

    return-void
.end method

.method private final l()V
    .locals 8

    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadGuideBubble"

    const-string v2, "tryShowBubble: checking conditions..."

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->b:Lcom/transsion/shorttv/ui/widget/c$b;

    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/c$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadGuideBubble"

    const-string v2, "tryShowBubble: SKIP - not buffering"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v7, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v7}, Lcom/transsion/shorttv/utils/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadGuideBubble"

    const-string v2, "tryShowBubble: SKIP - fatigue control (shown within 3 days)"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/c;->e()J

    move-result-wide v0

    const-wide/32 v2, 0x1f400000

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const/16 v2, 0x400

    int-to-long v2, v2

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryShowBubble: SKIP - storage insufficient ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MB < 500MB)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadGuideBubble"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->b:Lcom/transsion/shorttv/ui/widget/c$b;

    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/c$b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->b:Lcom/transsion/shorttv/ui/widget/c$b;

    invoke-interface {v1}, Lcom/transsion/shorttv/ui/widget/c$b;->a()Lqs/d;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lqs/d;->g(Ljava/lang/String;)Lcom/transsion/shorttv/bean/DownloadItem;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryShowBubble: SKIP - video already in download list (resourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadGuideBubble"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_4
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadGuideBubble"

    const-string v2, "tryShowBubble: ALL conditions met, showing bubble!"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v7}, Lcom/transsion/shorttv/utils/h;->f()V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/c;->j()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "DownloadGuideBubble"

    const-string v4, "destroy: all callbacks cleared"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/c;->f()V

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "DownloadGuideBubble"

    const-string v4, "dismiss: timer cancelled + bubble hidden"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "DownloadGuideBubble"

    const-string v3, "hide: bubble hidden"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->a:Landroid/view/View;

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    return-void
.end method

.method public final h()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "DownloadGuideBubble"

    const-string v4, "onBufferingEnd: timer cancelled"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final i()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "DownloadGuideBubble"

    const-string v6, "onBufferingStart: timer started (5000ms)"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
