.class public Lcom/mbridge/msdk/mbnative/controller/NativeController;
.super Lcom/mbridge/msdk/mbnative/controller/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/mbnative/controller/NativeController$r;,
        Lcom/mbridge/msdk/mbnative/controller/NativeController$n;,
        Lcom/mbridge/msdk/mbnative/controller/NativeController$p;,
        Lcom/mbridge/msdk/mbnative/controller/NativeController$s;,
        Lcom/mbridge/msdk/mbnative/controller/NativeController$o;,
        Lcom/mbridge/msdk/mbnative/controller/NativeController$t;,
        Lcom/mbridge/msdk/mbnative/controller/NativeController$q;
    }
.end annotation


# static fields
.field private static final c0:Ljava/lang/String; = "NativeController"

.field public static d0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static e0:Z


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/mbridge/msdk/foundation/same/task/b;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/mbnative/controller/c;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/mbnative/controller/c$d;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/same/task/a;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/mmadbridge/adsession/b;",
            ">;"
        }
    .end annotation
.end field

.field private H:I

.field private I:I

.field private J:Lcom/mbridge/msdk/mbnative/controller/NativeController$n;

.field private K:Z

.field private L:Z

.field private M:Ljava/util/Timer;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private Q:Lcom/mbridge/msdk/setting/l;

.field private R:J

.field private S:I

.field private T:I

.field private U:Z

.field private V:I

.field private W:I

.field private X:Z

.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/lang/String;

.field private a0:Lcom/iab/omid/library/mmadbridge/adsession/b;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b0:Lcom/iab/omid/library/mmadbridge/adsession/a;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/mbridge/msdk/setting/j;

.field private f:Lcom/mbridge/msdk/mbnative/listener/a;

.field private g:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Lcom/mbridge/msdk/foundation/same/report/h;

.field private o:Ljava/lang/String;

