.class Landroidx/constraintlayout/motion/widget/q;
.super Ljava/lang/Object;


# static fields
.field private static final G:[[F

.field private static final H:[[F


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field i:F

.field j:F

.field private k:I

.field l:Z

.field private m:F

.field private n:F

.field private o:Z

.field private p:[F

.field private q:[I

.field private r:F

.field private s:F

.field private final t:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private u:F

.field private v:F

.field private w:Z

.field private x:F

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    new-array v6, v0, [F

    fill-array-data v6, :array_5

    new-array v7, v0, [F

    fill-array-data v7, :array_6

    const/4 v8, 0x7

    new-array v8, v8, [[F

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    aput-object v3, v8, v0

    const/4 v2, 0x3

    aput-object v4, v8, v2

    const/4 v3, 0x4

    aput-object v5, v8, v3

    const/4 v4, 0x5

    aput-object v6, v8, v4

    const/4 v5, 0x6

    aput-object v7, v8, v5

    sput-object v8, Landroidx/constraintlayout/motion/widget/q;->G:[[F

    new-array v6, v0, [F

    fill-array-data v6, :array_7

    new-array v7, v0, [F

    fill-array-data v7, :array_8

    new-array v8, v0, [F

    fill-array-data v8, :array_9

    new-array v10, v0, [F

    fill-array-data v10, :array_a

    new-array v11, v0, [F

    fill-array-data v11, :array_b

    new-array v12, v0, [F

    fill-array-data v12, :array_c

    new-array v5, v5, [[F

    aput-object v6, v5, v9

    aput-object v7, v5, v1

    aput-object v8, v5, v0

    aput-object v10, v5, v2

    aput-object v11, v5, v3

    aput-object v12, v5, v4

    sput-object v5, Landroidx/constraintlayout/motion/widget/q;->H:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/q;->a:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/q;->b:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->d:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->f:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/q;->g:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/q;->h:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/q;->i:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/q;->j:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->k:I

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->l:Z

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->n:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    const/4 v2, 0x2

    new-array v3, v2, [F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/q;->u:F

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/q;->v:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/q;->w:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->x:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/q;->y:I

    const/high16 v2, 0x41200000    # 10.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/q;->z:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/q;->A:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->B:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->C:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->D:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/q;->E:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/q;->F:I

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/q;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b(Landroid/content/res/TypedArray;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_14

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorId:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->d:I

    goto/16 :goto_1

    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorSide:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->a:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->a:I

    sget-object v4, Landroidx/constraintlayout/motion/widget/q;->G:[[F

    aget-object v3, v4, v3

    aget v4, v3, v1

    iput v4, p0, Landroidx/constraintlayout/motion/widget/q;->h:F

    aget v3, v3, v5

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->g:F

    goto/16 :goto_1

    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragDirection:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->b:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->b:I

    sget-object v4, Landroidx/constraintlayout/motion/widget/q;->H:[[F

    array-length v6, v4

    if-ge v3, v6, :cond_2

    aget-object v3, v4, v3

    aget v4, v3, v1

    iput v4, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    aget v3, v3, v5

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->n:F

    goto/16 :goto_1

    :cond_2
    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->n:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/q;->l:Z

    goto/16 :goto_1

    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxVelocity:I

    if-ne v3, v4, :cond_4

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->u:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->u:F

    goto/16 :goto_1

    :cond_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxAcceleration:I

    if-ne v3, v4, :cond_5

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->v:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->v:F

    goto/16 :goto_1

    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v3, v4, :cond_6

    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/q;->w:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/q;->w:Z

    goto/16 :goto_1

    :cond_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragScale:I

    if-ne v3, v4, :cond_7

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->x:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->x:F

    goto/16 :goto_1

    :cond_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragThreshold:I

    if-ne v3, v4, :cond_8

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->z:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->z:F

    goto/16 :goto_1

    :cond_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchRegionId:I

    if-ne v3, v4, :cond_9

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    goto/16 :goto_1

    :cond_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_onTouchUp:I

    if-ne v3, v4, :cond_a

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->c:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->c:I

    goto/16 :goto_1

    :cond_a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_nestedScrollFlags:I

    if-ne v3, v4, :cond_b

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->y:I

    goto :goto_1

    :cond_b
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_limitBoundsTo:I

    if-ne v3, v4, :cond_c

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->f:I

    goto :goto_1

    :cond_c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_rotationCenterId:I

    if-ne v3, v4, :cond_d

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->k:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->k:I

    goto :goto_1

    :cond_d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springDamping:I

    if-ne v3, v4, :cond_e

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->A:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->A:F

    goto :goto_1

    :cond_e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springMass:I

    if-ne v3, v4, :cond_f

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->B:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->B:F

    goto :goto_1

    :cond_f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springStiffness:I

    if-ne v3, v4, :cond_10

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->C:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->C:F

    goto :goto_1

    :cond_10
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springStopThreshold:I

    if-ne v3, v4, :cond_11

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->D:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->D:F

    goto :goto_1

    :cond_11
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springBoundary:I

    if-ne v3, v4, :cond_12

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->E:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->E:I

    goto :goto_1

    :cond_12
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_autoCompleteMode:I

    if-ne v3, v4, :cond_13

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->F:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/q;->F:I

    :cond_13
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/q;->b(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method A()V
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find TouchAnchorId @id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/q;->d:I

    invoke-static {v2, v3}, Landroidx/constraintlayout/motion/widget/a;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchResponse"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    new-instance v1, Landroidx/constraintlayout/motion/widget/q$a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/q$a;-><init>(Landroidx/constraintlayout/motion/widget/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroidx/constraintlayout/motion/widget/q$b;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/q$b;-><init>(Landroidx/constraintlayout/motion/widget/q;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$e;)V

    :cond_2
    return-void
.end method

.method a(FF)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    mul-float/2addr p1, v0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->n:F

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->F:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->y:I

    return v0
.end method

.method f(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->f:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method g()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->v:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->u:F

    return v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->w:Z

    return v0
.end method

.method j(FF)F
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v3

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/q;->d:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->h:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/q;->g:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q(IFFF[F)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const v3, 0x33d6bf95    # 1.0E-7f

    if-eqz v2, :cond_1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    const/4 v2, 0x0

    aget v4, p2, v2

    cmpl-float v1, v4, v1

    if-nez v1, :cond_0

    aput v3, p2, v2

    :cond_0
    mul-float/2addr p1, v0

    aget p2, p2, v2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    const/4 v0, 0x1

    aget v2, p1, v0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_2

    aput v3, p1, v0

    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/q;->n:F

    mul-float/2addr p2, v1

    aget p1, p1, v0

    div-float p1, p2, p1

    :goto_0
    return p1
.end method

.method public k()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->E:I

    return v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->A:F

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->B:F

    return v0
.end method

.method public n()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->C:F

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->D:F

    return v0
.end method

.method p(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method q()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    return v0
.end method

.method r()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    return v0
.end method

.method s(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$e;ILandroidx/constraintlayout/motion/widget/p;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/q;->l:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p4}, Landroidx/constraintlayout/motion/widget/q;->t(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$e;ILandroidx/constraintlayout/motion/widget/p;)V

    return-void

    :cond_0
    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    const/4 v7, 0x6

    const/4 v8, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v3, v10, :cond_e

    const/4 v12, 0x2

    if-eq v3, v12, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v12, v0, Landroidx/constraintlayout/motion/widget/q;->s:F

    sub-float/2addr v3, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    iget v13, v0, Landroidx/constraintlayout/motion/widget/q;->r:F

    sub-float/2addr v12, v13

    iget v13, v0, Landroidx/constraintlayout/motion/widget/q;->m:F

    mul-float/2addr v13, v12

    iget v14, v0, Landroidx/constraintlayout/motion/widget/q;->n:F

    mul-float/2addr v14, v3

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget v14, v0, Landroidx/constraintlayout/motion/widget/q;->z:F

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_2

    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    if-eqz v13, :cond_1b

    :cond_2
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v13

    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    if-nez v14, :cond_3

    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v14, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_3
    iget v15, v0, Landroidx/constraintlayout/motion/widget/q;->d:I

    if-eq v15, v8, :cond_4

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v8, v0, Landroidx/constraintlayout/motion/widget/q;->h:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->g:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    move/from16 v16, v13

    move/from16 v17, v8

    move/from16 v18, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q(IFFF[F)V

    goto :goto_0

    :cond_4
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/q;->n:F

    mul-float/2addr v8, v5

    aput v8, v6, v10

    iget v8, v0, Landroidx/constraintlayout/motion/widget/q;->m:F

    mul-float/2addr v5, v8

    aput v5, v6, v4

    :goto_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->m:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v8, v6, v4

    mul-float/2addr v5, v8

    iget v8, v0, Landroidx/constraintlayout/motion/widget/q;->n:F

    aget v6, v6, v10

    mul-float/2addr v8, v6

    add-float/2addr v5, v8

    iget v6, v0, Landroidx/constraintlayout/motion/widget/q;->x:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v5, v14

    const v6, 0x3c23d70a    # 0.01f

    if-gez v5, :cond_5

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aput v6, v5, v4

    aput v6, v5, v10

    :cond_5
    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->m:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_6

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v3, v3, v4

    div-float/2addr v12, v3

    goto :goto_1

    :cond_6
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v5, v5, v10

    div-float v12, v3, v5

    :goto_1
    add-float/2addr v13, v12

    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->c:I

    if-ne v5, v7, :cond_7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_7
    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->c:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8

    const v5, 0x3f7d70a4    # 0.99f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_8
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v5

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_d

    cmpl-float v6, v5, v11

    if-eqz v6, :cond_9

    cmpl-float v5, v5, v9

    if-nez v5, :cond_b

    :cond_9
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v6, :cond_a

    move v6, v10

    goto :goto_2

    :cond_a
    move v6, v4

    :goto_2
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->L(Z)V

    :cond_b
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/16 v3, 0x3e8

    invoke-interface {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c()F

    move-result v3

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b()F

    move-result v1

    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->m:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_c

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v1, v1, v4

    div-float/2addr v3, v1

    goto :goto_3

    :cond_c
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v3, v3, v10

    div-float v3, v1, v3

    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    goto :goto_4

    :cond_d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v11, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/q;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/q;->s:F

    goto/16 :goto_9

    :cond_e
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    const/16 v2, 0x3e8

    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c()F

    move-result v2

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b()F

    move-result v1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v3

    iget v13, v0, Landroidx/constraintlayout/motion/widget/q;->d:I

    if-eq v13, v8, :cond_f

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v15, v0, Landroidx/constraintlayout/motion/widget/q;->h:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->g:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    move v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q(IFFF[F)V

    goto :goto_5

    :cond_f
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/q;->n:F

    mul-float/2addr v8, v5

    aput v8, v6, v10

    iget v8, v0, Landroidx/constraintlayout/motion/widget/q;->m:F

    mul-float/2addr v5, v8

    aput v5, v6, v4

    :goto_5
    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->m:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v4, v6, v4

    aget v6, v6, v10

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_10

    div-float/2addr v2, v4

    goto :goto_6

    :cond_10
    div-float v2, v1, v6

    :goto_6
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_11

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, v2, v1

    add-float/2addr v1, v3

    goto :goto_7

    :cond_11
    move v1, v3

    :goto_7
    cmpl-float v4, v1, v11

    if-eqz v4, :cond_18

    cmpl-float v4, v1, v9

    if-eqz v4, :cond_18

    iget v4, v0, Landroidx/constraintlayout/motion/widget/q;->c:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_18

    float-to-double v5, v1

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v5, v12

    if-gez v1, :cond_12

    move v1, v11

    goto :goto_8

    :cond_12
    move v1, v9

    :goto_8
    if-ne v4, v7, :cond_14

    add-float v1, v3, v2

    cmpg-float v1, v1, v11

    if-gez v1, :cond_13

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :cond_13
    move v1, v9

    :cond_14
    iget v4, v0, Landroidx/constraintlayout/motion/widget/q;->c:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_16

    add-float v1, v3, v2

    cmpl-float v1, v1, v9

    if-lez v1, :cond_15

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v2, v1

    :cond_15
    move v1, v11

    :cond_16
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->c:I

    invoke-virtual {v4, v5, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    cmpl-float v1, v11, v3

    if-gez v1, :cond_17

    cmpg-float v1, v9, v3

    if-gtz v1, :cond_1b

    :cond_17
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_9

    :cond_18
    cmpl-float v2, v11, v1

    if-gez v2, :cond_19

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_1b

    :cond_19
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_9

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/q;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/q;->s:F

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    :cond_1b
    :goto_9
    return-void
.end method

.method t(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$e;ILandroidx/constraintlayout/motion/widget/p;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, -0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    if-eq v3, v10, :cond_d

    const/4 v11, 0x2

    if-eq v3, v11, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v9

    iget v12, v0, Landroidx/constraintlayout/motion/widget/q;->k:I

    if-eq v12, v6, :cond_1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    aget v11, v11, v4

    int-to-float v11, v11

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v9

    add-float/2addr v11, v12

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    aget v12, v12, v10

    int-to-float v12, v12

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v13, v3

    int-to-float v3, v13

    div-float/2addr v3, v9

    add-float/2addr v3, v12

    move/from16 v22, v11

    move v11, v3

    move/from16 v3, v22

    goto :goto_0

    :cond_1
    iget v12, v0, Landroidx/constraintlayout/motion/widget/q;->d:I

    if-eq v12, v6, :cond_3

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v13, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->R(I)Landroidx/constraintlayout/motion/widget/m;

    move-result-object v12

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/m;->h()I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_2

    const-string v9, "TouchResponse"

    const-string v12, "could not find view to animate to"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    invoke-virtual {v3, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v11, v13

    int-to-float v11, v11

    div-float/2addr v11, v9

    add-float/2addr v3, v11

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    aget v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v13, v12

    int-to-float v12, v13

    div-float/2addr v12, v9

    add-float/2addr v11, v12

    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sub-float/2addr v9, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    sub-float/2addr v12, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    sub-float/2addr v13, v11

    float-to-double v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    sub-float/2addr v15, v3

    move/from16 p4, v9

    float-to-double v8, v15

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    iget v13, v0, Landroidx/constraintlayout/motion/widget/q;->s:F

    sub-float/2addr v13, v11

    float-to-double v13, v13

    iget v11, v0, Landroidx/constraintlayout/motion/widget/q;->r:F

    sub-float/2addr v11, v3

    float-to-double v6, v11

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v6, v8, v6

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v13

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v13

    double-to-float v6, v6

    const/high16 v7, 0x43a50000    # 330.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    sub-float/2addr v6, v5

    goto :goto_1

    :cond_4
    const/high16 v7, -0x3c5b0000    # -330.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_5

    add-float/2addr v6, v5

    :cond_5
    :goto_1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v13, v7

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v7, v13, v16

    if-gtz v7, :cond_6

    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    if-eqz v7, :cond_1b

    :cond_6
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    if-nez v11, :cond_7

    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_7
    iget v11, v0, Landroidx/constraintlayout/motion/widget/q;->d:I

    const/4 v3, -0x1

    if-eq v11, v3, :cond_8

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->h:F

    iget v13, v0, Landroidx/constraintlayout/motion/widget/q;->g:F

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    move-object/from16 v16, v3

    move/from16 v17, v11

    move/from16 v18, v7

    move/from16 v19, v5

    move/from16 v20, v13

    move-object/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q(IFFF[F)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v5, v3, v10

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v5, v13

    aput v5, v3, v10

    goto :goto_2

    :cond_8
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aput v5, v3, v10

    :goto_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/q;->x:F

    mul-float/2addr v6, v3

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v3, v3, v10

    div-float/2addr v6, v3

    add-float/2addr v7, v6

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    cmpl-float v11, v5, v7

    if-eqz v11, :cond_c

    cmpl-float v6, v7, v6

    if-eqz v6, :cond_9

    cmpl-float v3, v7, v3

    if-nez v3, :cond_b

    :cond_9
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v6, :cond_a

    move v4, v10

    :cond_a
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->L(Z)V

    :cond_b
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/16 v3, 0x3e8

    invoke-interface {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c()F

    move-result v3

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b()F

    move-result v1

    float-to-double v4, v1

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    sub-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v10, v3

    move/from16 v9, p4

    float-to-double v3, v9

    float-to-double v5, v12

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    div-double/2addr v10, v3

    double-to-float v1, v10

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    goto :goto_3

    :cond_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v3, 0x0

    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/q;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/q;->s:F

    goto/16 :goto_a

    :cond_d
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    const/16 v6, 0x10

    invoke-interface {v1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c()F

    move-result v6

    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b()F

    move-result v1

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v9

    iget v12, v0, Landroidx/constraintlayout/motion/widget/q;->k:I

    const/4 v3, -0x1

    if-eq v12, v3, :cond_e

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    aget v4, v11, v4

    int-to-float v4, v4

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v9

    add-float/2addr v4, v11

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    aget v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    :goto_4
    add-int/2addr v12, v8

    int-to-float v8, v12

    div-float/2addr v8, v9

    add-float/2addr v11, v8

    move v8, v4

    goto :goto_5

    :cond_e
    iget v12, v0, Landroidx/constraintlayout/motion/widget/q;->d:I

    const/4 v3, -0x1

    if-eq v12, v3, :cond_f

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->R(I)Landroidx/constraintlayout/motion/widget/m;

    move-result-object v8

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/m;->h()I

    move-result v8

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    aget v4, v11, v4

    int-to-float v4, v4

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v9

    add-float/2addr v4, v11

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/q;->q:[I

    aget v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_4

    :cond_f
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v2, v11

    float-to-double v8, v2

    float-to-double v11, v4

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    iget v11, v0, Landroidx/constraintlayout/motion/widget/q;->d:I

    const/4 v3, -0x1

    if-eq v11, v3, :cond_10

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->h:F

    iget v12, v0, Landroidx/constraintlayout/motion/widget/q;->g:F

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    move-object/from16 v16, v3

    move/from16 v17, v11

    move/from16 v18, v7

    move/from16 v19, v5

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q(IFFF[F)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v5, v3, v10

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    double-to-float v5, v11

    aput v5, v3, v10

    goto :goto_6

    :cond_10
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aput v5, v3, v10

    :goto_6
    add-float/2addr v1, v2

    float-to-double v1, v1

    add-float/2addr v6, v4

    float-to-double v3, v6

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    sub-double/2addr v1, v8

    double-to-float v1, v1

    const/high16 v2, 0x427a0000    # 62.5f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    if-nez v2, :cond_11

    mul-float v2, v1, v3

    iget v4, v0, Landroidx/constraintlayout/motion/widget/q;->x:F

    mul-float/2addr v2, v4

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v4, v4, v10

    div-float/2addr v2, v4

    add-float/2addr v2, v7

    :goto_7
    const/4 v4, 0x0

    goto :goto_8

    :cond_11
    move v2, v7

    goto :goto_7

    :goto_8
    cmpl-float v5, v2, v4

    if-eqz v5, :cond_18

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_18

    iget v4, v0, Landroidx/constraintlayout/motion/widget/q;->c:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_18

    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->x:F

    mul-float/2addr v1, v5

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v5, v5, v10

    div-float/2addr v1, v5

    float-to-double v5, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v5, v8

    if-gez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_9

    :cond_12
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_9
    const/4 v5, 0x6

    if-ne v4, v5, :cond_14

    add-float v2, v7, v1

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_13

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :cond_13
    const/high16 v2, 0x3f800000    # 1.0f

    :cond_14
    iget v4, v0, Landroidx/constraintlayout/motion/widget/q;->c:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_16

    add-float v2, v7, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_15

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    :cond_15
    const/4 v2, 0x0

    :cond_16
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v0, Landroidx/constraintlayout/motion/widget/q;->c:I

    mul-float/2addr v1, v3

    invoke-virtual {v4, v5, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    const/4 v1, 0x0

    cmpl-float v1, v1, v7

    if-gez v1, :cond_17

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_1b

    :cond_17
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    cmpl-float v1, v1, v2

    if-gez v1, :cond_19

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1b

    :cond_19
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_a

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/q;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/q;->s:F

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    :cond_1b
    :goto_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rotation"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/q;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method u(FF)V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    const/4 v7, 0x1

    if-nez v1, :cond_0

    iput-boolean v7, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/q;->d:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->h:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/q;->g:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q(IFFF[F)V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    mul-float/2addr v1, v4

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->n:F

    aget v2, v2, v7

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    const v2, 0x3c23d70a    # 0.01f

    aput v2, v1, v3

    aput v2, v1, v7

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_2

    mul-float/2addr p1, v1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget p2, p2, v3

    div-float/2addr p1, p2

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/constraintlayout/motion/widget/q;->n:F

    mul-float/2addr p2, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget p1, p1, v7

    div-float p1, p2, p1

    :goto_0
    add-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_3
    return-void
.end method

.method v(FF)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/q;->d:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/q;->h:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/q;->g:F

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q(IFFF[F)V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/q;->p:[F

    aget v4, v3, v0

    iget v5, p0, Landroidx/constraintlayout/motion/widget/q;->n:F

    const/4 v6, 0x1

    aget v3, v3, v6

    const/4 v7, 0x0

    cmpl-float v8, v2, v7

    if-eqz v8, :cond_0

    mul-float/2addr p1, v2

    div-float/2addr p1, v4

    goto :goto_0

    :cond_0
    mul-float/2addr p2, v5

    div-float p1, p2, v3

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_1

    const/high16 p2, 0x40400000    # 3.0f

    div-float p2, p1, p2

    add-float/2addr v1, p2

    :cond_1
    cmpl-float p2, v1, v7

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, p2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/q;->c:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    move v0, v6

    :cond_3
    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->t:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v1, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v4

    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    move v7, p2

    :goto_2
    invoke-virtual {v0, v3, v7, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    :cond_5
    return-void
.end method

.method w(FF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/q;->r:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/q;->s:F

    return-void
.end method

.method public x(Z)V
    .locals 7

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/constraintlayout/motion/widget/q;->H:[[F

    aget-object v1, p1, v1

    aput-object v1, p1, v2

    aget-object v1, p1, v4

    aput-object v1, p1, v5

    sget-object p1, Landroidx/constraintlayout/motion/widget/q;->G:[[F

    aget-object v1, p1, v4

    aput-object v1, p1, v5

    aget-object v1, p1, v3

    aput-object v1, p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/constraintlayout/motion/widget/q;->H:[[F

    aget-object v6, p1, v4

    aput-object v6, p1, v2

    aget-object v1, p1, v1

    aput-object v1, p1, v5

    sget-object p1, Landroidx/constraintlayout/motion/widget/q;->G:[[F

    aget-object v1, p1, v3

    aput-object v1, p1, v5

    aget-object v1, p1, v4

    aput-object v1, p1, v0

    :goto_0
    sget-object p1, Landroidx/constraintlayout/motion/widget/q;->G:[[F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->a:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    aget v1, p1, v0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->h:F

    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/q;->g:F

    iget p1, p0, Landroidx/constraintlayout/motion/widget/q;->b:I

    sget-object v1, Landroidx/constraintlayout/motion/widget/q;->H:[[F

    array-length v2, v1

    if-lt p1, v2, :cond_1

    return-void

    :cond_1
    aget-object p1, v1, p1

    aget v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/q;->m:F

    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/q;->n:F

    return-void
.end method

.method public y(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:I

    return-void
.end method

.method z(FF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/q;->r:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/q;->s:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    return-void
.end method
