.class public Lcom/noober/background/drawable/GradientDrawableCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private gradientState:I

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    iput-object p1, p0, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    return-void
.end method

.method constructor <init>(Landroid/content/res/TypedArray;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iput p2, p0, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    return-void
.end method

.method private hasSetRadius([F)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public bridge synthetic create()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/noober/background/drawable/GradientDrawableCreator;->create()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroid/graphics/drawable/GradientDrawable;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    move v10, v7

    move v13, v10

    move/from16 v17, v13

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    if-ge v7, v5, :cond_94

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    sget v4, Lcom/noober/background/R$styleable;->background_bl_shape:I

    if-ne v5, v4, :cond_0

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto/16 :goto_c

    :cond_0
    sget v4, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    if-ne v5, v4, :cond_1

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    goto/16 :goto_c

    :cond_1
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_radius:I

    if-ne v5, v4, :cond_2

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto/16 :goto_c

    :cond_2
    const/4 v6, 0x0

    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_bottomLeftRadius:I

    const/16 v25, 0x7

    const/16 v22, 0x6

    if-ne v5, v4, :cond_3

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v22

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v25

    goto/16 :goto_c

    :cond_3
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_bottomRightRadius:I

    const/16 v26, 0x4

    if-ne v5, v4, :cond_4

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v26

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x5

    aput v4, v0, v5

    goto/16 :goto_c

    :cond_4
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_topLeftRadius:I

    if-ne v5, v4, :cond_5

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v22, 0x0

    aput v4, v0, v22

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x1

    aput v4, v0, v5

    goto/16 :goto_c

    :cond_5
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_topRightRadius:I

    if-ne v5, v4, :cond_6

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v22, 0x2

    aput v4, v0, v22

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x3

    aput v4, v0, v5

    goto/16 :goto_c

    :cond_6
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_leftRadius:I

    if-ne v5, v4, :cond_7

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v23, 0x0

    aput v4, v0, v23

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v23, 0x1

    aput v4, v0, v23

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v22

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v25

    goto/16 :goto_c

    :cond_7
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_topRadius:I

    if-ne v5, v4, :cond_8

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v22, 0x0

    aput v4, v0, v22

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v22, 0x1

    aput v4, v0, v22

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v24, 0x2

    aput v4, v0, v24

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v23, 0x3

    aput v4, v0, v23

    goto/16 :goto_c

    :cond_8
    const/16 v23, 0x3

    const/16 v24, 0x2

    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_rightRadius:I

    if-ne v5, v4, :cond_9

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v24

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v23

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v26

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x5

    aput v4, v0, v5

    goto/16 :goto_c

    :cond_9
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_bottomRadius:I

    if-ne v5, v4, :cond_a

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v26

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v23, 0x5

    aput v4, v0, v23

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v22

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v25

    goto/16 :goto_c

    :cond_a
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_angle:I

    const/4 v6, -0x1

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_angle:I

    if-ne v5, v4, :cond_b

    goto/16 :goto_b

    :cond_b
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerX:I

    if-ne v5, v4, :cond_c

    goto/16 :goto_a

    :cond_c
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerY:I

    if-ne v5, v4, :cond_d

    goto/16 :goto_9

    :cond_d
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerColor:I

    if-ne v5, v4, :cond_e

    goto/16 :goto_8

    :cond_e
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_endColor:I

    if-ne v5, v4, :cond_f

    goto/16 :goto_7

    :cond_f
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_startColor:I

    if-ne v5, v4, :cond_10

    goto/16 :goto_6

    :cond_10
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_gradientRadius:I

    if-ne v5, v4, :cond_11

    goto/16 :goto_5

    :cond_11
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_type:I

    if-ne v5, v4, :cond_12

    goto/16 :goto_2

    :cond_12
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_useLevel:I

    if-ne v5, v4, :cond_13

    goto/16 :goto_1

    :cond_13
    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_left:I

    if-ne v5, v4, :cond_14

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto/16 :goto_c

    :cond_14
    const/4 v6, 0x0

    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_top:I

    if-ne v5, v4, :cond_15

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    goto/16 :goto_c

    :cond_15
    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_right:I

    if-ne v5, v4, :cond_16

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_c

    :cond_16
    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_bottom:I

    if-ne v5, v4, :cond_17

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_c

    :cond_17
    sget v4, Lcom/noober/background/R$styleable;->background_bl_size_width:I

    if-ne v5, v4, :cond_18

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    goto/16 :goto_c

    :cond_18
    sget v4, Lcom/noober/background/R$styleable;->background_bl_size_height:I

    if-ne v5, v4, :cond_19

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    goto/16 :goto_c

    :cond_19
    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    if-ne v5, v4, :cond_1a

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    goto/16 :goto_c

    :cond_1a
    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_color:I

    if-ne v5, v4, :cond_1b

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    move v13, v4

    goto/16 :goto_c

    :cond_1b
    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_dashWidth:I

    if-ne v5, v4, :cond_1c

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    goto/16 :goto_c

    :cond_1c
    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_dashGap:I

    if-ne v5, v4, :cond_93

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    goto/16 :goto_c

    :cond_1d
    :goto_1
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_1e

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_1e
    const v6, 0x101009f

    if-ne v4, v6, :cond_1f

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_useLevel:I

    if-ne v5, v6, :cond_1f

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_1f
    const v6, -0x101009f

    if-ne v4, v6, :cond_20

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_useLevel:I

    if-ne v5, v6, :cond_20

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_20
    const v6, 0x10100a0

    if-ne v4, v6, :cond_21

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_useLevel:I

    if-ne v5, v6, :cond_21

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_21
    const v6, -0x10100a0

    if-ne v4, v6, :cond_22

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_useLevel:I

    if-ne v5, v6, :cond_22

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_22
    const v6, 0x101009e

    if-ne v4, v6, :cond_23

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_useLevel:I

    if-ne v5, v6, :cond_23

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_23
    const v6, -0x101009e

    if-ne v4, v6, :cond_24

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_useLevel:I

    if-ne v5, v6, :cond_24

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_24
    const v6, 0x10100a1

    if-ne v4, v6, :cond_25

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_useLevel:I

    if-ne v5, v6, :cond_25

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_25
    const v6, -0x10100a1

    if-ne v4, v6, :cond_26

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_useLevel:I

    if-ne v5, v6, :cond_26

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_26
    const v6, 0x10100a7

    if-ne v4, v6, :cond_27

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_useLevel:I

    if-ne v5, v6, :cond_27

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_27
    const v6, -0x10100a7

    if-ne v4, v6, :cond_28

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_useLevel:I

    if-ne v5, v6, :cond_28

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_28
    const v6, 0x101009c

    if-ne v4, v6, :cond_29

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_useLevel:I

    if-ne v5, v6, :cond_29

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_29
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_useLevel:I

    if-ne v5, v4, :cond_93

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_2a
    :goto_2
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_2c

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    :cond_2b
    :goto_3
    move/from16 v4, v20

    goto/16 :goto_4

    :cond_2c
    const v6, 0x101009f

    if-ne v4, v6, :cond_2d

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_type:I

    if-ne v5, v6, :cond_2d

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_2d
    const v6, -0x101009f

    if-ne v4, v6, :cond_2e

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_type:I

    if-ne v5, v6, :cond_2e

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_2e
    const v6, 0x10100a0

    if-ne v4, v6, :cond_2f

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_type:I

    if-ne v5, v6, :cond_2f

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_2f
    const v6, -0x10100a0

    if-ne v4, v6, :cond_30

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_type:I

    if-ne v5, v6, :cond_30

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_30
    const v6, 0x101009e

    if-ne v4, v6, :cond_31

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_type:I

    if-ne v5, v6, :cond_31

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_31
    const v6, -0x101009e

    if-ne v4, v6, :cond_32

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_type:I

    if-ne v5, v6, :cond_32

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_32
    const v6, 0x10100a1

    if-ne v4, v6, :cond_33

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_type:I

    if-ne v5, v6, :cond_33

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_33
    const v6, -0x10100a1

    if-ne v4, v6, :cond_34

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_type:I

    if-ne v5, v6, :cond_34

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto/16 :goto_3

    :cond_34
    const v6, 0x10100a7

    if-ne v4, v6, :cond_35

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_type:I

    if-ne v5, v6, :cond_35

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto/16 :goto_3

    :cond_35
    const v6, -0x10100a7

    if-ne v4, v6, :cond_36

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_type:I

    if-ne v5, v6, :cond_36

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto/16 :goto_3

    :cond_36
    const v6, 0x101009c

    if-ne v4, v6, :cond_37

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_type:I

    if-ne v5, v6, :cond_37

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto/16 :goto_3

    :cond_37
    const v6, -0x101009c

    if-ne v4, v6, :cond_2b

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_type:I

    if-ne v5, v4, :cond_2b

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto/16 :goto_3

    :goto_4
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    move/from16 v20, v4

    goto/16 :goto_c

    :cond_38
    :goto_5
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_39

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_39
    const v6, 0x101009f

    if-ne v4, v6, :cond_3a

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3a

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3a
    const v6, -0x101009f

    if-ne v4, v6, :cond_3b

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3b

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3b
    const v6, 0x10100a0

    if-ne v4, v6, :cond_3c

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3c

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3c
    const v6, -0x10100a0

    if-ne v4, v6, :cond_3d

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3d

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3d
    const v6, 0x101009e

    if-ne v4, v6, :cond_3e

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3e

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3e
    const v6, -0x101009e

    if-ne v4, v6, :cond_3f

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3f

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3f
    const v6, 0x10100a1

    if-ne v4, v6, :cond_40

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_gradientRadius:I

    if-ne v5, v6, :cond_40

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_40
    const v6, -0x10100a1

    if-ne v4, v6, :cond_41

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_gradientRadius:I

    if-ne v5, v6, :cond_41

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_41
    const v6, 0x10100a7

    if-ne v4, v6, :cond_42

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_gradientRadius:I

    if-ne v5, v6, :cond_42

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_42
    const v6, -0x10100a7

    if-ne v4, v6, :cond_43

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_gradientRadius:I

    if-ne v5, v6, :cond_43

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_43
    const v6, 0x101009c

    if-ne v4, v6, :cond_44

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_gradientRadius:I

    if-ne v5, v6, :cond_44

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_44
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_gradientRadius:I

    if-ne v5, v4, :cond_93

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_45
    :goto_6
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_46

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_46
    const v6, 0x101009f

    if-ne v4, v6, :cond_47

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_startColor:I

    if-ne v5, v6, :cond_47

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_47
    const v6, -0x101009f

    if-ne v4, v6, :cond_48

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_startColor:I

    if-ne v5, v6, :cond_48

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_48
    const v6, 0x10100a0

    if-ne v4, v6, :cond_49

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_startColor:I

    if-ne v5, v6, :cond_49

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_49
    const v6, -0x10100a0

    if-ne v4, v6, :cond_4a

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_startColor:I

    if-ne v5, v6, :cond_4a

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4a
    const v6, 0x101009e

    if-ne v4, v6, :cond_4b

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_startColor:I

    if-ne v5, v6, :cond_4b

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4b
    const v6, -0x101009e

    if-ne v4, v6, :cond_4c

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_startColor:I

    if-ne v5, v6, :cond_4c

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4c
    const v6, 0x10100a1

    if-ne v4, v6, :cond_4d

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_startColor:I

    if-ne v5, v6, :cond_4d

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4d
    const v6, -0x10100a1

    if-ne v4, v6, :cond_4e

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_startColor:I

    if-ne v5, v6, :cond_4e

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4e
    const v6, 0x10100a7

    if-ne v4, v6, :cond_4f

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_startColor:I

    if-ne v5, v6, :cond_4f

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4f
    const v6, -0x10100a7

    if-ne v4, v6, :cond_50

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_startColor:I

    if-ne v5, v6, :cond_50

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_50
    const v6, 0x101009c

    if-ne v4, v6, :cond_51

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_startColor:I

    if-ne v5, v6, :cond_51

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_51
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_startColor:I

    if-ne v5, v4, :cond_93

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_52
    :goto_7
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_53

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_53
    const v6, 0x101009f

    if-ne v4, v6, :cond_54

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_endColor:I

    if-ne v5, v6, :cond_54

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_54
    const v6, -0x101009f

    if-ne v4, v6, :cond_55

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_endColor:I

    if-ne v5, v6, :cond_55

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_55
    const v6, 0x10100a0

    if-ne v4, v6, :cond_56

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_endColor:I

    if-ne v5, v6, :cond_56

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_56
    const v6, -0x10100a0

    if-ne v4, v6, :cond_57

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_endColor:I

    if-ne v5, v6, :cond_57

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_57
    const v6, 0x101009e

    if-ne v4, v6, :cond_58

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_endColor:I

    if-ne v5, v6, :cond_58

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_58
    const v6, -0x101009e

    if-ne v4, v6, :cond_59

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_endColor:I

    if-ne v5, v6, :cond_59

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_59
    const v6, 0x10100a1

    if-ne v4, v6, :cond_5a

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_endColor:I

    if-ne v5, v6, :cond_5a

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5a
    const v6, -0x10100a1

    if-ne v4, v6, :cond_5b

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_endColor:I

    if-ne v5, v6, :cond_5b

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5b
    const v6, 0x10100a7

    if-ne v4, v6, :cond_5c

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_endColor:I

    if-ne v5, v6, :cond_5c

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5c
    const v6, -0x10100a7

    if-ne v4, v6, :cond_5d

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_endColor:I

    if-ne v5, v6, :cond_5d

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5d
    const v6, 0x101009c

    if-ne v4, v6, :cond_5e

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_endColor:I

    if-ne v5, v6, :cond_5e

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5e
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_endColor:I

    if-ne v5, v4, :cond_93

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5f
    :goto_8
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_60

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_60
    const v6, 0x101009f

    if-ne v4, v6, :cond_61

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerColor:I

    if-ne v5, v6, :cond_61

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_61
    const v6, -0x101009f

    if-ne v4, v6, :cond_62

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerColor:I

    if-ne v5, v6, :cond_62

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_62
    const v6, 0x10100a0

    if-ne v4, v6, :cond_63

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerColor:I

    if-ne v5, v6, :cond_63

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_63
    const v6, -0x10100a0

    if-ne v4, v6, :cond_64

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerColor:I

    if-ne v5, v6, :cond_64

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_64
    const v6, 0x101009e

    if-ne v4, v6, :cond_65

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerColor:I

    if-ne v5, v6, :cond_65

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_65
    const v6, -0x101009e

    if-ne v4, v6, :cond_66

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerColor:I

    if-ne v5, v6, :cond_66

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_66
    const v6, 0x10100a1

    if-ne v4, v6, :cond_67

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerColor:I

    if-ne v5, v6, :cond_67

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_67
    const v6, -0x10100a1

    if-ne v4, v6, :cond_68

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerColor:I

    if-ne v5, v6, :cond_68

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_68
    const v6, 0x10100a7

    if-ne v4, v6, :cond_69

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerColor:I

    if-ne v5, v6, :cond_69

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_69
    const v6, -0x10100a7

    if-ne v4, v6, :cond_6a

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerColor:I

    if-ne v5, v6, :cond_6a

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_6a
    const v6, 0x101009c

    if-ne v4, v6, :cond_6b

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerColor:I

    if-ne v5, v6, :cond_6b

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_6b
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerColor:I

    if-ne v5, v4, :cond_93

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_6c
    :goto_9
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_6d

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_6d
    const v6, 0x101009f

    if-ne v4, v6, :cond_6e

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerY:I

    if-ne v5, v6, :cond_6e

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_6e
    const v6, -0x101009f

    if-ne v4, v6, :cond_6f

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerY:I

    if-ne v5, v6, :cond_6f

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_6f
    const v6, 0x10100a0

    if-ne v4, v6, :cond_70

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerY:I

    if-ne v5, v6, :cond_70

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_70
    const v6, -0x10100a0

    if-ne v4, v6, :cond_71

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerY:I

    if-ne v5, v6, :cond_71

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_71
    const v6, 0x101009e

    if-ne v4, v6, :cond_72

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerY:I

    if-ne v5, v6, :cond_72

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_72
    const v6, -0x101009e

    if-ne v4, v6, :cond_73

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerY:I

    if-ne v5, v6, :cond_73

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_73
    const v6, 0x10100a1

    if-ne v4, v6, :cond_74

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerY:I

    if-ne v5, v6, :cond_74

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_74
    const v6, -0x10100a1

    if-ne v4, v6, :cond_75

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerY:I

    if-ne v5, v6, :cond_75

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_75
    const v6, 0x10100a7

    if-ne v4, v6, :cond_76

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerY:I

    if-ne v5, v6, :cond_76

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_76
    const v6, -0x10100a7

    if-ne v4, v6, :cond_77

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerY:I

    if-ne v5, v6, :cond_77

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_77
    const v6, 0x101009c

    if-ne v4, v6, :cond_78

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerY:I

    if-ne v5, v6, :cond_78

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_78
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerY:I

    if-ne v5, v4, :cond_93

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_79
    :goto_a
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_7a

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7a
    const v6, 0x101009f

    if-ne v4, v6, :cond_7b

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerX:I

    if-ne v5, v6, :cond_7b

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7b
    const v6, -0x101009f

    if-ne v4, v6, :cond_7c

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerX:I

    if-ne v5, v6, :cond_7c

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7c
    const v6, 0x10100a0

    if-ne v4, v6, :cond_7d

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerX:I

    if-ne v5, v6, :cond_7d

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7d
    const v6, -0x10100a0

    if-ne v4, v6, :cond_7e

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerX:I

    if-ne v5, v6, :cond_7e

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7e
    const v6, 0x101009e

    if-ne v4, v6, :cond_7f

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerX:I

    if-ne v5, v6, :cond_7f

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7f
    const v6, -0x101009e

    if-ne v4, v6, :cond_80

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerX:I

    if-ne v5, v6, :cond_80

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_80
    const v6, 0x10100a1

    if-ne v4, v6, :cond_81

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerX:I

    if-ne v5, v6, :cond_81

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_81
    const v6, -0x10100a1

    if-ne v4, v6, :cond_82

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerX:I

    if-ne v5, v6, :cond_82

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_82
    const v6, 0x10100a7

    if-ne v4, v6, :cond_83

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerX:I

    if-ne v5, v6, :cond_83

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_83
    const v6, -0x10100a7

    if-ne v4, v6, :cond_84

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerX:I

    if-ne v5, v6, :cond_84

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_84
    const v6, 0x101009c

    if-ne v4, v6, :cond_85

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerX:I

    if-ne v5, v6, :cond_85

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_85
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerX:I

    if-ne v5, v4, :cond_93

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_86
    :goto_b
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_87

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_87
    const v6, 0x101009f

    if-ne v4, v6, :cond_88

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_angle:I

    if-ne v5, v6, :cond_88

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_88
    const v6, -0x101009f

    if-ne v4, v6, :cond_89

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_angle:I

    if-ne v5, v6, :cond_89

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_89
    const v6, 0x10100a0

    if-ne v4, v6, :cond_8a

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_angle:I

    if-ne v5, v6, :cond_8a

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_8a
    const v6, -0x10100a0

    if-ne v4, v6, :cond_8b

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_angle:I

    if-ne v5, v6, :cond_8b

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_8b
    const v6, 0x101009e

    if-ne v4, v6, :cond_8c

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_angle:I

    if-ne v5, v6, :cond_8c

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_8c
    const v6, -0x101009e

    if-ne v4, v6, :cond_8d

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_angle:I

    if-ne v5, v6, :cond_8d

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_8d
    const v6, 0x10100a1

    if-ne v4, v6, :cond_8e

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_angle:I

    if-ne v5, v6, :cond_8e

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_8e
    const v6, -0x10100a1

    if-ne v4, v6, :cond_8f

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_angle:I

    if-ne v5, v6, :cond_8f

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_8f
    const v6, 0x10100a7

    if-ne v4, v6, :cond_90

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_angle:I

    if-ne v5, v6, :cond_90

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_90
    const v6, -0x10100a7

    if-ne v4, v6, :cond_91

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_angle:I

    if-ne v5, v6, :cond_91

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_91
    const v6, 0x101009c

    if-ne v4, v6, :cond_92

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_angle:I

    if-ne v5, v6, :cond_92

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_92
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_angle:I

    if-ne v5, v4, :cond_93

    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    :cond_93
    :goto_c
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_94
    invoke-direct {v1, v0}, Lcom/noober/background/drawable/GradientDrawableCreator;->hasSetRadius([F)Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_95
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_size_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_size_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_96

    float-to-int v0, v8

    float-to-int v4, v9

    invoke-virtual {v2, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    :cond_96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_97

    const v5, 0x10100a7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_97
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_98

    const v5, -0x10100a7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_98
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_99

    const v5, 0x101009f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_99
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9a

    const v5, -0x101009f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9b

    const v5, 0x10100a0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9b
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9c

    const v5, -0x10100a0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9d

    const v5, 0x101009e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9d
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9e

    const v5, -0x101009e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9f

    const v5, 0x10100a1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9f
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a0

    const v5, -0x10100a1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a1

    const v5, 0x101009c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unFocused_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a2

    const v5, -0x101009c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unFocused_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_a3

    add-int/lit8 v5, v5, 0x1

    :cond_a3
    new-array v6, v5, [[I

    new-array v5, v5, [I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    filled-new-array {v8}, [I

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_a4
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a5

    const/4 v0, 0x0

    new-array v4, v0, [I

    aput-object v4, v6, v7

    aput v10, v5, v7

    :cond_a5
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_e

    :cond_a6
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_a7
    :goto_e
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a8

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a8

    const v5, 0x10100a7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x10100a7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a8
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a9

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a9

    const v5, 0x101009f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x101009f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a9
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_aa

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_aa

    const v5, 0x10100a0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x10100a0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ab

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ab

    const v5, 0x101009e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x101009e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ab
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ac

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ac

    const v5, 0x10100a1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x10100a1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ad

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unFocused_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ad

    const v5, 0x101009c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x101009c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unFocused_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ad
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_af

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [[I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    filled-new-array {v8}, [I

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_f

    :cond_ae
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    float-to-int v4, v11

    invoke-virtual {v2, v4, v0, v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    goto :goto_10

    :cond_af
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b0

    float-to-int v0, v11

    invoke-virtual {v2, v0, v13, v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    :cond_b0
    :goto_10
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerX:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerY:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    goto :goto_12

    :cond_b1
    :goto_11
    move/from16 v4, v16

    goto/16 :goto_13

    :cond_b2
    :goto_12
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerX:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerY:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_b3
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerX:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerY:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_b4
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerX:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerY:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_b5
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerX:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerY:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_b6
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerX:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerY:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_b7
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerX:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerY:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    goto :goto_11

    :goto_13
    invoke-virtual {v2, v15, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    :cond_b8
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_startColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_endColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_b9
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_startColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_endColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_ba
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_startColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_endColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_bb
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_startColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_endColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_bc
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_startColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_endColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_bd
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_startColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_endColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_be
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_startColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_endColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    :cond_bf
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v4, 0x0

    aput v18, v0, v4

    const/4 v5, 0x1

    aput v17, v0, v5

    const/4 v6, 0x2

    aput v19, v0, v6

    goto :goto_14

    :cond_c0
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    new-array v0, v6, [I

    aput v18, v0, v4

    aput v19, v0, v5

    :goto_14
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_c1
    if-nez v20, :cond_cc

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_angle:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_cc

    :cond_c2
    move/from16 v6, v21

    rem-int/lit16 v0, v6, 0x168

    rem-int/lit8 v4, v0, 0x2d

    if-nez v4, :cond_cb

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-eqz v0, :cond_ca

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_c9

    const/16 v5, 0x5a

    if-eq v0, v5, :cond_c8

    const/16 v5, 0x87

    if-eq v0, v5, :cond_c7

    const/16 v5, 0xb4

    if-eq v0, v5, :cond_c6

    const/16 v5, 0xe1

    if-eq v0, v5, :cond_c5

    const/16 v5, 0x10e

    if-eq v0, v5, :cond_c4

    const/16 v5, 0x13b

    if-eq v0, v5, :cond_c3

    goto :goto_15

    :cond_c3
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    :cond_c4
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    :cond_c5
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    :cond_c6
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    :cond_c7
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    :cond_c8
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    :cond_c9
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :cond_ca
    :goto_15
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_16

    :cond_cb
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<gradient> tag requires \'angle\' attribute to be a multiple of 45"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cc
    :goto_16
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_left:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_top:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_right:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_cd

    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0, v4, v5, v3}, Lcom/noober/background/drawable/a;->a(Landroid/graphics/drawable/GradientDrawable;IIII)V

    goto :goto_19

    :cond_cd
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mPadding"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_19

    :catch_0
    move-exception v0

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_18

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_ce
    :goto_19
    return-object v2
.end method
