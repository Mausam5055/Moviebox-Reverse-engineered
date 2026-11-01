.class final Landroidx/media3/ui/b1;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroidx/media3/ui/SubtitleView$a;


# instance fields
.field private final a:Landroidx/media3/ui/a;

.field private final b:Landroid/webkit/WebView;

.field private c:Ljava/util/List;

.field private d:Landroidx/media3/ui/b;

.field private e:F

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/b1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/ui/b1;->c:Ljava/util/List;

    sget-object v0, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    iput-object v0, p0, Landroidx/media3/ui/b1;->d:Landroidx/media3/ui/b;

    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Landroidx/media3/ui/b1;->e:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/b1;->f:I

    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Landroidx/media3/ui/b1;->g:F

    new-instance v1, Landroidx/media3/ui/a;

    invoke-direct {v1, p1, p2}, Landroidx/media3/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/media3/ui/b1;->a:Landroidx/media3/ui/a;

    new-instance v2, Landroidx/media3/ui/b1$a;

    invoke-direct {v2, p0, p1, p2}, Landroidx/media3/ui/b1$a;-><init>(Landroidx/media3/ui/b1;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroidx/media3/ui/b1;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static b(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, -0x64

    return p0

    :cond_1
    const/16 p0, -0x32

    return p0
.end method

.method private static c(Landroid/text/Layout$Alignment;)Ljava/lang/String;
    .locals 2

    const-string v0, "center"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroidx/media3/ui/b1$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "end"

    return-object p0

    :cond_2
    const-string p0, "start"

    return-object p0
.end method

.method private static d(Landroidx/media3/ui/b;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Landroidx/media3/ui/b;->d:I

    if-eq v2, v1, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const-string p0, "unset"

    return-object p0

    :cond_0
    iget p0, p0, Landroidx/media3/ui/b;->e:I

    invoke-static {p0}, Landroidx/media3/ui/g;->b(I)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "-0.05em -0.05em 0.15em %s"

    invoke-static {p0, v1}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget p0, p0, Landroidx/media3/ui/b;->e:I

    invoke-static {p0}, Landroidx/media3/ui/g;->b(I)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "0.06em 0.08em 0.15em %s"

    invoke-static {p0, v1}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget p0, p0, Landroidx/media3/ui/b;->e:I

    invoke-static {p0}, Landroidx/media3/ui/g;->b(I)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "0.1em 0.12em 0.15em %s"

    invoke-static {p0, v1}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget p0, p0, Landroidx/media3/ui/b;->e:I

    invoke-static {p0}, Landroidx/media3/ui/g;->b(I)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {p0, v1}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e(IF)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1}, Landroidx/media3/ui/x0;->h(IFII)F

    move-result p1

    const p2, -0x800001

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const-string p1, "unset"

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "%.2fpx"

    invoke-static {p1, p2}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static f(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "horizontal-tb"

    return-object p0

    :cond_0
    const-string p0, "vertical-lr"

    return-object p0

    :cond_1
    const-string p0, "vertical-rl"

    return-object p0
.end method

.method private static h(Lu1/a;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget v2, p0, Lu1/a;->q:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    iget p0, p0, Lu1/a;->p:I

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "skewX"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "skewY"

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    aput-object v2, v1, v0

    const-string p0, "%s(%.2fdeg)"

    invoke-static {p0, v1}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private i()V
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroidx/media3/ui/b1;->d:Landroidx/media3/ui/b;

    iget v2, v2, Landroidx/media3/ui/b;->a:I

    invoke-static {v2}, Landroidx/media3/ui/g;->b(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroidx/media3/ui/b1;->f:I

    iget v4, v0, Landroidx/media3/ui/b1;->e:F

    invoke-direct {v0, v3, v4}, Landroidx/media3/ui/b1;->e(IF)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, v0, Landroidx/media3/ui/b1;->d:Landroidx/media3/ui/b;

    invoke-static {v6}, Landroidx/media3/ui/b1;->d(Landroidx/media3/ui/b;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v3, v8, v2

    const/4 v3, 0x2

    aput-object v5, v8, v3

    const/4 v5, 0x3

    aput-object v6, v8, v5

    const-string v6, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v6, v8}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v8, "default_bg"

    invoke-static {v8}, Landroidx/media3/ui/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Landroidx/media3/ui/b1;->d:Landroidx/media3/ui/b;

    iget v11, v11, Landroidx/media3/ui/b;->b:I

    invoke-static {v11}, Landroidx/media3/ui/g;->b(I)Ljava/lang/String;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v11, v12, v9

    const-string v11, "background-color:%s;"

    invoke-static {v11, v12}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v9

    :goto_0
    iget-object v11, v0, Landroidx/media3/ui/b1;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_12

    iget-object v11, v0, Landroidx/media3/ui/b1;->c:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lu1/a;

    iget v12, v11, Lu1/a;->h:F

    const v13, -0x800001

    cmpl-float v14, v12, v13

    const/high16 v15, 0x42c80000    # 100.0f

    if-eqz v14, :cond_0

    mul-float/2addr v12, v15

    goto :goto_1

    :cond_0
    const/high16 v12, 0x42480000    # 50.0f

    :goto_1
    iget v14, v11, Lu1/a;->i:I

    invoke-static {v14}, Landroidx/media3/ui/b1;->b(I)I

    move-result v14

    iget v7, v11, Lu1/a;->e:F

    cmpl-float v17, v7, v13

    const/high16 v18, 0x3f800000    # 1.0f

    const-string v5, "%.2f%%"

    if-eqz v17, :cond_4

    iget v3, v11, Lu1/a;->f:I

    if-eq v3, v2, :cond_2

    mul-float/2addr v7, v15

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-static {v5, v7}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v7, v11, Lu1/a;->p:I

    if-ne v7, v2, :cond_1

    iget v7, v11, Lu1/a;->g:I

    invoke-static {v7}, Landroidx/media3/ui/b1;->b(I)I

    move-result v7

    neg-int v7, v7

    goto :goto_2

    :cond_1
    iget v7, v11, Lu1/a;->g:I

    invoke-static {v7}, Landroidx/media3/ui/b1;->b(I)I

    move-result v7

    :goto_2
    move v13, v9

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    cmpl-float v3, v7, v3

    const-string v13, "%.2fem"

    if-ltz v3, :cond_3

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-static {v13, v7}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move v7, v9

    move v13, v7

    goto :goto_3

    :cond_3
    neg-float v3, v7

    sub-float v3, v3, v18

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-static {v13, v7}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move v13, v2

    move v7, v9

    goto :goto_3

    :cond_4
    iget v3, v0, Landroidx/media3/ui/b1;->g:F

    sub-float v18, v18, v3

    mul-float v18, v18, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-static {v5, v7}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, -0x64

    goto :goto_2

    :goto_3
    iget v4, v11, Lu1/a;->j:F

    const v19, -0x800001

    cmpl-float v19, v4, v19

    if-eqz v19, :cond_5

    mul-float/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v4, v15, v9

    invoke-static {v5, v15}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    const-string v4, "fit-content"

    :goto_4
    iget-object v5, v11, Lu1/a;->b:Landroid/text/Layout$Alignment;

    invoke-static {v5}, Landroidx/media3/ui/b1;->c(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v5

    iget v15, v11, Lu1/a;->p:I

    invoke-static {v15}, Landroidx/media3/ui/b1;->f(I)Ljava/lang/String;

    move-result-object v15

    iget v9, v11, Lu1/a;->n:I

    iget v2, v11, Lu1/a;->o:F

    invoke-direct {v0, v9, v2}, Landroidx/media3/ui/b1;->e(IF)Ljava/lang/String;

    move-result-object v2

    iget-boolean v9, v11, Lu1/a;->l:Z

    if-eqz v9, :cond_6

    iget v9, v11, Lu1/a;->m:I

    goto :goto_5

    :cond_6
    iget-object v9, v0, Landroidx/media3/ui/b1;->d:Landroidx/media3/ui/b;

    iget v9, v9, Landroidx/media3/ui/b;->c:I

    :goto_5
    invoke-static {v9}, Landroidx/media3/ui/g;->b(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v20, v7

    iget v7, v11, Lu1/a;->p:I

    const-string v21, "right"

    const-string v22, "top"

    const-string v23, "left"

    move/from16 v24, v14

    const/4 v14, 0x1

    if-eq v7, v14, :cond_b

    const/4 v14, 0x2

    if-eq v7, v14, :cond_8

    if-eqz v13, :cond_7

    const-string v22, "bottom"

    :cond_7
    const/4 v13, 0x2

    goto :goto_8

    :cond_8
    if-eqz v13, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    move-object/from16 v21, v23

    :cond_a
    :goto_7
    move-object/from16 v23, v22

    const/4 v13, 0x2

    move-object/from16 v22, v21

    goto :goto_8

    :cond_b
    if-eqz v13, :cond_a

    goto :goto_6

    :goto_8
    if-eq v7, v13, :cond_d

    const/4 v13, 0x1

    if-ne v7, v13, :cond_c

    goto :goto_9

    :cond_c
    const-string v7, "width"

    move/from16 v14, v24

    goto :goto_a

    :cond_d
    :goto_9
    const-string v7, "height"

    move/from16 v14, v20

    move/from16 v20, v24

    :goto_a
    iget-object v13, v11, Lu1/a;->a:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v13, v0}, Landroidx/media3/ui/r0;->a(Ljava/lang/CharSequence;F)Landroidx/media3/ui/r0$b;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v24, v13

    move-object/from16 v13, v21

    check-cast v13, Ljava/lang/String;

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_c

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    move-object/from16 v13, v24

    move-object/from16 v0, v25

    goto :goto_b

    :cond_10
    move-object/from16 v25, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11}, Landroidx/media3/ui/b1;->h(Lu1/a;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v6

    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v0, v6, v19

    const/4 v0, 0x1

    aput-object v23, v6, v0

    const/4 v0, 0x2

    aput-object v12, v6, v0

    const/4 v12, 0x3

    aput-object v22, v6, v12

    const/16 v16, 0x4

    aput-object v3, v6, v16

    const/4 v3, 0x5

    aput-object v7, v6, v3

    const/4 v3, 0x6

    aput-object v4, v6, v3

    const/4 v3, 0x7

    aput-object v5, v6, v3

    const/16 v3, 0x8

    aput-object v15, v6, v3

    const/16 v3, 0x9

    aput-object v2, v6, v3

    const/16 v2, 0xa

    aput-object v9, v6, v2

    const/16 v2, 0xb

    aput-object v13, v6, v2

    const/16 v2, 0xc

    aput-object v14, v6, v2

    const/16 v2, 0xd

    aput-object v20, v6, v2

    const-string v2, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v2, v6}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<span class=\'%s\'>"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-static {v2, v4}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lu1/a;->c:Landroid/text/Layout$Alignment;

    const-string v4, "</span>"

    if-eqz v2, :cond_11

    invoke-static {v2}, Landroidx/media3/ui/b1;->c(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v5

    const-string v2, "<span style=\'display:inline-block; text-align:%s;\'>"

    invoke-static {v2, v6}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    iget-object v2, v2, Landroidx/media3/ui/r0$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_11
    move-object/from16 v2, v25

    iget-object v2, v2, Landroidx/media3/ui/r0$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    add-int/2addr v10, v2

    const v4, 0x3f99999a    # 1.2f

    const/4 v9, 0x0

    move v3, v0

    move v5, v12

    move/from16 v7, v16

    move-object/from16 v6, v21

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_12
    move-object/from16 v21, v6

    const-string v0, "</div></body></html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><head><style>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_13
    const-string v2, "</style></head>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/media3/ui/b1;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "base64"

    invoke-virtual {v2, v1, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Landroidx/media3/ui/b;FIF)V
    .locals 6

    iput-object p2, p0, Landroidx/media3/ui/b1;->d:Landroidx/media3/ui/b;

    iput p3, p0, Landroidx/media3/ui/b1;->e:F

    iput p4, p0, Landroidx/media3/ui/b1;->f:I

    iput p5, p0, Landroidx/media3/ui/b1;->g:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu1/a;

    iget-object v4, v3, Lu1/a;->d:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/b1;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iput-object v0, p0, Landroidx/media3/ui/b1;->c:Ljava/util/List;

    invoke-direct {p0}, Landroidx/media3/ui/b1;->i()V

    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/b1;->a:Landroidx/media3/ui/a;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/ui/a;->a(Ljava/util/List;Landroidx/media3/ui/b;FIF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/b1;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/b1;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroidx/media3/ui/b1;->i()V

    :cond_0
    return-void
.end method
