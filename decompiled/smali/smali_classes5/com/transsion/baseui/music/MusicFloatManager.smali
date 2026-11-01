.class public final Lcom/transsion/baseui/music/MusicFloatManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baseui/music/MusicFloatManager$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/baseui/music/MusicFloatManager$a;

.field public static final i:I

.field private static final j:Lkotlin/Lazy;


# instance fields
.field private a:Z

.field private b:Lcom/transsion/player/mediasession/MediaItem;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private e:Lcom/transsion/player/orplayer/g;

.field private f:Ljava/util/List;

.field private final g:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/baseui/music/MusicFloatManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/baseui/music/MusicFloatManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/baseui/music/MusicFloatManager;->i:I

    new-instance v0, Lcom/transsion/baseui/music/c;

    invoke-direct {v0}, Lcom/transsion/baseui/music/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->j:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->a:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->f:Ljava/util/List;

    sget-object v0, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    invoke-virtual {v0}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    sget-object v1, Lcom/transsion/baseui/music/a;->a:Lcom/transsion/baseui/music/a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    sget-object v0, Lcom/transsion/baseui/music/MusicReport;->a:Lcom/transsion/baseui/music/MusicReport;

    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicReport;->c()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->g:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/baseui/music/MusicFloatManager;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baseui/music/MusicFloatManager;->m(Lcom/transsion/baseui/music/MusicFloatManager;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b()Lcom/transsion/baseui/music/MusicFloatManager;
    .locals 1

    invoke-static {}, Lcom/transsion/baseui/music/MusicFloatManager;->c()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object v0

    return-object v0
.end method

.method private static final c()Lcom/transsion/baseui/music/MusicFloatManager;
    .locals 1

    new-instance v0, Lcom/transsion/baseui/music/MusicFloatManager;

    invoke-direct {v0}, Lcom/transsion/baseui/music/MusicFloatManager;-><init>()V

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/baseui/music/MusicFloatManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->j:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/baseui/music/MusicFloatManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/baseui/music/MusicFloatManager;)Lcom/transsion/player/orplayer/g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->e:Lcom/transsion/player/orplayer/g;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/baseui/music/MusicFloatManager;Lcom/transsion/player/orplayer/g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/music/MusicFloatManager;->e:Lcom/transsion/player/orplayer/g;

    return-void
.end method

