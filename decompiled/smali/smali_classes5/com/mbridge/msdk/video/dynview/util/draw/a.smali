.class public Lcom/mbridge/msdk/video/dynview/util/draw/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/mbridge/msdk/video/dynview/util/draw/a;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/dynview/util/draw/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->a:Landroid/view/View;

    return-object p0
.end method

.method public static a()Lcom/mbridge/msdk/video/dynview/util/draw/a;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->d:Lcom/mbridge/msdk/video/dynview/util/draw/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/video/dynview/util/draw/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/video/dynview/util/draw/a;->d:Lcom/mbridge/msdk/video/dynview/util/draw/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/video/dynview/util/draw/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/util/draw/a;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/video/dynview/util/draw/a;->d:Lcom/mbridge/msdk/video/dynview/util/draw/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/mbridge/msdk/video/dynview/util/draw/a;->d:Lcom/mbridge/msdk/video/dynview/util/draw/a;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    sget-object v0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->d:Lcom/mbridge/msdk/video/dynview/util/draw/a;

    return-object v0
.end method

.method private declared-synchronized a(IFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance p5, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;-><init>(Lcom/mbridge/msdk/video/dynview/util/draw/a;Landroid/graphics/Bitmap;IFF)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChoiceOneDrawBitBg"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Ljava/util/Map;Lcom/mbridge/msdk/video/dynview/c;Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/mbridge/msdk/video/dynview/c;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iput-object p3, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->a:Landroid/view/View;

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->h()I

    move-result v3

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->m()F

    move-result v4

    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->k()F

    move-result v5

    :try_start_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/dynview/c;->b()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p3}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    move-object p3, v1

    :goto_0
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_4

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    move-object v6, p2

    goto :goto_1

    :cond_4
    move-object v6, v0

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    move-object v7, p1

    goto :goto_2

    :cond_5
    move-object v7, v0

    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/video/dynview/util/draw/a;->a(IFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChoiceOneDrawBitBg"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->a:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->b:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a;->c:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method
