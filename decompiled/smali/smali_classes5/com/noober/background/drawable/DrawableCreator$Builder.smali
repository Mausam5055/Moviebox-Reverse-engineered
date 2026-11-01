.class public Lcom/noober/background/drawable/DrawableCreator$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noober/background/drawable/DrawableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alpha:F

.field private baseGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private baseStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private checkableDrawable:Landroid/graphics/drawable/Drawable;

.field private checkableSolidColor:Ljava/lang/Integer;

.field private checkableStrokeColor:Ljava/lang/Integer;

.field private checkableTextColor:Ljava/lang/Integer;

.field private checkedDrawable:Landroid/graphics/drawable/Drawable;

.field private checkedSolidColor:Ljava/lang/Integer;

.field private checkedStrokeColor:Ljava/lang/Integer;

.field private checkedTextColor:Ljava/lang/Integer;

.field private cornersBottomLeftRadius:Ljava/lang/Float;

.field private cornersBottomRightRadius:Ljava/lang/Float;

.field private cornersRadius:Ljava/lang/Float;

.field private cornersTopLeftRadius:Ljava/lang/Float;

.field private cornersTopRightRadius:Ljava/lang/Float;

.field private enabledDrawable:Landroid/graphics/drawable/Drawable;

.field private enabledSolidColor:Ljava/lang/Integer;

.field private enabledStrokeColor:Ljava/lang/Integer;

.field private enabledTextColor:Ljava/lang/Integer;

.field private focusedActivated:Landroid/graphics/drawable/Drawable;

.field private focusedDrawable:Landroid/graphics/drawable/Drawable;

.field private focusedHovered:Landroid/graphics/drawable/Drawable;

.field private focusedSolidColor:Ljava/lang/Integer;

.field private focusedStrokeColor:Ljava/lang/Integer;

.field private focusedTextColor:Ljava/lang/Integer;

.field private gradient:Lcom/noober/background/drawable/DrawableCreator$Gradient;

.field private gradientAngle:I

.field private gradientCenterColor:Ljava/lang/Integer;

.field private gradientCenterX:Ljava/lang/Float;

.field private gradientCenterY:Ljava/lang/Float;

.field private gradientEndColor:Ljava/lang/Integer;

.field private gradientRadius:Ljava/lang/Float;

.field private gradientStartColor:Ljava/lang/Integer;

.field private hasSelectDrawable:Z

.field private hasSetPadding:Z

.field private padding:Landroid/graphics/Rect;

.field private pressedDrawable:Landroid/graphics/drawable/Drawable;

.field private pressedSolidColor:Ljava/lang/Integer;

.field private pressedStrokeColor:Ljava/lang/Integer;

.field private pressedTextColor:Ljava/lang/Integer;

.field private rippleColor:Ljava/lang/Integer;

.field private rippleEnable:Z

.field private selectedDrawable:Landroid/graphics/drawable/Drawable;

.field private selectedSolidColor:Ljava/lang/Integer;

.field private selectedStrokeColor:Ljava/lang/Integer;

.field private selectedTextColor:Ljava/lang/Integer;

.field private shape:Lcom/noober/background/drawable/DrawableCreator$Shape;

.field private sizeHeight:Ljava/lang/Float;

.field private sizeWidth:Ljava/lang/Float;

.field private solidColor:Ljava/lang/Integer;

.field private strokeColor:Ljava/lang/Integer;

.field private strokeDashGap:F

.field private strokeDashWidth:F

.field private strokeWidth:Ljava/lang/Float;

.field private textColorCount:I

.field private unCheckableDrawable:Landroid/graphics/drawable/Drawable;

.field private unCheckableSolidColor:Ljava/lang/Integer;

.field private unCheckableStrokeColor:Ljava/lang/Integer;

.field private unCheckableTextColor:Ljava/lang/Integer;

.field private unCheckedDrawable:Landroid/graphics/drawable/Drawable;

.field private unCheckedSolidColor:Ljava/lang/Integer;

.field private unCheckedStrokeColor:Ljava/lang/Integer;

.field private unCheckedTextColor:Ljava/lang/Integer;

.field private unEnabledDrawable:Landroid/graphics/drawable/Drawable;

.field private unEnabledSolidColor:Ljava/lang/Integer;

