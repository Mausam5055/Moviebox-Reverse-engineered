.class public final Landroidx/compose/ui/input/pointer/h;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private final b:Landroid/util/SparseLongArray;

.field private final c:Landroid/util/SparseBooleanArray;

.field private final d:Ljava/util/List;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/h;->c:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/h;->d:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/ui/input/pointer/h;->e:I

    iput v0, p0, Landroidx/compose/ui/input/pointer/h;->f:I

    return-void
.end method

.method private final a(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/h;->a:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/compose/ui/input/pointer/h;->a:J

    invoke-virtual {v0, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_2

    iget-object v4, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    iget-wide v5, p0, Landroidx/compose/ui/input/pointer/h;->a:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Landroidx/compose/ui/input/pointer/h;->a:J

    invoke-virtual {v4, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/h;->c:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final b(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    iget v1, p0, Landroidx/compose/ui/input/pointer/h;->e:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Landroidx/compose/ui/input/pointer/h;->f:I

    if-eq p1, v1, :cond_2

    :cond_1
    iput v0, p0, Landroidx/compose/ui/input/pointer/h;->e:I

    iput p1, p0, Landroidx/compose/ui/input/pointer/h;->f:I

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/h;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseLongArray;->clear()V

    :cond_2
    return-void
.end method

.method private final d(Landroidx/compose/ui/input/pointer/i0;Landroid/view/MotionEvent;IZ)Landroidx/compose/ui/input/pointer/z;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroidx/compose/ui/input/pointer/h;->f(I)J

    move-result-wide v6

    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v15

    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-static {v4, v5}, Ly/h;->a(FF)J

    move-result-wide v4

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v8, v4

    invoke-static/range {v8 .. v13}, Ly/g;->g(JFFILjava/lang/Object;)J

    move-result-wide v21

    if-nez v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v4, v5}, Ly/h;->a(FF)J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/i0;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v8

    :goto_0
    move-wide v10, v4

    move-wide v12, v8

    goto :goto_1

    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_1

    sget-object v4, Landroidx/compose/ui/input/pointer/k;->a:Landroidx/compose/ui/input/pointer/k;

    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/input/pointer/k;->a(Landroid/view/MotionEvent;I)J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/i0;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v8

    goto :goto_0

    :cond_1
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/i0;->localToScreen-MK-Hz9U(J)J

    move-result-wide v8

    move-wide v12, v4

    move-wide v10, v8

    :goto_1
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    sget-object v1, Landroidx/compose/ui/input/pointer/h0;->a:Landroidx/compose/ui/input/pointer/h0$a;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/h0$a;->e()I

    move-result v1

    :goto_2
    move/from16 v16, v1

    goto :goto_3

    :cond_2
    sget-object v1, Landroidx/compose/ui/input/pointer/h0;->a:Landroidx/compose/ui/input/pointer/h0$a;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/h0$a;->a()I

    move-result v1

    goto :goto_2

    :cond_3
    sget-object v1, Landroidx/compose/ui/input/pointer/h0;->a:Landroidx/compose/ui/input/pointer/h0$a;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/h0$a;->b()I

    move-result v1

    goto :goto_2

    :cond_4
    sget-object v1, Landroidx/compose/ui/input/pointer/h0;->a:Landroidx/compose/ui/input/pointer/h0$a;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/h0$a;->c()I

    move-result v1

    goto :goto_2

    :cond_5
    sget-object v1, Landroidx/compose/ui/input/pointer/h0;->a:Landroidx/compose/ui/input/pointer/h0$a;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/h0$a;->d()I

    move-result v1

    goto :goto_2

    :cond_6
    sget-object v1, Landroidx/compose/ui/input/pointer/h0;->a:Landroidx/compose/ui/input/pointer/h0$a;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/h0$a;->e()I

    move-result v1

    goto :goto_2

    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    const/4 v5, 0x0

    move v8, v5

    :goto_4
    if-ge v8, v4, :cond_8

    invoke-virtual {v2, v3, v8}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    invoke-virtual {v2, v3, v8}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v14

    invoke-static {v9}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {v14}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {v9, v14}, Ly/h;->a(FF)J

    move-result-wide v28

    new-instance v9, Landroidx/compose/ui/input/pointer/e;

    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v24

    const/16 v30, 0x0

    move-object/from16 v23, v9

    move-wide/from16 v26, v28

    invoke-direct/range {v23 .. v30}, Landroidx/compose/ui/input/pointer/e;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/16 v8, 0x8

    if-ne v4, v8, :cond_9

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    const/16 v8, 0x9

    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    neg-float v8, v8

    const/4 v9, 0x0

    add-float/2addr v8, v9

    invoke-static {v4, v8}, Ly/h;->a(FF)J

    move-result-wide v8

    :goto_5
    move-wide/from16 v19, v8

    goto :goto_6

    :cond_9
    sget-object v4, Ly/g;->b:Ly/g$a;

    invoke-virtual {v4}, Ly/g$a;->c()J

    move-result-wide v8

    goto :goto_5

    :goto_6
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/h;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v17

    new-instance v3, Landroidx/compose/ui/input/pointer/z;

    move-object v5, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const/16 v23, 0x0

    move/from16 v14, p4

    move-object/from16 v18, v1

    invoke-direct/range {v5 .. v23}, Landroidx/compose/ui/input/pointer/z;-><init>(JJJJZFIZLjava/util/List;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method private final f(I)J
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/h;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/compose/ui/input/pointer/h;->a:J

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/v;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final g(Landroid/view/MotionEvent;I)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-ne v3, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final h(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/h;->c:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/h;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v0, v2, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    const/4 v1, -0x1

    if-ge v1, v0, :cond_3

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/input/pointer/h;->g(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/h;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MotionEvent;Landroidx/compose/ui/input/pointer/i0;)Landroidx/compose/ui/input/pointer/y;
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/h;->b(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/h;->a(Landroid/view/MotionEvent;)V

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const/16 v4, 0x8

    if-ne v0, v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget-object v6, p0, Landroidx/compose/ui/input/pointer/h;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    if-eq v0, v3, :cond_5

    const/4 v5, 0x6

    if-eq v0, v5, :cond_4

    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/h;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_8

    iget-object v7, p0, Landroidx/compose/ui/input/pointer/h;->d:Ljava/util/List;

    if-nez v1, :cond_7

    if-eq v6, v0, :cond_7

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    move v8, v3

    goto :goto_5

    :cond_7
    move v8, v2

    :goto_5
    invoke-direct {p0, p2, p1, v6, v8}, Landroidx/compose/ui/input/pointer/h;->d(Landroidx/compose/ui/input/pointer/i0;Landroid/view/MotionEvent;IZ)Landroidx/compose/ui/input/pointer/z;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/h;->h(Landroid/view/MotionEvent;)V

    new-instance p2, Landroidx/compose/ui/input/pointer/y;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/h;->d:Ljava/util/List;

    invoke-direct {p2, v0, v1, v2, p1}, Landroidx/compose/ui/input/pointer/y;-><init>(JLjava/util/List;Landroid/view/MotionEvent;)V

    return-object p2

    :cond_9
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseLongArray;->clear()V

    iget-object p1, p0, Landroidx/compose/ui/input/pointer/h;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/h;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/h;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method