.field private p:Lcom/mbridge/msdk/click/a;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d0:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/controller/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    iput v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->s:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->t:I

    iput-boolean v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->w:Z

    iput-boolean v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->x:Z

    iput v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->y:I

    iput v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->z:I

    iput v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->A:I

    iput v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->B:I

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->G:Ljava/util/Hashtable;

    iput v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->H:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->I:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/mbnative/listener/a;Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;Ljava/util/Map;Landroid/content/Context;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/mbnative/listener/a;",
            "Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v5, 0x3

    const/4 v6, 0x5

    const-class v7, Ljava/lang/String;

    const-string v8, "native_info"

    const-string v9, "ad_frame_num"

    const-string v0, "ad_num"

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/mbnative/controller/a;-><init>()V

    const/4 v10, 0x1

    iput v10, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    iput v10, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    const/4 v11, -0x1

    iput v11, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->s:I

    const/4 v11, 0x0

    iput v11, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->t:I

    iput-boolean v11, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    iput-boolean v11, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->w:Z

    iput-boolean v11, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->x:Z

    iput v11, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->y:I

    iput v11, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->z:I

    iput v11, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->A:I

    iput v11, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->B:I

    new-instance v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v12, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    iput-object v12, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->G:Ljava/util/Hashtable;

    iput v10, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->H:I

    const/4 v12, 0x2

    iput v12, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->I:I

    const-string v13, ""

    iput-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    iput-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->O:Ljava/lang/String;

    iput-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Z:Ljava/lang/String;

    iput-object v3, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    iput-object v2, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    new-instance v14, Lcom/mbridge/msdk/setting/j;

    invoke-direct {v14}, Lcom/mbridge/msdk/setting/j;-><init>()V

    iput-object v14, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->e:Lcom/mbridge/msdk/setting/j;

    move-object/from16 v14, p1

    iput-object v14, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    move-object/from16 v14, p2

    iput-object v14, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->g:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->D:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->E:Ljava/util/List;

    const-string v14, "unit_id"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    return-void

    :cond_0
    sget-object v14, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    sget-object v14, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    sget-object v13, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->j:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->j:Ljava/lang/String;

    :goto_0
    const-string v13, "isPreloadImg"

    invoke-interface {v2, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    sput-boolean v13, Lcom/mbridge/msdk/mbnative/controller/NativeController;->e0:Z

    :cond_2
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    iput-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->k:Ljava/util/Queue;

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    iput-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->l:Ljava/util/Queue;

    new-instance v13, Lcom/mbridge/msdk/foundation/same/task/b;

    iget-object v14, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/mbridge/msdk/foundation/same/task/b;-><init>(Landroid/content/Context;)V

    iput-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->C:Lcom/mbridge/msdk/foundation/same/task/b;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    if-nez v13, :cond_3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_3
    new-instance v13, Lcom/mbridge/msdk/mbnative/controller/NativeController$r;

    invoke-direct {v13, v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController$r;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    iput-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    const-string v13, "catetory"

    invoke-interface {v2, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->u:Ljava/lang/String;

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object v13

    iget-object v14, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object v14

    iget-object v15, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_5
    move v13, v11

    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_a

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_9

    if-eqz v14, :cond_9

    :try_start_1
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    sget-boolean v13, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v13, :cond_6

    sget-object v13, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v10

    :goto_2
    if-ge v0, v10, :cond_7

    move v0, v10

    :cond_7
    const/16 v13, 0xa

    if-le v0, v13, :cond_8

    move v0, v13

    :cond_8
    iput v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    iput v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    :cond_9
    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_d

    if-eqz v15, :cond_d

    :try_start_3
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->A:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_4
    sget-boolean v9, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v9, :cond_d

    sget-object v9, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->c()Ljava/util/Map;

    move-result-object v13

    iget-object v4, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->c()Ljava/util/Map;

    move-result-object v4

    iget-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    :cond_b
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v14, :cond_c

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->y:I

    iput v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    :cond_c
    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v15, :cond_d

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->z:I

    iput v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->A:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_3
    sget-object v4, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/common/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_4
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/h;

    iget-object v4, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->n:Lcom/mbridge/msdk/foundation/same/report/h;

    new-instance v0, Lcom/mbridge/msdk/click/a;

    iget-object v4, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    iget-object v9, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-direct {v0, v4, v9}, Lcom/mbridge/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p:Lcom/mbridge/msdk/click/a;

    :try_start_5
    sget v0, Lcom/mbridge/msdk/nativex/view/MBMediaView;->p0:I

    iput-boolean v10, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->L:Z

    iget-object v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    if-eqz v0, :cond_f

    const-string v4, "native_video_width"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v4, "native_video_height"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "videoSupport"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iput-boolean v10, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->K:Z

    :cond_f
    iget-object v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    iget-object v4, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/mbridge/msdk/mbnative/controller/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/m0;->a()V

    iget-object v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/db/e;->a()V

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_10

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    :cond_10
    move-object v0, v4

    :goto_5
    invoke-direct {v1, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v2, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    if-gtz v0, :cond_11

    iget v0, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    :cond_11
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v8, v11

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_13

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v9}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/2addr v8, v10

    goto :goto_6

    :cond_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    const-class v0, Lcom/mbridge/msdk/videocommon/download/b;

    const-string v8, "getInstance"

    invoke-virtual {v0, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "createUnitCache"

    new-array v13, v6, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v11

    aput-object v7, v13, v10

    const-class v14, Ljava/util/concurrent/CopyOnWriteArrayList;

    aput-object v14, v13, v12

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v5

    const-class v14, Lcom/mbridge/msdk/videocommon/listener/a;

    const/4 v15, 0x4

    aput-object v14, v13, v15

    invoke-virtual {v0, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    new-instance v14, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v14, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v11

    aput-object v13, v6, v10

    aput-object v14, v6, v12

    aput-object v2, v6, v5

    const/4 v2, 0x4

    aput-object v4, v6, v2

    invoke-virtual {v9, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "load"

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v7, v3, v11

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v11

    invoke-virtual {v0, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catchall_0
    sget-object v0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    const-string v2, "please import the nativex aar"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_7
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->S:I

    return p1
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_2

    move p1, v0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_1

    const-string p1, "ad_num"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/common/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 11

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->G:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->G:Ljava/util/Hashtable;

    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->G:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x1

    const-string v9, ""

    invoke-static/range {v3 .. v10}, Lcom/mbridge/msdk/omsdk/b;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->G:Ljava/util/Hashtable;

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/mbnative/listener/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->O:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v1, "native_info"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->V:I

    if-lt v0, v1, :cond_2

    invoke-interface {p2, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->W:I

    if-lt v0, v1, :cond_2

    invoke-interface {p2, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;ILjava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Y:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;Z)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/out/Campaign;

    instance-of v3, v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v1

    :cond_5
    return-object v0
.end method

.method private a(Ljava/util/List;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/out/Campaign;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v1

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object v2

    if-eqz p2, :cond_2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h()Lcom/mbridge/msdk/setting/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/setting/c;->C()I

    move-result v3

    invoke-static {v2, v3}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/out/Campaign;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v1

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h()Lcom/mbridge/msdk/setting/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/setting/c;->C()I

    move-result v3

    invoke-static {v2, v3}, Lcom/mbridge/msdk/videocommon/download/l;->a(Lcom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/out/Campaign;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v1

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    return-object p1
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "key_word"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "p"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p0

    goto :goto_4

    :goto_2
    move-object v1, p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, p0

    :goto_3
    sget-object p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/common/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-object v1
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/Class;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method private a(Landroid/view/View;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 6

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    if-eqz p2, :cond_4

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "mb_wm"

    const/4 v3, 0x0

    if-ge v1, v0, :cond_1

    :try_start_1
    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v0, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v1, v4

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v4, Landroid/widget/ImageView;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_3

    new-instance v4, Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v4, p2, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Landroid/util/DisplayMetrics;)Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz p2, :cond_3

    sget-object v0, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p2, v4, v0, v3}, Lcom/iab/omid/library/mmadbridge/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_3
    new-instance p2, Lcom/mbridge/msdk/mbnative/controller/NativeController$e;

    invoke-direct {p2, p0, v4, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController$e;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Landroid/widget/ImageView;Landroid/view/View;)V

    iput-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->P:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->P:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/Class;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Landroid/view/View;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/view/View;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->d(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->s()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpReportType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move v0, v1

    :cond_3
    new-instance v7, Lcom/mbridge/msdk/mbnative/controller/NativeController$s;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/mbnative/controller/NativeController$s;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/mbridge/msdk/mbnative/controller/NativeController$j;

    invoke-direct {p1, p0, v7}, Lcom/mbridge/msdk/mbnative/controller/NativeController$j;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/mbnative/controller/NativeController$s;)V

    invoke-virtual {v7, p1}, Lcom/mbridge/msdk/foundation/same/task/a;->setOnStateChangeListener(Lcom/mbridge/msdk/foundation/same/task/a$a;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    if-eqz p1, :cond_5

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long p2, v0

    invoke-virtual {p1, v7, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    sget-object p2, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/common/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/view/View;Ljava/util/List;Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/iab/omid/library/mmadbridge/adsession/b;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance p4, Lcom/mbridge/msdk/mbnative/controller/NativeController$k;

    invoke-direct {p4, p0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController$k;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    new-instance v0, Lcom/mbridge/msdk/mbnative/controller/c;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpReportType()I

    move-result p1

    invoke-direct {v0, p3, p4, v1, p1}, Lcom/mbridge/msdk/mbnative/controller/c;-><init>(Ljava/util/List;Lcom/mbridge/msdk/mbnative/controller/c$d;Landroid/os/Handler;I)V

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/mbnative/controller/c;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->D:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->E:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/view/View;Ljava/util/List;Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/view/View;Ljava/util/List;Lcom/iab/omid/library/mmadbridge/adsession/b;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/mbnative/listener/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/listener/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;ILcom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;ILcom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/mbnative/listener/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/mbnative/controller/NativeController$b;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController$b;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/mbnative/listener/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/util/List;ILcom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;I",
            "Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/mbnative/controller/NativeController$a;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController$a;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/util/List;Lcom/mbridge/msdk/mbnative/controller/NativeController$o;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;",
            "Lcom/mbridge/msdk/mbnative/controller/NativeController$o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->M:Ljava/util/Timer;

    new-instance v7, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/mbnative/controller/NativeController$d;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;JLcom/mbridge/msdk/mbnative/controller/NativeController$o;Ljava/util/List;)V

    const-wide/16 p1, 0x0

    const-wide/16 v8, 0x3e8

    move-object v4, v6

    move-object v5, v7

    move-wide v6, p1

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private a(ZI)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v4, "app_id"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v5, "app_key"

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v6, "key_word"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/setting/l;->i(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->y()I

    move-result p1

    iget v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    mul-int/2addr p1, v2

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->d()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->c()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c:Ljava/util/List;

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->f()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->T:I

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/c;->e()I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->S:I

    iget p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    iput p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->b(Landroid/content/Context;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v2, p1

    :goto_0
    if-nez v2, :cond_5

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    if-eqz p1, :cond_4

    const-string p2, "webview is not available"

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/mbnative/listener/a;->onAdLoadError(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v3, "native_info"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f()V

    :cond_6
    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_8

    :cond_7
    if-nez p2, :cond_8

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    iget v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v5}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-void

    :cond_8
    iput-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->X:Z

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez p2, :cond_b

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_b

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v4

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->H:I

    iput v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    goto :goto_1

    :cond_9
    iget v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    iput v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    :goto_1
    if-eqz v4, :cond_a

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    iget v5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    invoke-virtual {v4, v3, v5}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-void

    :cond_a
    iput-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->X:Z

    :try_start_1
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/mbridge/msdk/mbnative/controller/a;->a(JIZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_b
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->K()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->j()V

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(ILjava/lang/String;)V

    return-void

    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    if-eqz p1, :cond_d

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    const-string p2, "do not have sorceList"

    invoke-interface {p1, p2}, Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdLoadError(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbnative/controller/NativeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbnative/controller/NativeController;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->t:I

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->o:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/out/Campaign;

    instance-of v2, v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 7

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->needShowIDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v6, Lcom/mbridge/msdk/mbnative/controller/NativeController$h;

    invoke-direct {v6, p0, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController$h;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-static {p2}, Lcom/mbridge/msdk/click/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->needShowIDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p:Lcom/mbridge/msdk/click/a;

    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/mbnative/controller/a;->a(Lcom/mbridge/msdk/click/a;Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Lcom/mbridge/msdk/widget/dialog/b;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/mbnative/listener/a;->onAdClick(Lcom/mbridge/msdk/out/Campaign;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    sget-object v0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p:Lcom/mbridge/msdk/click/a;

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setReportClick(Z)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->d()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lcom/mbridge/msdk/foundation/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/j;->d()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->e0:Z

    return v0
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    return p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbnative/controller/NativeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->w:Z

    return p1
.end method

.method public static b(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "key_word"

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "app_id"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "app_key"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    invoke-static {p0}, Lcom/mbridge/msdk/mbnative/common/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Z:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->M:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->M:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c()V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/mbnative/controller/NativeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->U:Z

    return p1
.end method

.method private c(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    if-eqz v6, :cond_b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/iab/omid/library/mmadbridge/adsession/b;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->g()V

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a0:Lcom/iab/omid/library/mmadbridge/adsession/b;

    invoke-static {v2}, Lcom/iab/omid/library/mmadbridge/adsession/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/a;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b0:Lcom/iab/omid/library/mmadbridge/adsession/a;

    invoke-virtual {v2}, Lcom/iab/omid/library/mmadbridge/adsession/a;->c()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    move-result v0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/j;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/db/j;->a()V

    move v2, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/foundation/db/j;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/mbridge/msdk/foundation/entity/g;

    invoke-direct {v4}, Lcom/mbridge/msdk/foundation/entity/g;-><init>()V

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mbridge/msdk/foundation/entity/g;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mbridge/msdk/foundation/entity/g;->b(I)V

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/mbridge/msdk/foundation/entity/g;->c(I)V

    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/foundation/entity/g;->a(I)V

    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/foundation/entity/g;->d(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/mbridge/msdk/foundation/entity/g;->a(J)V

    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/foundation/db/j;->b(Lcom/mbridge/msdk/foundation/entity/g;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->L:Z

    const/4 v2, 0x0

    const-string v3, "has no ads"

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->K:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h()Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->m()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Lcom/mbridge/msdk/mbnative/controller/NativeController$l;

    move-object v2, v0

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/mbnative/controller/NativeController$l;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;ILcom/mbridge/msdk/mbnative/listener/a;Ljava/util/List;)V

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;Lcom/mbridge/msdk/mbnative/controller/NativeController$o;)V

    goto :goto_4

    :cond_5
    invoke-direct {p0, v6, v3, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/listener/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_4

    :cond_6
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    new-instance v1, Lcom/mbridge/msdk/mbnative/controller/NativeController$m;

    invoke-direct {v1, p0, p1, v5, v6}, Lcom/mbridge/msdk/mbnative/controller/NativeController$m;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;ILcom/mbridge/msdk/mbnative/listener/a;)V

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;Lcom/mbridge/msdk/mbnative/controller/NativeController$o;)V

    goto :goto_4

    :cond_7
    invoke-direct {p0, p1, v5, v6}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;ILcom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/out/Campaign;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/out/Campaign;->setVideoLength(I)V

    goto :goto_3

    :cond_9
    invoke-direct {p0, p1, v5, v6}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;ILcom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    goto :goto_4

    :cond_a
    invoke-direct {p0, v6, v3, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/mbnative/listener/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_b
    :goto_4
    const/4 p1, 0x1

    return p1

    :cond_c
    return v1
.end method

.method static synthetic d(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/setting/l;
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h()Lcom/mbridge/msdk/setting/l;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/mbnative/controller/NativeController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    if-eqz v0, :cond_6

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v9, :cond_6

    :try_start_1
    sget v9, Lcom/mbridge/msdk/nativex/view/MBMediaView;->p0:I

    const-class v9, Lcom/mbridge/msdk/videocommon/download/b;

    const-string v10, "getInstance"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v11, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v12, "createUnitCache"

    new-array v13, v5, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v7

    aput-object v8, v13, v6

    const-class v14, Ljava/util/concurrent/CopyOnWriteArrayList;

    aput-object v14, v13, v4

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v3

    const-class v14, Lcom/mbridge/msdk/videocommon/listener/a;

    aput-object v14, v13, v2

    invoke-virtual {v9, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    iget-object v13, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    iget-object v14, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    new-instance v15, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v15, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v13, v5, v7

    aput-object v14, v5, v6

    aput-object v15, v5, v4

    aput-object v16, v5, v3

    aput-object v11, v5, v2

    invoke-virtual {v12, v10, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "load"

    new-array v3, v6, [Ljava/lang/Class;

    aput-object v8, v3, v7

    invoke-virtual {v9, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-virtual {v2, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mbridge/msdk/mbnative/controller/NativeController$c;

    invoke-direct {v5, v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController$c;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    invoke-virtual {v3, v4, v5}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    const-string v3, ""

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v4, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    invoke-virtual {v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAabEntity()Lcom/mbridge/msdk/foundation/entity/AabEntity;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAabEntity()Lcom/mbridge/msdk/foundation/entity/AabEntity;

    move-result-object v5

    iget v5, v5, Lcom/mbridge/msdk/foundation/entity/AabEntity;->h3c:I

    goto :goto_1

    :cond_4
    move v5, v7

    :goto_1
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->f(I)V

    const-string v5, ".zip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "md5filename"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    new-instance v6, Lcom/mbridge/msdk/mbnative/controller/NativeController$t;

    iget-object v8, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-direct {v6, v8, v2, v5}, Lcom/mbridge/msdk/mbnative/controller/NativeController$t;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v2

    invoke-virtual {v2, v4, v3, v6}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/foundation/download/download/HTMLResourceManager;->getHtmlContentFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    new-instance v6, Lcom/mbridge/msdk/mbnative/controller/NativeController$q;

    iget-object v8, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-direct {v6, v8, v2, v5}, Lcom/mbridge/msdk/mbnative/controller/NativeController$q;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v2

    invoke-virtual {v2, v4, v3, v6}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    :try_start_3
    sget-object v0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    const-string v2, "please import the videocommon and nativex aar"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/foundation/same/report/h;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->n:Lcom/mbridge/msdk/foundation/same/report/h;

    return-object p0
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/out/Campaign;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    sget-object v3, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove no videoURL ads:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method static synthetic f(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    return p0
.end method

.method private f()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    const-string v6, "ad_num"

    if-ne v5, v4, :cond_1

    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->V:I

    iget v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->T:I

    if-lez v4, :cond_2

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->T:I

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v5, 0x3

    if-ne v5, v4, :cond_2

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->W:I

    iget v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->T:I

    if-lez v4, :cond_2

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->T:I

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->V:I

    iget v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->W:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->H:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    sget-object v1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/common/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Lcom/mbridge/msdk/click/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p:Lcom/mbridge/msdk/click/a;

    return-object p0
.end method

.method private h()Lcom/mbridge/msdk/setting/l;
    .locals 3

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/mbridge/msdk/setting/l;->i(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    return-object v0
.end method

.method static synthetic i(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->S:I

    return p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->V:I

    return p0
.end method

.method static synthetic k(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->W:I

    return p0
.end method

.method static synthetic l(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->s:I

    return p0
.end method

.method static synthetic n(Lcom/mbridge/msdk/mbnative/controller/NativeController;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->t:I

    return p0
.end method

.method static synthetic o(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/mbridge/msdk/setting/l;->i(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Q:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "native_info"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v1, v2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v5, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v4, :cond_1

    :cond_0
    iget-object p3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->H:I

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    :goto_1
    invoke-virtual {v2, p1, p3}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez p3, :cond_7

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object p3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->H:I

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    :goto_4
    invoke-virtual {p3, p1, v1}, Lcom/mbridge/msdk/mbnative/cache/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    invoke-direct {p0, p3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(IJILjava/lang/String;)V
    .locals 23

    move-object/from16 v7, p0

    move/from16 v1, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-object/from16 v15, p5

    monitor-enter p0

    :try_start_0
    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v3, "native_info"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->V:I

    iget v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->W:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v14, 0x1

    if-nez v10, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    iget v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    invoke-virtual {v3, v4, v5}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v7, v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v14, v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Ljava/util/List;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->J:Lcom/mbridge/msdk/mbnative/controller/NativeController$n;

    if-eqz v3, :cond_2

    iget-boolean v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->U:Z

    if-nez v4, :cond_2

    invoke-virtual {v3, v14}, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->b(Z)V

    :cond_2
    iget-boolean v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->U:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    if-nez v3, :cond_3

    const-string v3, "mb load failed"

    invoke-virtual {v7, v3, v10, v15, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_3
    iget-boolean v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->X:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->s:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    iput v1, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->s:I

    goto :goto_1

    :cond_5
    if-eq v3, v1, :cond_6

    const/4 v3, 0x0

    iput v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->t:I

    :cond_6
    :goto_1
    iget-object v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/db/e;->a()V

    new-instance v13, Lcom/mbridge/msdk/mbnative/service/net/a;

    iget-object v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    invoke-direct {v13, v3}, Lcom/mbridge/msdk/mbnative/service/net/a;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    invoke-direct {v12}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    if-eqz v5, :cond_a

    const-string v6, "app_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v6, "app_key"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v6, "key_word"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v6, "key_word"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v6, "app_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v5, "app_id"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_7
    iget-object v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v6, "app_key"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v5, "app_key"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_8
    iget-object v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v6, "key_word"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v5, "key_word"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "smart"

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v5, v2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v2, "app_id"

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "unit_id"

    iget-object v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {v12, v2, v5}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->j:Ljava/lang/String;

    invoke-virtual {v12, v2, v5}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v2, "req_type"

    const-string v5, "2"

    invoke-virtual {v12, v2, v5}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "category"

    iget-object v5, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->u:Ljava/lang/String;

    invoke-virtual {v12, v2, v5}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v2, "sign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->T:I

    if-lez v2, :cond_d

    if-nez v10, :cond_d

    const-string v2, "ad_num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->T:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v2, "ad_num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/t0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "j"

    invoke-virtual {v12, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v2, "only_impression"

    const-string v3, "1"

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ping_mode"

    const-string v3, "1"

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->A:I

    if-eqz v2, :cond_f

    const-string v2, "frame_num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->A:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "native_info"

    iget-object v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v14, :cond_11

    const-string v2, "tnum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->H:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    if-ne v1, v14, :cond_11

    const-string v2, "tnum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_3
    invoke-virtual {v7, v12, v1}, Lcom/mbridge/msdk/mbnative/controller/a;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;I)V

    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    const-string v3, "native"

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->g:Ljava/lang/String;

    invoke-virtual {v12, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v3, "native_video_width"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v3, "native_video_width"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_13

    const-string v2, "video_width"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v5, "native_video_width"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v3, "native_video_height"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v3, "native_video_height"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_14

    const-string v2, "video_height"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v5, "native_video_height"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v3, "videoSupport"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v3, "videoSupport"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v3, "videoSupport"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_15
    const-string v2, "video_version"

    const-string v3, "2.0"

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v2

    if-nez v2, :cond_16

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/setting/h;->a()Lcom/mbridge/msdk/setting/g;

    :cond_16
    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    invoke-static {v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    iget-object v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_17

    sget-object v3, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->e()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->e()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/k;

    if-eqz v2, :cond_19

    if-ne v1, v14, :cond_18

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/k;->a()I

    move-result v2

    iput v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->t:I

    goto :goto_4

    :cond_18
    const/4 v3, 0x2

    if-ne v1, v3, :cond_19

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/k;->b()I

    move-result v2

    iput v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->t:I

    :cond_19
    :goto_4
    const-string v2, "offset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->t:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ad_type"

    const-string v3, "42"

    invoke-virtual {v12, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ad_source_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->i:Ljava/lang/String;

    iget-object v2, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->o:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    new-instance v11, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;

    invoke-direct {v11, v7}, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;)V

    iget-object v1, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->b(Ljava/util/List;)V

    iget-object v1, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {v11, v1}, Lcom/mbridge/msdk/foundation/same/net/c;->setUnitId(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/mbridge/msdk/mbnative/controller/NativeController;->j:Ljava/lang/String;

    invoke-virtual {v11, v1}, Lcom/mbridge/msdk/foundation/same/net/c;->setPlacementId(Ljava/lang/String;)V

    const/16 v1, 0x2a

    invoke-virtual {v11, v1}, Lcom/mbridge/msdk/foundation/same/net/c;->setAdType(I)V

    invoke-virtual {v11, v14}, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->b(Z)V

    new-instance v6, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;

    const/4 v3, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v4, v11

    move/from16 v5, p4

    move-object v14, v6

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/mbnative/controller/NativeController$p;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;ILcom/mbridge/msdk/foundation/same/task/d;ILjava/lang/String;)V

    invoke-virtual {v11, v14}, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->a(Ljava/lang/Runnable;)V

    invoke-virtual {v11, v10}, Lcom/mbridge/msdk/mbnative/service/net/b;->a(I)V

    invoke-virtual {v11, v15}, Lcom/mbridge/msdk/mbnative/service/net/b;->a(Ljava/lang/String;)V

    const-wide/16 v1, 0x7530

    if-nez v10, :cond_1c

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "token"

    invoke-virtual {v12, v3, v15}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    invoke-static {v8, v9, v1, v2}, Lcom/mbridge/msdk/foundation/same/c;->a(JJ)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object v6, v11

    move-object v11, v13

    move-object/from16 v18, v12

    move v12, v5

    move-object v5, v13

    move-object/from16 v13, v18

    move-object v2, v14

    const/4 v1, 0x1

    move-object v14, v6

    move-object/from16 v15, p5

    move-wide/from16 v16, v3

    invoke-virtual/range {v11 .. v17}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->choiceV3OrV5BySetting(ILcom/mbridge/msdk/foundation/same/net/wrapper/e;Lcom/mbridge/msdk/foundation/same/net/b;Ljava/lang/String;J)V

    goto :goto_5

    :cond_1c
    move-object v6, v11

    move-object/from16 v18, v12

    move-object v5, v13

    move-object v2, v14

    const/4 v1, 0x1

    :goto_5
    if-ne v10, v1, :cond_1d

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v1

    iget-object v1, v1, Lcom/mbridge/msdk/foundation/same/net/utils/d;->b0:Ljava/lang/String;

    const-string v3, "campaign"

    const-wide/16 v10, 0x7530

    invoke-static {v8, v9, v10, v11}, Lcom/mbridge/msdk/foundation/same/c;->a(JJ)J

    move-result-wide v21

    const/16 v16, 0x1

    move-object v15, v5

    move-object/from16 v17, v1

    move-object/from16 v19, v6

    move-object/from16 v20, v3

    invoke-virtual/range {v15 .. v22}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->getLoadOrSetting(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Lcom/mbridge/msdk/foundation/same/net/b;Ljava/lang/String;J)V

    :cond_1d
    iget-object v1, v7, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :goto_6
    :try_start_3
    sget-object v2, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/common/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    monitor-exit p0

    return-void

    :goto_8
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->w:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->x:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->U:Z

    iput-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Lcom/mbridge/msdk/mbnative/listener/a;->a(Z)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->J:Lcom/mbridge/msdk/mbnative/controller/NativeController$n;

    sget-object p2, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d0:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_0

    sget-object p2, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d0:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object p2

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(ZI)V

    return-void
.end method

.method public a(Lcom/mbridge/msdk/out/Campaign;Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->g:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p:Lcom/mbridge/msdk/click/a;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    const-string v2, "native"

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    new-instance v1, Lcom/mbridge/msdk/mbnative/controller/NativeController$i;

    invoke-direct {v1, p0, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController$i;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-class v2, Lcom/mbridge/msdk/nativex/view/MBMediaView;

    sget v3, Lcom/mbridge/msdk/nativex/view/MBMediaView;->p0:I

    invoke-direct {p0, p2, v1, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, p2, v1, v2}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/Class;)V

    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, p2, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Landroid/view/View;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p2, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/view/View;Ljava/util/List;)V

    sget-object p1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendImpression"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    sget-object p1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    const-string p2, "registerview exception!"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/mbridge/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/out/Campaign;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, p2, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Landroid/view/View;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->g:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p:Lcom/mbridge/msdk/click/a;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-class v0, Lcom/mbridge/msdk/nativex/view/MBMediaView;

    sget v1, Lcom/mbridge/msdk/nativex/view/MBMediaView;->p0:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    const-string v2, "native"

    invoke-static {v1, p1, v2}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/mbridge/msdk/mbnative/controller/NativeController$f;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController$f;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/mbridge/msdk/mbnative/controller/NativeController$g;

    invoke-direct {v3, p0, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController$g;-><init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/view/View;Ljava/util/List;)V

    sget-object p2, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendImpression"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    sget-object p1, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    const-string p2, "registerview exception!"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->k:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->k:Ljava/util/Queue;

    if-nez v0, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    if-eqz p2, :cond_3

    iget-boolean p3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    if-nez p3, :cond_3

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    invoke-virtual {p2, p4, p1}, Lcom/mbridge/msdk/mbnative/listener/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->e:Lcom/mbridge/msdk/setting/j;

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/mbridge/msdk/setting/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)Z
    .locals 12

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->g()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->c()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v5

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v5

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    :cond_0
    if-eqz v2, :cond_15

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_15

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-nez v5, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/setting/h;->a()Lcom/mbridge/msdk/setting/g;

    move-result-object v5

    :cond_1
    invoke-virtual {v5}, Lcom/mbridge/msdk/setting/b;->Z()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v6, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_2
    const/4 v5, 0x1

    if-ne p1, v5, :cond_9

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    iget-object v7, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    if-nez v7, :cond_3

    return v1

    :cond_3
    iget v8, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->A:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v6}, Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    return v5

    :cond_4
    iget v8, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->A:I

    if-nez v8, :cond_5

    return v1

    :cond_5
    iget v8, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->z:I

    invoke-interface {v6, v1, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v6}, Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    invoke-interface {v6, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mbridge/msdk/out/Frame;

    iget v11, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->A:I

    if-ge v1, v11, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v8}, Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    return v5

    :cond_8
    return v1

    :cond_9
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    move-result v2

    if-ne v2, v5, :cond_12

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->y:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_4

    :cond_a
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->m:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lez v3, :cond_d

    move v3, v1

    move v6, v3

    move v7, v6

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_e

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string v9, "id"

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x2

    const-string v11, "ad_num"

    if-ne v10, v9, :cond_b

    :try_start_1
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_b
    if-ne v4, v9, :cond_c

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    :cond_c
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    move v6, v1

    move v7, v6

    :cond_e
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    move-result v2

    if-ne v4, v2, :cond_f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_4

    :cond_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    sget-object v2, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c0:Ljava/lang/String;

    const-string v3, "load from catch error in get nativeinfo adnum"

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_4
    if-lez v2, :cond_11

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    if-ne v1, v2, :cond_10

    goto :goto_7

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return v1

    :cond_12
    iget v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->y:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_15

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    if-ne v1, v2, :cond_13

    goto :goto_7

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    :goto_7
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Ljava/util/List;)Z

    return v5

    :cond_15
    :goto_8
    return v1
.end method

.method public b(IJILjava/lang/String;)V
    .locals 7

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p4, :cond_2

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->d:Ljava/util/Map;

    const-string v5, "native_info"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->H:I

    iput v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->q:I

    iput v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    :goto_0
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    iget v5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->r:I

    invoke-virtual {v3, v4, v5}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    invoke-virtual/range {p0 .. p5}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(IJILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(IJILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->i:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mbridge/msdk/mbnative/controller/a;->a(JIZLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->k:Ljava/util/Queue;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    move v3, v1

    sget v0, Lcom/mbridge/msdk/MBridgeConstans;->REQUEST_TIME_OUT:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->R:J

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->l:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->R:J

    :cond_1
    iget-wide v4, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->R:J

    move-object v2, p0

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(IJILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->f:Lcom/mbridge/msdk/mbnative/listener/a;

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->v:Z

    const-string p2, "no ad source"

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/mbnative/listener/a;->onAdLoadError(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lcom/mbridge/msdk/out/Campaign;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b(Lcom/mbridge/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public b(Lcom/mbridge/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/out/Campaign;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->P:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->P:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_3

    :cond_1
    :try_start_1
    const-class p1, Lcom/mbridge/msdk/nativex/view/MBMediaView;

    sget v0, Lcom/mbridge/msdk/nativex/view/MBMediaView;->p0:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-direct {p0, p3, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Landroid/view/View;Ljava/lang/Class;)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, p2, p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Landroid/view/View;Ljava/lang/Class;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public d()V
    .locals 0

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/m0;->b()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->Y:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/out/Campaign;

    new-instance v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;-><init>()V

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getCreativeId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCreativeId(J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/c;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->O:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->C:Lcom/mbridge/msdk/foundation/same/task/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/task/b;->a()V

    iput-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->C:Lcom/mbridge/msdk/foundation/same/task/b;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->G:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/mmadbridge/adsession/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->G:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    iput-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->g:Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p:Lcom/mbridge/msdk/click/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/a;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->h:Landroid/content/Context;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->b()V

    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->D:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/mbnative/controller/c;

    invoke-virtual {v2}, Lcom/mbridge/msdk/mbnative/controller/c;->a()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->D:Ljava/util/List;

    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->E:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/mbnative/controller/c$d;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->E:Ljava/util/List;

    :cond_9
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/same/task/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/task/a;->cancel()V

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_b
    return-void
.end method

.method public j()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->k:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->k:Ljava/util/Queue;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->l:Ljava/util/Queue;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController;->l:Ljava/util/Queue;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method