.method private final j(JJIILao/e;)V
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v3, 0x0

    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/transsion/player/mediasession/MediaItem;->isMusic()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Lcom/transsion/baseui/music/MusicFloatManager;->g:Ljava/util/Map;

    const/4 v5, 0x0

    if-eqz p7, :cond_2

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/transsion/player/mediasession/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v5

    :goto_1
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/baseui/music/n;

    if-eqz p7, :cond_3

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/transsion/player/mediasession/MediaItem;->getPageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v5

    :goto_2
    const-string v7, "music_float"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz p7, :cond_4

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/transsion/player/mediasession/MediaItem;->getInBackground()Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_4
    move v6, v3

    :goto_3
    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v4, :cond_14

    sget-object v1, Lcom/transsion/baseui/music/MusicReport;->a:Lcom/transsion/baseui/music/MusicReport;

    invoke-virtual {v1, v4}, Lcom/transsion/baseui/music/MusicReport;->d(Lcom/transsion/baseui/music/n;)V

    iget-object v1, v0, Lcom/transsion/baseui/music/MusicFloatManager;->g:Ljava/util/Map;

    if-eqz p7, :cond_6

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/player/mediasession/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v5

    :goto_4
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :cond_7
    :goto_5
    if-nez v4, :cond_b

    new-instance v4, Lcom/transsion/baseui/music/n;

    if-eqz p7, :cond_8

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/transsion/player/mediasession/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    goto :goto_6

    :cond_8
    move-object v7, v5

    :goto_6
    if-eqz p7, :cond_9

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/transsion/player/mediasession/MediaItem;->getOps()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_7

    :cond_9
    move-object v8, v5

    :goto_7
    if-eqz p7, :cond_a

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    goto :goto_8

    :cond_a
    move-object v9, v5

    :goto_8
    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v6, v4

    move-wide/from16 v14, p3

    move/from16 v20, p5

    move/from16 v21, p6

    invoke-direct/range {v6 .. v21}, Lcom/transsion/baseui/music/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJII)V

    :cond_b
    invoke-virtual {v4}, Lcom/transsion/baseui/music/n;->g()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/16 v8, 0x1

    cmp-long v8, v8, v6

    if-gtz v8, :cond_c

    const-wide/16 v8, 0x7d0

    cmp-long v8, v6, v8

    if-gez v8, :cond_c

    const/4 v8, 0x1

    goto :goto_9

    :cond_c
    move v8, v3

    :goto_9
    if-eqz v8, :cond_d

    goto :goto_a

    :cond_d
    const-wide/16 v6, 0x0

    :goto_a
    if-eqz p7, :cond_e

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/transsion/player/mediasession/MediaItem;->getInBackground()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v4}, Lcom/transsion/baseui/music/n;->c()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/transsion/baseui/music/n;->m(J)V

    goto :goto_b

    :cond_f
    invoke-virtual {v4}, Lcom/transsion/baseui/music/n;->b()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/transsion/baseui/music/n;->l(J)V

    :goto_b
    if-eqz p7, :cond_10

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/transsion/player/mediasession/MediaItem;->getOps()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_10
    move-object v3, v5

    :goto_c
    invoke-virtual {v4, v3}, Lcom/transsion/baseui/music/n;->n(Ljava/lang/String;)V

    move-wide/from16 v8, p3

    invoke-virtual {v4, v8, v9}, Lcom/transsion/baseui/music/n;->r(J)V

    move/from16 v3, p5

    invoke-virtual {v4, v3}, Lcom/transsion/baseui/music/n;->s(I)V

    move/from16 v3, p6

    invoke-virtual {v4, v3}, Lcom/transsion/baseui/music/n;->k(I)V

    if-eqz p7, :cond_11

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_11
    move-object v3, v5

    :goto_d
    invoke-virtual {v4, v3}, Lcom/transsion/baseui/music/n;->q(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Lcom/transsion/baseui/music/n;->p(J)V

    invoke-virtual {v4}, Lcom/transsion/baseui/music/n;->f()J

    move-result-wide v1

    add-long/2addr v1, v6

    invoke-virtual {v4, v1, v2}, Lcom/transsion/baseui/music/n;->o(J)V

    iget-object v1, v0, Lcom/transsion/baseui/music/MusicFloatManager;->g:Ljava/util/Map;

    if-eqz p7, :cond_12

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/transsion/player/mediasession/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_12
    move-object v2, v5

    :goto_e
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/transsion/baseui/music/n;->f()J

    move-result-wide v1

    const-wide/16 v6, 0x2710

    cmp-long v1, v1, v6

    if-lez v1, :cond_14

    sget-object v1, Lcom/transsion/baseui/music/MusicReport;->a:Lcom/transsion/baseui/music/MusicReport;

    invoke-virtual {v1, v4}, Lcom/transsion/baseui/music/MusicReport;->d(Lcom/transsion/baseui/music/n;)V

    iget-object v1, v0, Lcom/transsion/baseui/music/MusicFloatManager;->g:Ljava/util/Map;

    if-eqz p7, :cond_13

    invoke-virtual/range {p7 .. p7}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/transsion/player/mediasession/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_13
    move-object v2, v5

    :goto_f
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    :goto_10
    return-void
.end method

.method private static final m(Lcom/transsion/baseui/music/MusicFloatManager;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/transsion/baseui/music/MusicFloatManager;->y(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/baseui/music/MusicFloatView;

    invoke-virtual {p0, p2}, Lcom/transsion/baseui/music/MusicFloatView;->setExpand(Z)V

    :cond_0
    return p2
.end method

.method private final o(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/FrameLayout;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v0, p1

    :cond_2
    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final p()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/baseui/music/MusicFloatManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final y(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v4, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v3, v0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baseui/music/MusicFloatManager;->a:Z

    return-void
.end method

.method public final B(Lcom/transsion/player/mediasession/MediaItem;)V
    .locals 3

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> setMediaItem() --> musicFloatBean = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaItem;->isMusic()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/transsion/baseui/music/MusicFloatManager;->b:Lcom/transsion/player/mediasession/MediaItem;

    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/music/MusicFloatManager;->c:Ljava/lang/String;

    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public final i(Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/baseui/music/MusicFloatView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/transsion/baseui/music/MusicFloatManager;->y(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/baseui/music/MusicFloatView;->setExpand(Z)V

    :cond_1
    return-void
.end method

.method public initPlayer()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public final k(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final l(Landroidx/appcompat/app/AppCompatActivity;I)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->p()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> attach() --> activity == null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->q()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baseui/music/MusicFloatView;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baseui/music/MusicFloatView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_5

    new-instance v0, Lcom/transsion/baseui/music/MusicFloatView;

    invoke-direct {v0, p1}, Lcom/transsion/baseui/music/MusicFloatView;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-direct {p0, p1}, Lcom/transsion/baseui/music/MusicFloatManager;->o(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_4

    new-instance v1, Lcom/transsion/baseui/music/b;

    invoke-direct {v1, p0, p2}, Lcom/transsion/baseui/music/b;-><init>(Lcom/transsion/baseui/music/MusicFloatManager;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    const v1, 0x800053

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x7c

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz p1, :cond_5

    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baseui/music/MusicFloatView;

    invoke-virtual {p1}, Lcom/transsion/baseui/music/MusicFloatView;->refresh()V

    return-void
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->s()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_1
    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/baseui/music/MusicFloatManager;->B(Lcom/transsion/player/mediasession/MediaItem;)V

    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/h;->p()V

    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->e(Lcom/transsion/player/orplayer/f;Lao/e;)V

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->b:Lcom/transsion/player/mediasession/MediaItem;

    if-eqz v0, :cond_0

    const-string v1, "completion"

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/MediaItem;->setState(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onCompletion(Lao/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->i(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->k(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->o(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 2

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->q(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;)V

    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onPlayError() --> subjectId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatManager;->b:Lcom/transsion/player/mediasession/MediaItem;

    if-eqz p1, :cond_1

    const-string p2, "error"

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/MediaItem;->setState(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 7

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;-><init>(Lcom/transsion/baseui/music/MusicFloatManager;Lao/e;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onPlayerReset()V
    .locals 3

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->v(Lcom/transsion/player/orplayer/f;)V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onPlayerReset()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->w(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 10

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->y(Lcom/transsion/player/orplayer/f;JLao/e;)V

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/player/orplayer/f;->onProgress(JLao/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->s()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->s()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/transsion/player/orplayer/g;->getBitrate()Lkotlin/Pair;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, v0

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/transsion/baseui/music/MusicFloatManager;->j(JJIILao/e;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->q()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/transsion/player/mediasession/MediaItem;->setPosition(Ljava/lang/Long;)V

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->q()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p2, "play"

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/MediaItem;->setState(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->q()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/MediaItem;->setDuration(Ljava/lang/Long;)V

    :cond_7
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->A(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onSetDataSource()V
    .locals 3

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->B(Lcom/transsion/player/orplayer/f;)V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onSetDataSource()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->C(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->E(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 4

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->F(Lcom/transsion/player/orplayer/f;Lao/e;)V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onVideoPause() --> subjectId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->b:Lcom/transsion/player/mediasession/MediaItem;

    if-eqz v0, :cond_1

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/MediaItem;->setState(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onVideoPause(Lao/e;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 4

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->I(Lcom/transsion/player/orplayer/f;Lao/e;)V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/baseui/music/MusicFloatManager;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lao/e;->i()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onVideoStart() --> subjectId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->b:Lcom/transsion/player/mediasession/MediaItem;

    if-eqz v0, :cond_1

    const-string v1, "play"

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/MediaItem;->setState(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/player/orplayer/f;

    invoke-interface {v1, p1}, Lcom/transsion/player/orplayer/f;->onVideoStart(Lao/e;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final q()Lcom/transsion/player/mediasession/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->b:Lcom/transsion/player/mediasession/MediaItem;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->e:Lcom/transsion/player/orplayer/g;

    if-nez v0, :cond_0

    new-instance v0, Lko/f0;

    invoke-direct {v0}, Lko/f0;-><init>()V

    invoke-virtual {v0, p0}, Lko/f0;->addPlayerListener(Lcom/transsion/player/orplayer/f;)V

    iput-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->e:Lcom/transsion/player/orplayer/g;

    :cond_0
    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->e:Lcom/transsion/player/orplayer/g;

    return-object v0
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/baseui/music/o;->a:Lcom/transsion/baseui/music/o;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/transsion/baseui/music/o;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final u()V
    .locals 5

    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/baseui/music/MusicFloatManager;->B(Lcom/transsion/player/mediasession/MediaItem;)V

    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/h;->p()V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    instance-of v3, v2, Lcom/transsion/baseui/activity/BaseMusicFloatActivity;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/transsion/baseui/activity/BaseMusicFloatActivity;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/baseui/music/MusicFloatView;

    if-eqz v3, :cond_2

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/baseui/activity/BaseMusicFloatActivity;->onCloseMusicFloating()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->a:Z

    return v0
.end method

.method public final w()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->f:Ljava/util/List;

    return-object v0
.end method

.method public final x(Landroidx/appcompat/app/AppCompatActivity;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/baseui/music/MusicFloatView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final z(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
