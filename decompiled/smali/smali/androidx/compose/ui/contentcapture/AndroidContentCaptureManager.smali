.class public final Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/contentcapture/m;
.implements Landroidx/lifecycle/f;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;,
        Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/ui/platform/AndroidComposeView;

.field private b:Lkotlin/jvm/functions/Function0;

.field private c:Landroidx/compose/ui/platform/coreshims/d;

.field private final d:Landroidx/collection/e0;

.field private final e:Landroidx/collection/f0;

.field private f:J

.field private g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

.field private h:Z

.field private final i:Landroidx/collection/b;

.field private final j:Lkotlinx/coroutines/channels/d;

.field private final k:Landroid/os/Handler;

.field private l:Landroidx/collection/o;

.field private m:J

.field private n:Landroidx/collection/e0;

.field private o:Landroidx/compose/ui/platform/c2;

.field private p:Z

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->b:Lkotlin/jvm/functions/Function0;

    new-instance p2, Landroidx/collection/e0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/collection/e0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    new-instance p2, Landroidx/collection/f0;

    invoke-direct {p2, v0, v1, v2}, Landroidx/collection/f0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    const-wide/16 v3, 0x64

    iput-wide v3, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->f:J

    sget-object p2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    iput-boolean v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h:Z

    new-instance p2, Landroidx/collection/b;

    invoke-direct {p2, v0, v1, v2}, Landroidx/collection/b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->i:Landroidx/collection/b;

    const/4 p2, 0x6

    invoke-static {v1, v2, v2, p2, v2}, Lkotlinx/coroutines/channels/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/d;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j:Lkotlinx/coroutines/channels/d;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k:Landroid/os/Handler;

    invoke-static {}, Landroidx/collection/p;->a()Landroidx/collection/o;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l:Landroidx/collection/o;

    invoke-static {}, Landroidx/collection/p;->b()Landroidx/collection/e0;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    new-instance p2, Landroidx/compose/ui/platform/c2;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    invoke-static {}, Landroidx/collection/p;->a()Landroidx/collection/o;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroidx/compose/ui/platform/c2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/o;)V

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->o:Landroidx/compose/ui/platform/c2;

    new-instance p1, Landroidx/compose/ui/contentcapture/a;

    invoke-direct {p1, p0}, Landroidx/compose/ui/contentcapture/a;-><init>(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Ljava/lang/Runnable;

    return-void
.end method

.method private final A(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d(I)V

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-direct {p0, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->A(Landroidx/compose/ui/semantics/SemanticsNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final B()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    invoke-virtual {v1}, Landroidx/collection/e0;->i()V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v1

    iget-object v2, v1, Landroidx/collection/o;->b:[I

    iget-object v3, v1, Landroidx/collection/o;->c:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/o;->a:[J

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_3

    const/4 v6, 0x0

    :goto_0
    aget-wide v7, v1, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_1

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    aget v13, v2, v12

    aget-object v12, v3, v12

    check-cast v12, Landroidx/compose/ui/platform/d2;

    iget-object v14, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    new-instance v15, Landroidx/compose/ui/platform/c2;

    invoke-virtual {v12}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v5

    invoke-direct {v15, v12, v5}, Landroidx/compose/ui/platform/c2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/o;)V

    invoke-virtual {v14, v13, v15}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    :cond_0
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    if-ne v9, v10, :cond_3

    :cond_2
    if-eq v6, v4, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Landroidx/compose/ui/platform/c2;

    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/platform/c2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/o;)V

    iput-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->o:Landroidx/compose/ui/platform/c2;

    return-void
.end method

.method private final C(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object p1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    sget-object v2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/h;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    sget-object v2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_TRANSLATED:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    if-ne v1, v2, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/h;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/semantics/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V

    return-void
.end method

.method private final c(ILandroidx/compose/ui/platform/coreshims/f;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    invoke-virtual {v0, p1}, Landroidx/collection/q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    invoke-virtual {p2, p1}, Landroidx/collection/f0;->q(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final d(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    invoke-virtual {v0, p1}, Landroidx/collection/o;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    invoke-virtual {v0, p1}, Landroidx/collection/e0;->q(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    invoke-virtual {v0, p1}, Landroidx/collection/f0;->f(I)Z

    :goto_0
    return-void
.end method

.method private final e(Landroidx/collection/o;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/collection/o;->b:[I

    iget-object v3, v1, Landroidx/collection/o;->a:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_d

    const/4 v6, 0x0

    :goto_0
    aget-wide v7, v3, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_b

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_a

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    aget v12, v2, v12

    iget-object v13, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    invoke-virtual {v13, v12}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/platform/c2;

    invoke-virtual {v1, v12}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/platform/d2;

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v12

    goto :goto_2

    :cond_0
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_9

    if-nez v13, :cond_3

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/i;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-static {v5, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_4

    :cond_2
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v15

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v15, v5}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->v(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/i;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v16, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v14

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v13}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    move-result-object v14

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    if-eqz v14, :cond_5

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_6

    :cond_5
    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v15

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-static {v15, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_6

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_7

    :cond_6
    const/4 v10, 0x0

    :goto_7
    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v14

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v14, v10}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->v(ILjava/lang/String;)V

    :cond_7
    const/16 v10, 0x8

    goto :goto_5

    :cond_8
    const/16 v5, 0x8

    goto :goto_8

    :cond_9
    const-string v1, "no value for specified key"

    invoke-static {v1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_a
    move v5, v10

    :goto_8
    shr-long/2addr v7, v5

    add-int/lit8 v11, v11, 0x1

    move v10, v5

    goto/16 :goto_1

    :cond_b
    move v5, v10

    if-ne v9, v5, :cond_d

    :cond_c
    if-eq v6, v4, :cond_d

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private final f()V
    .locals 14

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v0

    iget-object v1, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/o;->a:[J

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/ui/platform/d2;

    invoke-virtual {v10}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_0

    sget-object v11, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/a;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v10

    check-cast v10, Lkotlin/jvm/functions/Function0;

    if-eqz v10, :cond_0

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_3

    :cond_2
    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static final g(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/x0;->c(Landroidx/compose/ui/node/y0;ZILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->o:Landroidx/compose/ui/platform/c2;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->w(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->o:Landroidx/compose/ui/platform/c2;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->u(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e(Landroidx/collection/o;)V

    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->B()V

    iput-boolean v3, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    return-void
.end method

.method private final j()V
    .locals 14

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v0

    iget-object v1, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/o;->a:[J

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/ui/platform/d2;

    invoke-virtual {v10}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/a;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v10

    check-cast v10, Lkotlin/jvm/functions/Function1;

    if-eqz v10, :cond_0

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_3

    :cond_2
    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final l()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    invoke-virtual {v2}, Landroidx/collection/o;->g()Z

    move-result v2

    const-wide/16 v5, 0xff

    const/4 v7, 0x7

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v10, 0x8

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    iget-object v13, v12, Landroidx/collection/o;->c:[Ljava/lang/Object;

    iget-object v12, v12, Landroidx/collection/o;->a:[J

    array-length v14, v12

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_5

    const/4 v15, 0x0

    :goto_0
    aget-wide v3, v12, v15

    move-object/from16 v18, v12

    not-long v11, v3

    shl-long/2addr v11, v7

    and-long/2addr v11, v3

    and-long/2addr v11, v8

    cmp-long v11, v11, v8

    if-eqz v11, :cond_4

    sub-int v11, v15, v14

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_3

    and-long v19, v3, v5

    const-wide/16 v16, 0x80

    cmp-long v19, v19, v16

    if-gez v19, :cond_2

    shl-int/lit8 v19, v15, 0x3

    add-int v19, v19, v12

    aget-object v19, v13, v19

    move-object/from16 v5, v19

    check-cast v5, Landroidx/compose/ui/platform/coreshims/f;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    shr-long/2addr v3, v10

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v5, 0xff

    goto :goto_1

    :cond_3
    if-ne v11, v10, :cond_5

    :cond_4
    if-eq v15, v14, :cond_5

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v18

    const-wide/16 v5, 0xff

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/platform/coreshims/f;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/coreshims/f;->h()Landroid/view/ViewStructure;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v3}, Landroidx/compose/ui/platform/coreshims/d;->d(Ljava/util/List;)V

    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    invoke-virtual {v2}, Landroidx/collection/e0;->i()V

    :cond_7
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    invoke-virtual {v2}, Landroidx/collection/q;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    iget-object v4, v3, Landroidx/collection/q;->b:[I

    iget-object v3, v3, Landroidx/collection/q;->a:[J

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_b

    const/4 v6, 0x0

    :goto_3
    aget-wide v11, v3, v6

    not-long v13, v11

    shl-long/2addr v13, v7

    and-long/2addr v13, v11

    and-long/2addr v13, v8

    cmp-long v13, v13, v8

    if-eqz v13, :cond_a

    sub-int v13, v6, v5

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_9

    const-wide/16 v18, 0xff

    and-long v20, v11, v18

    const-wide/16 v15, 0x80

    cmp-long v17, v20, v15

    if-gez v17, :cond_8

    shl-int/lit8 v17, v6, 0x3

    add-int v17, v17, v14

    aget v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    shr-long/2addr v11, v10

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x7

    goto :goto_4

    :cond_9
    const-wide/16 v15, 0x80

    const-wide/16 v18, 0xff

    if-ne v13, v10, :cond_b

    goto :goto_5

    :cond_a
    const-wide/16 v15, 0x80

    const-wide/16 v18, 0xff

    :goto_5
    if-eq v6, v5, :cond_b

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x7

    goto :goto_3

    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v4, :cond_c

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_c
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->S0(Ljava/util/Collection;)[J

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/platform/coreshims/d;->e([J)V

    iget-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    invoke-virtual {v1}, Landroidx/collection/f0;->h()V

    :cond_d
    return-void
.end method

.method private final m(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->i:Landroidx/collection/b;

    invoke-virtual {v0, p1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j:Lkotlinx/coroutines/channels/d;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final u(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V
    .locals 13

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/collection/o;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroidx/compose/ui/platform/c2;->a()Landroidx/collection/f0;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/collection/q;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v4}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->z(Landroidx/compose/ui/semantics/SemanticsNode;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    iget-object v0, p2, Landroidx/collection/o;->b:[I

    iget-object p2, p2, Landroidx/collection/o;->a:[J

    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_5

    move v3, v2

    :goto_1
    aget-wide v4, p2, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_2
    if-ge v8, v6, :cond_3

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    aget v9, v0, v9

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroidx/collection/o;->a(I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-direct {p0, v9}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d(I)V

    :cond_2
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-ne v6, v7, :cond_5

    :cond_4
    if-eq v3, v1, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :goto_3
    if-ge v2, p2, :cond_8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/collection/o;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/collection/o;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Landroidx/compose/ui/platform/c2;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->u(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V

    goto :goto_4

    :cond_6
    const-string p1, "node not present in pruned tree before this change"

    invoke-static {p1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private final v(ILjava/lang/String;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    if-nez v0, :cond_1

    return-void

    :cond_1
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/coreshims/d;->a(J)Landroid/view/autofill/AutofillId;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/coreshims/d;->c(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string p1, "Invalid content capture ID"

    invoke-static {p1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final w(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Landroidx/collection/f0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroidx/collection/f0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/collection/o;->a(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/platform/c2;->a()Landroidx/collection/f0;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/collection/q;->a(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m(Landroidx/compose/ui/node/LayoutNode;)V

    return-void

    :cond_0
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v6

    invoke-virtual {v1, v6}, Landroidx/collection/f0;->f(I)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/platform/c2;->a()Landroidx/collection/f0;

    move-result-object v2

    iget-object v3, v2, Landroidx/collection/q;->b:[I

    iget-object v2, v2, Landroidx/collection/q;->a:[J

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_6

    move v6, v4

    :goto_1
    aget-wide v7, v2, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move v11, v4

    :goto_2
    if-ge v11, v9, :cond_4

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_3

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    aget v12, v3, v12

    invoke-virtual {v1, v12}, Landroidx/collection/q;->a(I)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m(Landroidx/compose/ui/node/LayoutNode;)V

    return-void

    :cond_3
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    if-ne v9, v10, :cond_6

    :cond_5
    if-eq v6, v5, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v4, v2, :cond_9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/collection/o;->a(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    check-cast v5, Landroidx/compose/ui/platform/c2;

    invoke-direct {v0, v3, v5}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->w(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V

    goto :goto_4

    :cond_7
    const-string v1, "node not present in pruned tree before this change"

    invoke-static {v1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method private final x()V
    .locals 14

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    move-result-object v0

    iget-object v1, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/o;->a:[J

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/ui/platform/d2;

    invoke-virtual {v10}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/semantics/a;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    move-result-object v10

    check-cast v10, Lkotlin/jvm/functions/Function1;

    if-eqz v10, :cond_0

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_3

    :cond_2
    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final y(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/platform/coreshims/f;
    .locals 13

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-static {v2}, Landroidx/compose/ui/platform/coreshims/e;->a(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/b;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->r()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/platform/coreshims/d;->a(J)Landroid/view/autofill/AutofillId;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/platform/coreshims/b;->a()Landroid/view/autofill/AutofillId;

    move-result-object v2

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroidx/compose/ui/platform/coreshims/d;->b(Landroid/view/autofill/AutofillId;J)Landroidx/compose/ui/platform/coreshims/f;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/platform/coreshims/f;->a()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v5, "android.view.contentcapture.EventTimestamp"

    iget-wide v6, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_7
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->B()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v5

    invoke-virtual {v0, v5, v1, v1, v4}, Landroidx/compose/ui/platform/coreshims/f;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_9

    const-string v1, "android.widget.TextView"

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/f;->b(Ljava/lang/String;)V

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, "\n"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lq0/a;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/f;->f(Ljava/lang/CharSequence;)V

    :cond_9
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v1, :cond_a

    const-string v4, "android.widget.EditText"

    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/coreshims/f;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/f;->f(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_b

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, "\n"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lq0/a;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/f;->c(Ljava/lang/CharSequence;)V

    :cond_b
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/semantics/f;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/f;->n()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/platform/e2;->h(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/f;->b(Ljava/lang/String;)V

    :cond_c
    invoke-static {v2}, Landroidx/compose/ui/platform/e2;->e(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/z;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/y;->i()Landroidx/compose/ui/text/d0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/d0;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo0/w;->h(J)F

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/ui/text/y;->b()Lo0/e;

    move-result-object v3

    invoke-interface {v3}, Lo0/e;->getDensity()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Landroidx/compose/ui/text/y;->b()Lo0/e;

    move-result-object v1

    invoke-interface {v1}, Lo0/n;->C0()F

    move-result v1

    mul-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v1, v1}, Landroidx/compose/ui/platform/coreshims/f;->g(FIII)V

    :cond_d
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Ly/i;

    move-result-object p1

    invoke-virtual {p1}, Ly/i;->f()F

    move-result v1

    float-to-int v6, v1

    invoke-virtual {p1}, Ly/i;->i()F

    move-result v1

    float-to-int v7, v1

    invoke-virtual {p1}, Ly/i;->k()F

    move-result v1

    float-to-int v10, v1

    invoke-virtual {p1}, Ly/i;->e()F

    move-result p1

    float-to-int v11, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/platform/coreshims/f;->d(IIIIII)V

    return-object v0
.end method

.method private final z(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->C(Landroidx/compose/ui/semantics/SemanticsNode;)V

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    move-result v0

    invoke-direct {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->y(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/platform/coreshims/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c(ILandroidx/compose/ui/platform/coreshims/f;)V

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-direct {p0, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->z(Landroidx/compose/ui/semantics/SemanticsNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;

    iget v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;-><init>(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/f;

    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/f;

    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j:Lkotlinx/coroutines/channels/d;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/q;->iterator()Lkotlinx/coroutines/channels/f;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, p0

    :goto_1
    :try_start_3
    iput-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/f;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v2}, Lkotlinx/coroutines/channels/f;->next()Ljava/lang/Object;

    invoke-virtual {v5}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {v5}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l()V

    :cond_6
    iget-boolean p1, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    if-nez p1, :cond_7

    iput-boolean v4, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    iget-object p1, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k:Landroid/os/Handler;

    iget-object v6, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object p1, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->i:Landroidx/collection/b;

    invoke-virtual {p1}, Landroidx/collection/b;->clear()V

    iget-wide v6, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->f:J

    iput-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v1, :cond_1

    return-object v1

    :cond_8
    iget-object p1, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->i:Landroidx/collection/b;

    invoke-virtual {p1}, Landroidx/collection/b;->clear()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v5, p0

    :goto_3
    iget-object v0, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->i:Landroidx/collection/b;

    invoke-virtual {v0}, Landroidx/collection/b;->clear()V

    throw p1
.end method

.method public final h()Landroidx/collection/o;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h:Z

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/platform/e2;->b(Landroidx/compose/ui/semantics/m;)Landroidx/collection/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l:Landroidx/collection/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m:J

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l:Landroidx/collection/o;

    return-object v0
.end method

.method public final i()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    sget-object v0, Landroidx/compose/ui/contentcapture/m;->b1:Landroidx/compose/ui/contentcapture/m$a;

    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/m$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    iput-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->f()V

    return-void
.end method

.method public final o([J[ILjava/util/function/Consumer;)V
    .locals 1

    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;->a:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;->c(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;[J[ILjava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/u;)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/coreshims/d;

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->z(Landroidx/compose/ui/semantics/SemanticsNode;)V

    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/u;)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->A(Landroidx/compose/ui/semantics/SemanticsNode;)V

    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    return-void
.end method

.method public final p()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    iput-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j()V

    return-void
.end method

.method public final q(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h:Z

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h:Z

    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_TRANSLATED:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    iput-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->x()V

    return-void
.end method

.method public final t(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V
    .locals 1

    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;->a:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;->d(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V

    return-void
.end method