.field private unEnabledStrokeColor:Ljava/lang/Integer;

.field private unEnabledTextColor:Ljava/lang/Integer;

.field private unFocusedActivated:Landroid/graphics/drawable/Drawable;

.field private unFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private unFocusedHovered:Landroid/graphics/drawable/Drawable;

.field private unFocusedSolidColor:Ljava/lang/Integer;

.field private unFocusedStrokeColor:Ljava/lang/Integer;

.field private unFocusedTextColor:Ljava/lang/Integer;

.field private unPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private unPressedSolidColor:Ljava/lang/Integer;

.field private unPressedStrokeColor:Ljava/lang/Integer;

.field private unPressedTextColor:Ljava/lang/Integer;

.field private unSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private unSelectedSolidColor:Ljava/lang/Integer;

.field private unSelectedStrokeColor:Ljava/lang/Integer;

.field private unSelectedTextColor:Ljava/lang/Integer;

.field private useLevel:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/noober/background/drawable/DrawableCreator$Shape;->Rectangle:Lcom/noober/background/drawable/DrawableCreator$Shape;

    iput-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->shape:Lcom/noober/background/drawable/DrawableCreator$Shape;

    const/4 v0, -0x1

    iput v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientAngle:I

    sget-object v0, Lcom/noober/background/drawable/DrawableCreator$Gradient;->Linear:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    iput-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradient:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->useLevel:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->padding:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSetPadding:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashWidth:F

    iput v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashGap:F

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleEnable:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method

