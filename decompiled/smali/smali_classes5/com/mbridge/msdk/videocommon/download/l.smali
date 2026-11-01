.class public Lcom/mbridge/msdk/videocommon/download/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/mbridge/msdk/videocommon/listener/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/videocommon/listener/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/mbridge/msdk/videocommon/download/c;

.field private g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Lcom/mbridge/msdk/videocommon/setting/c;

.field private l:I

.field private m:I

.field n:Lcom/mbridge/msdk/setting/l;

.field o:Lcom/mbridge/msdk/setting/l;

.field private p:Lcom/mbridge/msdk/videocommon/download/k;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->d:Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/l$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/videocommon/download/l$a;-><init>(Lcom/mbridge/msdk/videocommon/download/l;)V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->f:Lcom/mbridge/msdk/videocommon/download/c;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->i:J

    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I

    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/j;->a()Lcom/mbridge/msdk/videocommon/download/j;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/mbridge/msdk/videocommon/download/j;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iput-object p3, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    iput p4, p0, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/k;

    invoke-direct {v0, p2, p3, p4}, Lcom/mbridge/msdk/videocommon/download/k;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->h:Landroid/content/Context;

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p3, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    iput p4, p0, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->d:Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/l$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/videocommon/download/l$a;-><init>(Lcom/mbridge/msdk/videocommon/download/l;)V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->f:Lcom/mbridge/msdk/videocommon/download/c;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->i:J

    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I

    iput p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/j;->a()Lcom/mbridge/msdk/videocommon/download/j;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/mbridge/msdk/videocommon/download/j;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iput-object p3, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    iput p4, p0, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/k;

    invoke-direct {v0, p2, p3, p4}, Lcom/mbridge/msdk/videocommon/download/k;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->h:Landroid/content/Context;

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iput-object p3, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    iput p4, p0, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->C()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnitCacheCtroller"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x64

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/l;)Lcom/mbridge/msdk/videocommon/listener/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/videocommon/download/l;->c:Lcom/mbridge/msdk/videocommon/listener/a;

    return-object p0
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/download/a;->o()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/download/a;->t()V

    iget-object v4, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    const-string v0, "UnitCacheCtroller"

    const-string v1, "cleanDisplayTask ERROR"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->d:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/l;->a()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/l;->b()V

    iget v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    const/16 v2, 0x5e

    const/16 v3, 0x11f

    const/4 v4, 0x1

    if-eq v1, v4, :cond_a

    if-eq v1, v3, :cond_6

    const/16 v4, 0x12a

    if-eq v1, v4, :cond_4

    if-eq v1, v2, :cond_6

    const/16 v4, 0x5f

    if-eq v1, v4, :cond_2

    goto/16 :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/mbridge/msdk/setting/l;->j(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->p()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mbridge/msdk/videocommon/download/l;->i:J

    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->q()I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string p1, "UnitCacheCtroller"

    const-string v0, "make sure your had put feeds jar into your project"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/mbridge/msdk/setting/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/mbridge/msdk/setting/h;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    :cond_5
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->p()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mbridge/msdk/videocommon/download/l;->i:J

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->q()I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/b;->c()Lcom/mbridge/msdk/videocommon/setting/a;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/setting/b;->a()Lcom/mbridge/msdk/videocommon/setting/a;

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/a;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mbridge/msdk/videocommon/download/l;->i:J

    :cond_8
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/mbridge/msdk/videocommon/setting/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->k:Lcom/mbridge/msdk/videocommon/setting/c;

    :cond_9
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->k:Lcom/mbridge/msdk/videocommon/setting/c;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->l()I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p1, "UnitCacheCtroller"

    const-string v0, "make sure your had put reward jar into your project"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    :try_start_2
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/mbridge/msdk/setting/l;->i(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    :cond_b
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->p()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mbridge/msdk/videocommon/download/l;->i:J

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->q()I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_c
    :goto_0
    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_15

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v4, :cond_14

    iget v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    if-eq v5, v2, :cond_e

    if-ne v5, v3, :cond_d

    goto :goto_2

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_e
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-direct {p0, v4}, Lcom/mbridge/msdk/videocommon/download/l;->d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto/16 :goto_9

    :cond_f
    iget-object v6, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v6, :cond_14

    monitor-enter v6

    move v7, v0

    :goto_4
    :try_start_3
    iget-object v8, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_12

    iget-object v8, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_11

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v9, :cond_10

    invoke-virtual {v9, v4}, Lcom/mbridge/msdk/videocommon/download/a;->e(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget v10, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I

    invoke-virtual {v9, v10}, Lcom/mbridge/msdk/videocommon/download/a;->c(I)V

    invoke-virtual {v9, v0}, Lcom/mbridge/msdk/videocommon/download/a;->b(Z)V

    invoke-interface {v8, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception v4

    goto :goto_6

    :cond_10
    :goto_5
    invoke-direct {p0, v4}, Lcom/mbridge/msdk/videocommon/download/l;->e(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_7

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_12
    new-instance v7, Lcom/mbridge/msdk/videocommon/download/a;

    iget-object v8, p0, Lcom/mbridge/msdk/videocommon/download/l;->h:Landroid/content/Context;

    iget-object v9, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    iget v10, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I

    invoke-direct {v7, v8, v4, v9, v10}, Lcom/mbridge/msdk/videocommon/download/a;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V

    iget v4, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I

    invoke-virtual {v7, v4}, Lcom/mbridge/msdk/videocommon/download/a;->c(I)V

    iget v4, p0, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    invoke-virtual {v7, v4}, Lcom/mbridge/msdk/videocommon/download/a;->a(I)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :goto_6
    :try_start_4
    sget-boolean v5, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v5, :cond_13

    const-string v5, "UnitCacheCtroller"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_8

    :cond_13
    :goto_7
    monitor-exit v6

    goto :goto_9

    :goto_8
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_14
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_15
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_16

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_16
    return-void

    :catch_2
    const-string p1, "UnitCacheCtroller"

    const-string v0, "make sure your had put native video jar into your project"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_a
    return-void
.end method

.method private a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "UnitCacheCtroller"

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Is not check template download status"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "check template \u4e0b\u8f7d\u60c5\u51b5\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public static a(Lcom/mbridge/msdk/videocommon/download/a;I)Z
    .locals 8

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->h()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->e()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const-string p0, "UnitCacheCtroller"

    const-string p1, "checkVideoDownload video done return true"

    invoke-static {p0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_0
    const/4 v4, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v5

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    const-wide/16 v6, 0x64

    mul-long/2addr v0, v6

    int-to-long v6, p1

    mul-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->b()V

    return v4

    :cond_3
    return v5

    :cond_4
    return v4
.end method

.method public static a(Lcom/mbridge/msdk/videocommon/download/a;IZ)Z
    .locals 9

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->h()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->e()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "UnitCacheCtroller"

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    const-string p0, "checkVideoDownload video done return true"

    invoke-static {v5, p0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string p0, "Is not check video download status"

    invoke-static {v5, p0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_1
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getIsTimeoutCheckVideoStatus()I

    move-result v5

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCheckType()I

    move-result v5

    if-ne v5, v6, :cond_2

    return v6

    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCheckType()I

    move-result p2

    if-ne p2, v6, :cond_5

    if-nez p1, :cond_3

    return v6

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long p2, v2, v7

    if-nez p2, :cond_4

    cmp-long p2, v0, v7

    if-eqz p2, :cond_5

    :cond_4
    div-int/lit8 p2, p1, 0x64

    int-to-long v7, p2

    mul-long/2addr v7, v2

    cmp-long p2, v0, v7

    if-ltz p2, :cond_5

    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setIsTimeoutCheckVideoStatus(I)V

    return v6

    :cond_5
    invoke-static {p0, p1}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/videocommon/download/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->b:Z

    return p1
.end method

.method private a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 4

    const-string v0, "UnitCacheCtroller"

    :try_start_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is not check endCard download status : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/t0;->l(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/videocommon/download/l;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    return v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/concurrent/CopyOnWriteArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    return v2

    :catchall_0
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/l;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/mbridge/msdk/videocommon/download/l;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/videocommon/download/l;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/videocommon/download/l;->d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Is not check endCard download status : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnitCacheCtroller"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;->getHtmlContentFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method private c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v1, 0x12a

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->C()I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->k:Lcom/mbridge/msdk/videocommon/setting/c;

    if-nez p1, :cond_3

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->k:Lcom/mbridge/msdk/videocommon/setting/c;

    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->k:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/setting/c;->w()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitCacheCtroller"

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x64

    return p1
.end method

.method private d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 5

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    const-string v1, "cache"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ready_rate"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x64

    const-string v3, "1"

    const-string v4, "resumed_breakpoint"

    if-ne v1, v2, :cond_0

    :try_start_1
    const-string v1, "2"

    invoke-virtual {v0, v4, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "resource_type"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "scenes"

    invoke-virtual {v0, v1, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    const-string v2, "m_download_start"

    invoke-virtual {v1, v2, p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public a(IZ)Lcom/mbridge/msdk/videocommon/download/a;
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/k;->d()Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/videocommon/download/l;->b(IZ)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UnitCacheCtroller"

    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;
    .locals 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/videocommon/download/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    const-string p1, "UnitCacheCtroller"

    const-string v1, "failed to get campaignTast by cid"

    invoke-static {p1, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;IZLjava/util/List;ZLcom/mbridge/msdk/foundation/same/report/metrics/e;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;Z",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p5

    move-object/from16 v3, p6

    iget-boolean v4, v1, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v4, :cond_0

    move-object/from16 v5, p4

    invoke-virtual {v4, v5, v2}, Lcom/mbridge/msdk/videocommon/download/k;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v5, p4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v6, ""

    iget-object v7, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v7, :cond_27

    monitor-enter v7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v11, 0x0

    :goto_0
    iget-object v12, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_26

    iget-object v12, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_25

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v15

    if-nez v15, :cond_2

    :cond_1
    move-object v3, v4

    move-object/from16 v16, v6

    move-wide/from16 v21, v8

    move-object/from16 v18, v13

    goto/16 :goto_16

    :cond_2
    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v15

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v18, :cond_5

    :try_start_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v15, :cond_4

    if-eqz v18, :cond_4

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNLRid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setNLRid(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_19

    :catch_0
    move-exception v0

    move-object v3, v4

    goto/16 :goto_17

    :cond_3
    :goto_3
    move-object/from16 v5, p4

    const/16 v17, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v5, p4

    goto :goto_2

    :cond_5
    if-nez v17, :cond_6

    const-string v5, "campaign is not available"

    move-object v3, v4

    move-object v6, v5

    move-wide/from16 v21, v8

    move-object/from16 v18, v13

    goto/16 :goto_14

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    if-nez p3, :cond_9

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_9

    :cond_8
    move-object/from16 v5, p4

    goto/16 :goto_1

    :cond_9
    :try_start_3
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v10

    const-string v16, ""

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v17, :cond_a

    :try_start_4
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    move-object/from16 v17, v16

    move-object/from16 v16, v6

    :try_start_5
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v6

    move-object/from16 v18, v13

    const/16 v13, 0x11f

    const/16 v3, 0x5e

    if-eq v0, v3, :cond_b

    if-ne v0, v13, :cond_12

    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    const-string v13, "cmpt=1"

    move-object/from16 v3, v17

    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-direct {v1, v0, v15, v3}, Lcom/mbridge/msdk/videocommon/download/l;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "template is null or download is not ready"

    :goto_4
    move-object v6, v3

    move-object v3, v4

    :goto_5
    move-wide/from16 v21, v8

    goto/16 :goto_14

    :catch_1
    move-exception v0

    move-object v3, v4

    :goto_6
    move-object/from16 v6, v16

    goto/16 :goto_17

    :cond_c
    invoke-direct {v1, v5, v15}, Lcom/mbridge/msdk/videocommon/download/l;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->o()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->t()V

    const-string v3, "task is displayed"

    goto :goto_4

    :cond_d
    invoke-static {v10}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct {v1, v6}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    const-string v3, "image list is downloading or fail"

    goto :goto_9

    :cond_f
    invoke-direct {v1, v15}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v3

    invoke-static {v14, v3, v2}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;IZ)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-direct {v1, v6}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    move-object v3, v4

    move-wide/from16 v21, v8

    :goto_8
    move-object/from16 v6, v16

    goto/16 :goto_14

    :cond_10
    const-string v3, "video and image list is downloading or fail"

    goto :goto_9

    :cond_11
    const-string v3, "endcard is downloading or fail"

    :goto_9
    move-object/from16 v16, v3

    :cond_12
    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v10

    const/4 v13, 0x5

    if-ne v10, v13, :cond_17

    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->o()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->t()V

    iget-object v3, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    const-string v3, "task is displayed"

    goto :goto_4

    :cond_13
    if-nez v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v3}, Lcom/mbridge/msdk/videocommon/download/a;->a(II)V

    const/16 v5, 0x5f

    if-ne v0, v5, :cond_14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_14
    const-string v5, "resource path is not effective"

    move-object v3, v4

    move-object v6, v5

    goto/16 :goto_5

    :cond_15
    const/4 v3, 0x0

    invoke-direct {v1, v5, v15}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-direct {v1, v6}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :cond_16
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v0, 0x0

    return-object v0

    :cond_17
    const/4 v3, 0x0

    :try_start_7
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v13

    const-string v3, "u_n_c_e_d"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v17, v4

    const/4 v4, 0x1

    :try_start_8
    invoke-virtual {v13, v3, v4}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v3, :cond_1e

    :try_start_9
    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->i()J

    move-result-wide v21

    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v3

    if-ne v3, v4, :cond_1a

    sub-long v3, v8, v21

    move-wide/from16 v21, v8

    iget-wide v8, v1, Lcom/mbridge/msdk/videocommon/download/l;->i:J

    const-wide/16 v23, 0x3e8

    mul-long v8, v8, v23

    cmp-long v3, v3, v8

    if-lez v3, :cond_1b

    const-string v3, "download timeout"

    invoke-virtual {v14, v3}, Lcom/mbridge/msdk/videocommon/download/a;->c(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->b()V

    iget-object v3, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    const-string v3, "video download time over dlct"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_19

    const/16 v4, 0x5e

    if-ne v0, v4, :cond_18

    goto :goto_a

    :cond_18
    move-object/from16 v16, v3

    goto :goto_c

    :cond_19
    :goto_a
    move-object/from16 v5, p4

    move-object v6, v3

    move-object/from16 v4, v17

    :goto_b
    move-object/from16 v13, v18

    move-wide/from16 v8, v21

    move-object/from16 v3, p6

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v6, v16

    move-object/from16 v3, v17

    goto/16 :goto_17

    :cond_1a
    move-wide/from16 v21, v8

    :cond_1b
    :goto_c
    const/4 v3, 0x4

    if-eq v10, v3, :cond_1d

    const/4 v3, 0x2

    if-ne v10, v3, :cond_1c

    goto :goto_d

    :cond_1c
    const/4 v3, 0x1

    goto :goto_f

    :cond_1d
    :goto_d
    iget-object v3, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->b()V

    add-int/lit8 v11, v11, -0x1

    const-string v3, "video download stop or pause"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_e
    move-object v6, v3

    move-object/from16 v3, v17

    goto/16 :goto_14

    :cond_1e
    move-wide/from16 v21, v8

    move v3, v4

    :goto_f
    if-ne v10, v3, :cond_21

    :try_start_a
    invoke-virtual {v14}, Lcom/mbridge/msdk/videocommon/download/a;->o()Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_1f

    :try_start_b
    const-string v3, "video was displayed"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_e

    :cond_1f
    :try_start_c
    sget-boolean v3, Lcom/mbridge/msdk/MBridgeConstans;->IS_DOWANLOAD_FINSH_PLAY:Z

    if-nez v3, :cond_21

    invoke-direct {v1, v15}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v3

    invoke-static {v14, v3, v2}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;IZ)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-direct {v1, v5, v15}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-direct {v1, v6}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v3, :cond_20

    move-object/from16 v3, v17

    :try_start_d
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :cond_20
    move-object/from16 v3, v17

    goto :goto_10

    :catch_4
    move-exception v0

    move-object/from16 v3, v17

    goto/16 :goto_6

    :goto_10
    const-string v4, "video or endcard or image list is downloading or fail"

    move-object/from16 v16, v4

    :goto_11
    const/16 v4, 0x5e

    goto :goto_12

    :cond_21
    move-object/from16 v3, v17

    goto :goto_11

    :goto_12
    if-eq v0, v4, :cond_23

    const/16 v4, 0x11f

    if-ne v0, v4, :cond_22

    goto :goto_13

    :cond_22
    move-object/from16 v5, p4

    move-object v4, v3

    move-object/from16 v6, v16

    goto :goto_b

    :cond_23
    :goto_13
    invoke-direct {v1, v15}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v4

    invoke-static {v14, v4, v2}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;IZ)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-direct {v1, v5, v15}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-direct {v1, v6}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :goto_14
    move-object/from16 v5, p4

    move-object v4, v3

    goto/16 :goto_b

    :cond_24
    const-string v4, "video or endcard or image list is downloading or fail"

    :goto_15
    move-object v6, v4

    goto :goto_14

    :catch_5
    move-exception v0

    move-object v3, v4

    move-object/from16 v16, v6

    goto :goto_17

    :goto_16
    const-string v4, "task or task\'s campaign is NULL"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_15

    :cond_25
    move-object v3, v4

    move-object/from16 v16, v6

    move-wide/from16 v21, v8

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p4

    move-object/from16 v3, p6

    goto/16 :goto_0

    :cond_26
    move-object v3, v4

    goto :goto_18

    :goto_17
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_18
    monitor-exit v7

    goto :goto_1a

    :goto_19
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v0

    :cond_27
    move-object v3, v4

    :goto_1a
    :try_start_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_28

    move-object/from16 v2, p6

    if-eqz v2, :cond_28

    const-string v0, "is_ready_fail_reason"

    invoke-virtual {v2, v0, v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_1b

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UnitCacheCtroller"

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_1b
    return-object v3
.end method

.method public a(Lcom/mbridge/msdk/videocommon/listener/a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/k;->a(Lcom/mbridge/msdk/videocommon/listener/a;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->c:Lcom/mbridge/msdk/videocommon/listener/a;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/videocommon/listener/a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;Lcom/mbridge/msdk/videocommon/listener/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->e:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v2, :cond_1

    return v0

    :cond_1
    new-instance v3, Lcom/mbridge/msdk/videocommon/download/a;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I

    invoke-direct {v3, v4, v2, p2, v5}, Lcom/mbridge/msdk/videocommon/download/a;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public b(IZ)Lcom/mbridge/msdk/videocommon/download/a;
    .locals 26

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    iget-boolean v3, v1, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/download/k;->i()Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    monitor-enter v3

    :try_start_0
    iget v5, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    const/16 v6, 0x11f

    const/16 v7, 0x5e

    const/4 v8, 0x1

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/videocommon/cache/a;->a()Lcom/mbridge/msdk/videocommon/cache/a;

    move-result-object v5

    iget-object v9, v1, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Lcom/mbridge/msdk/videocommon/cache/a;->c(Ljava/lang/String;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_6

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_2
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/videocommon/cache/a;->a()Lcom/mbridge/msdk/videocommon/cache/a;

    move-result-object v5

    iget-object v9, v1, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {v5, v9, v8, v2}, Lcom/mbridge/msdk/videocommon/cache/a;->b(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    if-eq v0, v7, :cond_4

    if-ne v0, v6, :cond_5

    :cond_4
    invoke-static {}, Lcom/mbridge/msdk/videocommon/cache/a;->a()Lcom/mbridge/msdk/videocommon/cache/a;

    move-result-object v5

    iget-object v9, v1, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {v5, v9, v8, v2}, Lcom/mbridge/msdk/videocommon/cache/a;->c(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v5

    :cond_5
    if-eqz v5, :cond_27

    const-string v9, "UnitCacheCtroller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UnitCache isReady campaignList = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v12, 0x0

    :goto_1
    iget-object v13, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_28

    iget-object v13, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v16

    if-nez v16, :cond_8

    :cond_7
    move v0, v8

    move-wide/from16 v22, v9

    :goto_3
    move v9, v6

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x0

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v8}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    const/16 v18, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    if-nez v18, :cond_c

    :cond_b
    :goto_5
    move-wide/from16 v22, v9

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_d
    if-nez v2, :cond_e

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v11

    const-string v17, ""

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v18

    if-eqz v18, :cond_f

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    move-result-object v17

    :cond_f
    move-object/from16 v18, v17

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v6

    iget v2, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    if-eq v2, v7, :cond_10

    const/16 v2, 0x11f

    if-ne v0, v2, :cond_15

    :cond_10
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "cmpt=1"

    move-object/from16 v7, v18

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget v2, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    invoke-direct {v1, v2, v8, v7}, Lcom/mbridge/msdk/videocommon/download/l;->a(ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    :goto_6
    move-wide/from16 v22, v9

    const/4 v0, 0x1

    goto/16 :goto_b

    :cond_12
    invoke-direct {v1, v4, v8}, Lcom/mbridge/msdk/videocommon/download/l;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->o()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->t()V

    goto :goto_6

    :cond_13
    invoke-static {v11}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {v1, v6}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_15

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v15

    :cond_14
    :try_start_4
    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v2

    invoke-static {v15, v2}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-direct {v1, v6}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_15

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v15

    :cond_15
    :try_start_6
    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v7

    iget v11, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    const/16 v0, 0x12a

    if-ne v11, v0, :cond_16

    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    invoke-static {v15, v0}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_16

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-object v15

    :cond_16
    const/4 v0, 0x5

    const/16 v11, 0x5f

    if-ne v7, v0, :cond_1a

    :try_start_8
    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->o()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->t()V

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-wide/from16 v22, v9

    goto/16 :goto_9

    :cond_17
    if-nez v2, :cond_18

    const/4 v0, 0x0

    invoke-virtual {v15, v0, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(II)V

    iget v2, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ne v2, v11, :cond_11

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-object v15

    :cond_18
    :try_start_a
    invoke-direct {v1, v4, v8}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {v1, v6}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_19

    :try_start_b
    monitor-exit v3

    return-object v15

    :cond_19
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v2, 0x0

    return-object v2

    :cond_1a
    const/4 v0, 0x0

    :try_start_c
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v2

    const-string v0, "u_n_c_e_d"

    const/4 v11, 0x1

    invoke-virtual {v2, v0, v11}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->i()J

    move-result-wide v20

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v0

    if-ne v0, v11, :cond_1c

    sub-long v20, v9, v20

    move-wide/from16 v22, v9

    iget-wide v9, v1, Lcom/mbridge/msdk/videocommon/download/l;->i:J

    const-wide/16 v24, 0x3e8

    mul-long v9, v9, v24

    cmp-long v0, v20, v9

    if-lez v0, :cond_1d

    const-string v0, "download timeout"

    invoke-virtual {v15, v0}, Lcom/mbridge/msdk/videocommon/download/a;->c(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->b()V

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    const/16 v2, 0x5e

    if-ne v0, v2, :cond_1d

    :cond_1b
    :goto_7
    move/from16 v0, p1

    move/from16 v2, p2

    move-wide/from16 v9, v22

    const/4 v4, 0x0

    const/16 v6, 0x11f

    const/16 v7, 0x5e

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_1c
    move-wide/from16 v22, v9

    :cond_1d
    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    const/16 v2, 0x5f

    if-ne v0, v2, :cond_1f

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->t()V

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_9

    :cond_1e
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    return-object v15

    :cond_1f
    :try_start_e
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v0

    const-string v2, "u_n_c_e_d"

    const/4 v9, 0x1

    invoke-virtual {v0, v2, v9}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x4

    if-eq v7, v0, :cond_21

    const/4 v0, 0x2

    if-ne v7, v0, :cond_20

    goto :goto_8

    :cond_20
    const/4 v0, 0x1

    goto :goto_a

    :cond_21
    :goto_8
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->b()V

    :goto_9
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    :goto_a
    if-ne v7, v0, :cond_23

    invoke-virtual {v15}, Lcom/mbridge/msdk/videocommon/download/a;->o()Z

    move-result v2

    if-eqz v2, :cond_22

    :goto_b
    const/16 v7, 0x5e

    const/16 v9, 0x11f

    goto :goto_c

    :cond_22
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->IS_DOWANLOAD_FINSH_PLAY:Z

    if-nez v2, :cond_23

    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v2

    invoke-static {v15, v2}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-direct {v1, v4, v8}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-direct {v1, v6}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z

    move-result v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v2, :cond_23

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    return-object v15

    :cond_23
    :try_start_10
    iget v2, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    const/16 v7, 0x5e

    const/16 v9, 0x11f

    if-eq v2, v7, :cond_24

    if-ne v2, v9, :cond_25

    :cond_24
    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v2

    invoke-static {v15, v2}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {v1, v4, v8}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {v1, v6}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;)Z

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v2, :cond_25

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    return-object v15

    :cond_25
    :goto_c
    move/from16 v2, p2

    move v8, v0

    move v6, v9

    move-wide/from16 v9, v22

    const/4 v4, 0x0

    move/from16 v0, p1

    goto/16 :goto_2

    :cond_26
    move v0, v8

    move-wide/from16 v22, v9

    move v9, v6

    add-int/lit8 v12, v12, 0x1

    move/from16 v2, p2

    move-wide/from16 v9, v22

    const/4 v4, 0x0

    move/from16 v0, p1

    goto/16 :goto_1

    :cond_27
    :try_start_12
    const-string v0, "UnitCacheCtroller"

    const-string v2, "UnitCache isReady campaignList = 0"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    monitor-exit v3

    const/4 v2, 0x0

    return-object v2

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_28
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_f

    :goto_e
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    throw v0

    :cond_29
    move-object v2, v4

    :goto_f
    return-object v2
.end method

.method public b()V
    .locals 14

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/k;->a()V

    return-void

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v0

    const-string v1, "u_n_c_e_d"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    iget-object v5, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mbridge/msdk/videocommon/download/a;

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->i()J

    move-result-wide v8

    sub-long v8, v3, v8

    iget-wide v10, p0, Lcom/mbridge/msdk/videocommon/download/l;->i:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v8

    if-ne v8, v2, :cond_5

    const-string v8, "download timeout"

    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/videocommon/download/a;->c(Ljava/lang/String;)V

    iget v8, p0, Lcom/mbridge/msdk/videocommon/download/l;->l:I

    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/videocommon/download/a;->c(I)V

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->b()V

    iget-object v8, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v8

    if-eq v8, v2, :cond_3

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_3

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/download/a;->b()V

    iget-object v7, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/k;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnitCacheCtroller"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/k;->a(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/util/List;)V

    return-void
.end method

.method public c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/k;->e()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public d()V
    .locals 16

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/k;->j()V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/videocommon/download/l;->b()V

    iget-object v2, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_22

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iput-boolean v3, v1, Lcom/mbridge/msdk/videocommon/download/l;->b:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/mbridge/msdk/videocommon/download/a;

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/download/a;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    const/16 v7, 0x5f

    if-ne v0, v7, :cond_7

    iput-boolean v3, v1, Lcom/mbridge/msdk/videocommon/download/l;->b:Z

    :cond_7
    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v0

    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v8

    if-eqz v8, :cond_8

    if-nez v0, :cond_8

    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v0

    invoke-virtual {v8}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/mbridge/msdk/videocommon/download/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_8
    move v9, v0

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/l$b;

    invoke-direct {v0, v1, v8}, Lcom/mbridge/msdk/videocommon/download/l$b;-><init>(Lcom/mbridge/msdk/videocommon/download/l;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v6, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/listener/a;)V

    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    iget v10, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    if-ne v10, v3, :cond_a

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/mbridge/msdk/setting/l;->i(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    iput-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    :cond_9
    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    :cond_a
    move v10, v0

    invoke-virtual {v6, v10}, Lcom/mbridge/msdk/videocommon/download/a;->d(I)V

    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    const/16 v11, 0x5e

    const/16 v12, 0x12a

    const/16 v13, 0x11f

    if-eq v0, v11, :cond_f

    if-eq v0, v13, :cond_f

    if-ne v0, v7, :cond_b

    goto :goto_4

    :cond_b
    if-ne v0, v12, :cond_d

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v15

    iget-object v14, v1, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {v0, v15, v14}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    iput-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    :cond_c
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->o:Lcom/mbridge/msdk/setting/l;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->i()I

    move-result v0

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_3
    iget v14, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    if-ne v14, v3, :cond_13

    iget-object v14, v1, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    if-nez v14, :cond_e

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v14

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v15

    iget-object v7, v1, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    invoke-virtual {v14, v15, v7}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v7

    iput-object v7, v1, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    :cond_e
    iget-object v7, v1, Lcom/mbridge/msdk/videocommon/download/l;->n:Lcom/mbridge/msdk/setting/l;

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lcom/mbridge/msdk/setting/c;->i()I

    move-result v0

    goto :goto_6

    :cond_f
    :goto_4
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->k:Lcom/mbridge/msdk/videocommon/setting/c;

    if-nez v0, :cond_11

    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v14, v1, Lcom/mbridge/msdk/videocommon/download/l;->j:Ljava/lang/String;

    iget v15, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    if-ne v15, v13, :cond_10

    move v15, v3

    goto :goto_5

    :cond_10
    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v0, v7, v14, v15}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v0

    iput-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->k:Lcom/mbridge/msdk/videocommon/setting/c;

    :cond_11
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->k:Lcom/mbridge/msdk/videocommon/setting/c;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->g()I

    move-result v0

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_6
    invoke-virtual {v6, v0}, Lcom/mbridge/msdk/videocommon/download/a;->b(I)V

    if-eqz v8, :cond_14

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCtnType()I

    move-result v7

    goto :goto_7

    :cond_14
    move v7, v3

    :goto_7
    invoke-virtual {v6, v7}, Lcom/mbridge/msdk/videocommon/download/a;->e(I)V

    const-string v14, "UnitCacheCtroller"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ready_rate : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " cd_rate : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " videoCtnType : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Lcom/mbridge/msdk/videocommon/download/l;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, ""

    if-eqz v8, :cond_15

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    :cond_15
    move-object v7, v0

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->c:Lcom/mbridge/msdk/videocommon/listener/a;

    if-eqz v0, :cond_17

    iget v13, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v14, 0x129

    if-eq v13, v14, :cond_16

    if-ne v13, v12, :cond_17

    :cond_16
    :try_start_1
    invoke-interface {v0, v7}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v13, v0

    :try_start_2
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "UnitCacheCtroller"

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_8
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_19

    const-string v0, ""

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    :cond_18
    iget-object v13, v1, Lcom/mbridge/msdk/videocommon/download/l;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/videocommon/listener/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_19

    :try_start_3
    invoke-interface {v0, v7}, Lcom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v7, v0

    :try_start_4
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_19

    const-string v0, "UnitCacheCtroller"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_9
    if-eq v9, v3, :cond_4

    const/4 v0, 0x5

    if-ne v9, v0, :cond_1a

    invoke-static {v6, v10}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1a
    const/4 v0, 0x4

    if-eq v9, v0, :cond_4

    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    move-result v0

    const/16 v7, 0x9

    const/4 v8, 0x2

    if-eq v0, v7, :cond_1b

    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->l:I

    if-ne v0, v8, :cond_1b

    monitor-exit v2

    return-void

    :cond_1b
    if-eq v9, v8, :cond_1c

    iget-boolean v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->b:Z

    if-nez v0, :cond_1c

    goto/16 :goto_2

    :cond_1c
    iget-object v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->f:Lcom/mbridge/msdk/videocommon/download/c;

    invoke-virtual {v6, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/c;)V

    invoke-static {v6, v10}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    if-eq v0, v11, :cond_1d

    const/16 v7, 0x11f

    if-ne v0, v7, :cond_4

    :cond_1d
    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/download/a;->w()V

    goto/16 :goto_2

    :cond_1e
    iget v0, v1, Lcom/mbridge/msdk/videocommon/download/l;->m:I

    if-eq v0, v3, :cond_1f

    const/16 v7, 0x5f

    if-eq v0, v7, :cond_1f

    if-ne v0, v12, :cond_20

    :cond_1f
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/mbridge/msdk/videocommon/download/l;->b:Z

    :cond_20
    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/download/a;->w()V

    goto/16 :goto_2

    :cond_21
    monitor-exit v2

    goto :goto_b

    :goto_a
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_22
    :goto_b
    return-void
.end method

.method public e()V
    .locals 7

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/k;->k()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/videocommon/download/a;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/download/a;->j()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const-string v1, "playing and stop download"

    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/videocommon/download/a;->c(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/download/a;->b()V

    iget-object v1, p0, Lcom/mbridge/msdk/videocommon/download/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_5
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitCacheCtroller"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public f(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->p:Lcom/mbridge/msdk/videocommon/download/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/videocommon/download/k;->h(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/videocommon/download/l;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/videocommon/download/l;->a(Ljava/util/List;)V

    return-void
.end method
