.class public final Lcom/transsion/player/shorttv/preload/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/shorttv/preload/g$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/player/shorttv/preload/g$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;

.field private c:I

.field private d:Ljava/lang/String;

.field private final e:Lcom/transsion/player/shorttv/preload/g$b;

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/player/shorttv/preload/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/player/shorttv/preload/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/player/shorttv/preload/g;->g:Lcom/transsion/player/shorttv/preload/g$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/g;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    new-instance v0, Lcom/transsion/player/shorttv/preload/g$b;

    invoke-direct {v0, p0}, Lcom/transsion/player/shorttv/preload/g$b;-><init>(Lcom/transsion/player/shorttv/preload/g;)V

    iput-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->e:Lcom/transsion/player/shorttv/preload/g$b;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lco/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->d(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/player/shorttv/preload/g;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/shorttv/preload/g;->n(Lcom/transsion/player/shorttv/preload/g;I)V

    return-void
.end method

.method public static synthetic b(Lao/e;Lcom/transsion/player/shorttv/preload/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/shorttv/preload/g;->k(Lao/e;Lcom/transsion/player/shorttv/preload/g;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/player/shorttv/preload/g;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/player/shorttv/preload/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/shorttv/preload/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/player/shorttv/preload/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/g;->d:Ljava/lang/String;

    return-void
.end method

.method private final i(I)V
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lao/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkToPause   position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  shortTVItem:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoPreloadHelper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-virtual {v0}, Lao/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/player/shorttv/preload/q;->D(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final j(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lao/e;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    new-instance v1, Lcom/transsion/player/shorttv/preload/f;

    invoke-direct {v1, p1, p0}, Lcom/transsion/player/shorttv/preload/f;-><init>(Lao/e;Lcom/transsion/player/shorttv/preload/g;)V

    invoke-virtual {v0, v1}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static final k(Lao/e;Lcom/transsion/player/shorttv/preload/g;)V
    .locals 1

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-virtual {v0, p0}, Lcom/transsion/player/shorttv/preload/q;->w(Lao/e;)Lcom/transsion/player/shorttv/preload/a;

    move-result-object v0

    iget-object p1, p1, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lao/e;->g()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final l(ILao/e;)Lcom/transsion/player/shorttv/preload/a;
    .locals 5

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lao/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/player/shorttv/preload/a;

    const-string v1, "  shortTVItem:"

    const-string v2, "VideoPreloadHelper"

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDownloadRequest [from map] position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lao/e;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-virtual {v3, p2}, Lcom/transsion/player/shorttv/preload/q;->n(Lao/e;)Lcom/transsion/player/shorttv/preload/a;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDownloadRequest [from new] position:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static final n(Lcom/transsion/player/shorttv/preload/g;I)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadNext\uff0c position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoPreloadHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, p1, 0x6

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lao/e;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/transsion/player/shorttv/preload/g;->l(ILao/e;)Lcom/transsion/player/shorttv/preload/a;

    move-result-object v0

    const-wide/32 v3, 0x4b000

    invoke-virtual {v0, v3, v4}, Lcom/transsion/player/shorttv/preload/a;->i(J)V

    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->d()J

    move-result-wide v5

    cmp-long v3, v3, v5

    const-string v4, "\u975e\u5f53\u524d\u9009\u4e2d  \u4e0b\u8f7d\u5927\u5c0f downloadLength:"

    if-gez v3, :cond_1

    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    move-result-wide v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  index:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/g;->d:Ljava/lang/String;

    sget-object p0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-virtual {p0, v0}, Lcom/transsion/player/shorttv/preload/q;->s(Lcom/transsion/player/shorttv/preload/a;)Lcom/transsion/player/shorttv/preload/a;

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->a()J

    invoke-virtual {v0}, Lcom/transsion/player/shorttv/preload/a;->b()J

    move-result-wide v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " \u5927\u4e8e\u6700\u5c0f\u4e0b\u8f7d\uff0c\u8df3\u8fc7 index:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "\u4e0d\u7528\u5168\u91cf\u4e0b\u8f7d"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final f(ILao/e;)V
    .locals 1

    const-string v0, "mediaSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/g;->m()V

    return-void
.end method

.method public final g(Lao/e;)V
    .locals 1

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/g;->m()V

    return-void
.end method

.method public final h(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSelect  position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPreloadHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->d:Ljava/lang/String;

    iput p1, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    invoke-direct {p0, p1}, Lcom/transsion/player/shorttv/preload/g;->i(I)V

    iget p1, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/player/shorttv/preload/g;->j(I)V

    return-void
.end method

.method public final m()V
    .locals 3

    iget v0, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/g;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    new-instance v2, Lcom/transsion/player/shorttv/preload/e;

    invoke-direct {v2, p0, v0}, Lcom/transsion/player/shorttv/preload/e;-><init>(Lcom/transsion/player/shorttv/preload/g;I)V

    invoke-virtual {v1, v2}, Lcom/transsion/player/shorttv/preload/q;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o()V
    .locals 1

    iget v0, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    invoke-direct {p0, v0}, Lcom/transsion/player/shorttv/preload/g;->i(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/player/shorttv/preload/g;->c:I

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/a;->h(Landroid/content/Context;)Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/g;->e:Lcom/transsion/player/shorttv/preload/g$b;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadManager;->w(Landroidx/media3/exoplayer/offline/DownloadManager$d;)V

    invoke-virtual {p0}, Lcom/transsion/player/shorttv/preload/g;->o()V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/player/shorttv/preload/q;->a:Lcom/transsion/player/shorttv/preload/q;

    invoke-virtual {v0, p1}, Lcom/transsion/player/shorttv/preload/q;->x(Ljava/lang/String;)V

    return-void
.end method