.method private getColorStateList()Landroid/content/res/ColorStateList;
    .locals 5

    iget v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    new-array v1, v0, [[I

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableTextColor:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v4, 0x101009f

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    const/4 v3, 0x1

    :cond_0
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const v4, -0x101009f

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_1
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    const v4, 0x10100a0

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    const v4, -0x10100a0

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    const v4, 0x101009e

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_4
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    const v4, -0x101009e

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_5
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    const v4, 0x10100a1

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_6
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    const v4, -0x10100a1

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_7
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    const v4, 0x10100a7

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_8
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    const v4, -0x10100a7

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_9
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    const v4, 0x101009c

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_a
    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedTextColor:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    const v4, -0x101009c

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    :cond_b
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v1, p0

    const/16 v0, 0x2d

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v6, :cond_0

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    :cond_0
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->shape:Lcom/noober/background/drawable/DrawableCreator$Shape;

    iget v7, v7, Lcom/noober/background/drawable/DrawableCreator$Shape;->value:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersRadius:Ljava/lang/Float;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomLeftRadius:Ljava/lang/Float;

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomRightRadius:Ljava/lang/Float;

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopLeftRadius:Ljava/lang/Float;

    if-eqz v7, :cond_2

    iget-object v8, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopRightRadius:Ljava/lang/Float;

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v8, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopLeftRadius:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v9, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopRightRadius:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-object v10, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopRightRadius:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget-object v11, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomRightRadius:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v12, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomRightRadius:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget-object v13, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomLeftRadius:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v14, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomLeftRadius:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/16 v15, 0x8

    new-array v15, v15, [F

    aput v7, v15, v5

    aput v8, v15, v4

    aput v9, v15, v3

    aput v10, v15, v2

    const/4 v7, 0x4

    aput v11, v15, v7

    const/4 v7, 0x5

    aput v12, v15, v7

    const/4 v7, 0x6

    aput v13, v15, v7

    const/4 v7, 0x7

    aput v14, v15, v7

    invoke-virtual {v6, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_2
    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradient:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    sget-object v8, Lcom/noober/background/drawable/DrawableCreator$Gradient;->Linear:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    if-ne v7, v8, :cond_b

    iget v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientAngle:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_b

    rem-int/lit16 v7, v7, 0x168

    iput v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientAngle:I

    rem-int/lit8 v8, v7, 0x2d

    if-nez v8, :cond_b

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-eqz v7, :cond_a

    if-eq v7, v0, :cond_9

    const/16 v0, 0x5a

    if-eq v7, v0, :cond_8

    const/16 v0, 0x87

    if-eq v7, v0, :cond_7

    const/16 v0, 0xb4

    if-eq v7, v0, :cond_6

    const/16 v0, 0xe1

    if-eq v7, v0, :cond_5

    const/16 v0, 0x10e

    if-eq v7, v0, :cond_4

    const/16 v0, 0x13b

    if-eq v7, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :cond_4
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :cond_5
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :cond_6
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :cond_7
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :cond_8
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :cond_9
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :cond_a
    :goto_0
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_b
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterX:Ljava/lang/Float;

    if-eqz v0, :cond_c

    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterY:Ljava/lang/Float;

    if-eqz v7, :cond_c

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterY:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    :cond_c
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientStartColor:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientEndColor:Ljava/lang/Integer;

    if-eqz v7, :cond_e

    iget-object v7, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterColor:Ljava/lang/Integer;

    if-eqz v7, :cond_d

    new-array v2, v2, [I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v5

    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v4

    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientEndColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    goto :goto_1

    :cond_d
    new-array v2, v3, [I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v5

    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientEndColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v4

    :goto_1
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_e
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientRadius:Ljava/lang/Float;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    :cond_f
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradient:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    iget v0, v0, Lcom/noober/background/drawable/DrawableCreator$Gradient;->value:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iget-boolean v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->useLevel:Z

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    iget-boolean v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSetPadding:Z

    if-eqz v0, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_10

    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->padding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v2, v3, v7, v0}, Lcom/noober/background/drawable/a;->a(Landroid/graphics/drawable/GradientDrawable;IIII)V

    goto :goto_4

    :cond_10
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mPadding"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v2, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->padding:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_4
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->sizeWidth:Ljava/lang/Float;

    if-eqz v0, :cond_12

    iget-object v2, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->sizeHeight:Ljava/lang/Float;

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iget-object v2, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->sizeHeight:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    :cond_12
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeWidth:Ljava/lang/Float;

    const v2, -0x101009c

    const v3, 0x101009c

    const v7, -0x10100a1

    const v8, 0x10100a1

    const v9, -0x101009e

    const v10, 0x101009e

    const v11, -0x10100a0

    const v12, 0x10100a0

    const v13, -0x101009f

    const v14, 0x101009f

    const v15, -0x10100a7

    const v16, 0x10100a7

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/16 v17, 0x0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_13

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_14

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_15

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_16

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_17

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_18

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedStrokeColor:Ljava/lang/Integer;

    if-eqz v4, :cond_18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedStrokeColor:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [[I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    filled-new-array/range {v19 .. v19}, [I

    move-result-object v19

    aput-object v19, v4, v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aput v19, v2, v3

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_19
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iget-object v2, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeWidth:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    iget v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashWidth:F

    iget v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashGap:F

    invoke-virtual {v6, v2, v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    goto :goto_6

    :cond_1a
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeWidth:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iget-object v2, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashWidth:F

    iget v4, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashGap:F

    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    :cond_1b
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1c

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1c

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1d

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1f

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_20

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_21

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedSolidColor:Ljava/lang/Integer;

    if-eqz v3, :cond_21

    const v3, 0x101009c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x101009c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedSolidColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [[I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    filled-new-array {v7}, [I

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    goto :goto_7

    :cond_22
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    :cond_23
    iget-object v0, v1, Lcom/noober/background/drawable/DrawableCreator$Builder;->solidColor:Ljava/lang/Integer;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_24
    :goto_8
    return-object v6
.end method

.method private getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    iget-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x101009f

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x101009f

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x10100a0

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x10100a0

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x10100a1

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x10100a1

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x101009c

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x101009c

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_b
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedHovered:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x1010367

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedHovered:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_c
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedHovered:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x1010367

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedHovered:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_d
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedActivated:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, 0x10102fe

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedActivated:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedActivated:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    invoke-virtual {p0, v0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    const v1, -0x10102fe

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedActivated:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_f
    return-object v0
.end method


# virtual methods
.method public build()Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    iget-boolean v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleEnable:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleColor:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_2
    if-nez v1, :cond_3

    move-object v1, v0

    :cond_3
    iget v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    const/high16 v3, 0x437f0000    # 255.0f

    if-ltz v2, :cond_4

    iput v3, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    cmpg-float v4, v0, v2

    if-gtz v4, :cond_5

    iput v2, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    goto :goto_2

    :cond_5
    mul-float/2addr v0, v3

    iput v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    :goto_2
    iget v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    return-object v1
.end method

.method public buildTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/noober/background/drawable/DrawableCreator$Builder;->getColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    :cond_0
    return-object p1
.end method

.method public setBaseGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public setBaseStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->baseStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public setCheckableDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCheckableSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableSolidColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableSolidColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCheckableStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableStrokeColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableStrokeColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCheckableTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkableTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setCheckedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCheckedSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedSolidColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedSolidColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCheckedStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedStrokeColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedStrokeColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCheckedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->checkedTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersRadius:Ljava/lang/Float;

    return-object p0
.end method

.method public setCornersRadius(FFFF)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomLeftRadius:Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersBottomRightRadius:Ljava/lang/Float;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopLeftRadius:Ljava/lang/Float;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->cornersTopRightRadius:Ljava/lang/Float;

    return-object p0
.end method

.method public setEnabledDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setEnabledSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledSolidColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledSolidColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEnabledStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledStrokeColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledStrokeColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEnabledTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->enabledTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setFocusedActivated(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedActivated:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setFocusedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setFocusedHovered(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedHovered:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setFocusedSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedSolidColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedSolidColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFocusedStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedStrokeColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedStrokeColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFocusedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->focusedTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setGradient(Lcom/noober/background/drawable/DrawableCreator$Gradient;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradient:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    return-object p0
.end method

.method public setGradientAngle(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientAngle:I

    return-object p0
.end method

.method public setGradientCenterXY(FF)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterX:Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterY:Ljava/lang/Float;

    return-object p0
.end method

.method public setGradientColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientStartColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientEndColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGradientColor(III)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientStartColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientCenterColor:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientEndColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGradientRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->gradientRadius:Ljava/lang/Float;

    return-object p0
.end method

.method public setPadding(FFFF)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSetPadding:Z

    iget-object v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->padding:Landroid/graphics/Rect;

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    float-to-int p1, p2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    float-to-int p1, p3

    iput p1, v0, Landroid/graphics/Rect;->right:I

    float-to-int p1, p4

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method public setPressedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setPressedSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedSolidColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedSolidColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPressedStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedStrokeColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedStrokeColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPressedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->pressedTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setRipple(ZI)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleEnable:Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->rippleColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSelectedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setSelectedSolidColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedSolidColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedSolidColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSelectedStrokeColor(II)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedStrokeColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedStrokeColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSelectedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->selectedTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setShape(Lcom/noober/background/drawable/DrawableCreator$Shape;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->shape:Lcom/noober/background/drawable/DrawableCreator$Shape;

    return-object p0
.end method

.method public setShapeAlpha(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->alpha:F

    return-object p0
.end method

.method public setSizeHeight(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->sizeHeight:Ljava/lang/Float;

    return-object p0
.end method

.method public setSizeWidth(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->sizeWidth:Ljava/lang/Float;

    return-object p0
.end method

.method public setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->solidColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStrokeColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStrokeDashGap(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashGap:F

    return-object p0
.end method

.method public setStrokeDashWidth(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeDashWidth:F

    return-object p0
.end method

.method public setStrokeWidth(F)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->strokeWidth:Ljava/lang/Float;

    return-object p0
.end method

.method public setUnCheckableDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setUnCheckableTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckableTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setUnCheckedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setUnCheckedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unCheckedTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setUnEnabledDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setUnEnabledTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unEnabledTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setUnFocusedActivated(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedActivated:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setUnFocusedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setUnFocusedHovered(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedHovered:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setUnFocusedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unFocusedTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setUnPressedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setUnPressedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unPressedTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setUnSelectedDrawable(Landroid/graphics/drawable/Drawable;)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->hasSelectDrawable:Z

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setUnSelectedTextColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->unSelectedTextColor:Ljava/lang/Integer;

    iget p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->textColorCount:I

    return-object p0
.end method

.method public setUseLevel(Z)Lcom/noober/background/drawable/DrawableCreator$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/noober/background/drawable/DrawableCreator$Builder;->useLevel:Z

    return-object p0
.end method
