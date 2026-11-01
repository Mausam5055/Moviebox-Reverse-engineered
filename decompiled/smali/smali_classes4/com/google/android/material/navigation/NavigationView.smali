.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

# interfaces
.implements Lwa/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;,
        Lcom/google/android/material/navigation/NavigationView$d;
    }
.end annotation


# static fields
.field private static final w:[I

.field private static final x:[I

.field private static final y:I


# instance fields
.field private final h:Lcom/google/android/material/internal/r;

.field private final i:Lcom/google/android/material/internal/s;

.field private final j:I

.field private final k:[I

.field private l:Landroid/view/MenuInflater;

.field private m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private n:Z

.field private o:Z

.field private p:I

.field private final q:Z

.field private final r:I

.field private final s:Lab/r;

.field private final t:Lwa/i;

.field private final u:Lwa/c;

.field private final v:Landroidx/drawerlayout/widget/DrawerLayout$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->w:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->x:[I

    sget v0, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/google/android/material/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    sget v9, Lcom/google/android/material/navigation/NavigationView;->y:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lbb/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v10, Lcom/google/android/material/internal/s;

    invoke-direct {v10}, Lcom/google/android/material/internal/s;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->k:[I

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/google/android/material/navigation/NavigationView;->n:Z

    iput-boolean v11, v0, Lcom/google/android/material/navigation/NavigationView;->o:Z

    const/4 v12, 0x0

    iput v12, v0, Lcom/google/android/material/navigation/NavigationView;->p:I

    invoke-static/range {p0 .. p0}, Lab/r;->a(Landroid/view/View;)Lab/r;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->s:Lab/r;

    new-instance v1, Lwa/i;

    invoke-direct {v1, v0}, Lwa/i;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->t:Lwa/i;

    new-instance v1, Lwa/c;

    invoke-direct {v1, v0}, Lwa/c;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->u:Lwa/c;

    new-instance v1, Lcom/google/android/material/navigation/NavigationView$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$a;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->v:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Lcom/google/android/material/internal/r;

    invoke-direct {v14, v13}, Lcom/google/android/material/internal/r;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/r;

    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationView:[I

    new-array v6, v12, [I

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/b0;->j(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/j0;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/j0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_drawerLayoutCornerSize:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->p:I

    if-nez v2, :cond_1

    move v2, v11

    goto :goto_0

    :cond_1
    move v2, v12

    :goto_0
    iput-boolean v2, v0, Lcom/google/android/material/navigation/NavigationView;->q:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->m3_navigation_drawer_layout_corner_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->r:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/drawable/d;->g(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    invoke-static {v13, v7, v8, v9}, Lab/n;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lab/n$b;

    move-result-object v2

    invoke-virtual {v2}, Lab/n$b;->m()Lab/n;

    move-result-object v2

    new-instance v4, Lab/i;

    invoke-direct {v4, v2}, Lab/i;-><init>(Lab/n;)V

    if-eqz v3, :cond_3

    invoke-virtual {v4, v3}, Lab/i;->d0(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {v4, v13}, Lab/i;->S(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    :cond_5
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/j0;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v1, v2, v12}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->j:I

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_subheaderColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v3

    :goto_1
    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v4

    if-eqz v4, :cond_7

    sget v4, Lcom/google/android/material/R$styleable;->NavigationView_subheaderTextAppearance:I

    invoke-virtual {v1, v4, v12}, Landroidx/appcompat/widget/j0;->n(II)I

    move-result v4

    goto :goto_2

    :cond_7
    move v4, v12

    :goto_2
    const v5, 0x1010038

    if-nez v4, :cond_8

    if-nez v2, :cond_8

    invoke-direct {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :cond_8
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v6

    if-eqz v6, :cond_9

    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_3

    :cond_9
    invoke-direct {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :goto_3
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v6

    if-eqz v6, :cond_a

    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v6, v12}, Landroidx/appcompat/widget/j0;->n(II)I

    move-result v6

    goto :goto_4

    :cond_a
    move v6, v12

    :goto_4
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearanceActiveBoldEnabled:I

    invoke-virtual {v1, v7, v11}, Landroidx/appcompat/widget/j0;->a(IZ)Z

    move-result v7

    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v8

    if-eqz v8, :cond_b

    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v8, v12}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    :cond_b
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v8

    if-eqz v8, :cond_c

    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    goto :goto_5

    :cond_c
    move-object v8, v3

    :goto_5
    if-nez v6, :cond_d

    if-nez v8, :cond_d

    const v8, 0x1010036

    invoke-direct {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    :cond_d
    sget v9, Lcom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/j0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_e

    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->j(Landroidx/appcompat/widget/j0;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-direct {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->h(Landroidx/appcompat/widget/j0;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    sget v15, Lcom/google/android/material/R$styleable;->NavigationView_itemRippleColor:I

    invoke-static {v13, v1, v15}, Lxa/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/j0;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    if-eqz v15, :cond_e

    invoke-direct {v0, v1, v3}, Lcom/google/android/material/navigation/NavigationView;->i(Landroidx/appcompat/widget/j0;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v12, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v15}, Lya/b;->d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-direct {v12, v15, v3, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/s;->L(Landroid/graphics/drawable/RippleDrawable;)V

    :cond_e
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_f

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    const/4 v11, 0x0

    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemHorizontalPadding(I)V

    goto :goto_6

    :cond_f
    const/4 v11, 0x0

    :goto_6
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_10

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemVerticalPadding:I

    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemVerticalPadding(I)V

    :cond_10
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetStart:I

    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetStart(I)V

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_dividerInsetEnd:I

    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetEnd(I)V

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetStart:I

    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetStart(I)V

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_subheaderInsetEnd:I

    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_topInsetScrimEnabled:I

    iget-boolean v12, v0, Lcom/google/android/material/navigation/NavigationView;->n:Z

    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/j0;->a(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_bottomInsetScrimEnabled:I

    iget-boolean v12, v0, Lcom/google/android/material/navigation/NavigationView;->o:Z

    invoke-virtual {v1, v3, v12}, Landroidx/appcompat/widget/j0;->a(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v3

    sget v11, Lcom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroidx/appcompat/widget/j0;->k(II)I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    new-instance v11, Lcom/google/android/material/navigation/NavigationView$b;

    invoke-direct {v11, v0}, Lcom/google/android/material/navigation/NavigationView$b;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v14, v11}, Landroidx/appcompat/view/menu/f;->W(Landroidx/appcompat/view/menu/f$a;)V

    invoke-virtual {v10, v12}, Lcom/google/android/material/internal/s;->J(I)V

    invoke-virtual {v10, v13, v14}, Lcom/google/android/material/internal/s;->k(Landroid/content/Context;Landroidx/appcompat/view/menu/f;)V

    if-eqz v4, :cond_11

    invoke-virtual {v10, v4}, Lcom/google/android/material/internal/s;->Z(I)V

    :cond_11
    invoke-virtual {v10, v2}, Lcom/google/android/material/internal/s;->W(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v10, v5}, Lcom/google/android/material/internal/s;->P(Landroid/content/res/ColorStateList;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/google/android/material/internal/s;->V(I)V

    if-eqz v6, :cond_12

    invoke-virtual {v10, v6}, Lcom/google/android/material/internal/s;->R(I)V

    :cond_12
    invoke-virtual {v10, v7}, Lcom/google/android/material/internal/s;->S(Z)V

    invoke-virtual {v10, v8}, Lcom/google/android/material/internal/s;->T(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v10, v9}, Lcom/google/android/material/internal/s;->K(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/s;->N(I)V

    invoke-virtual {v14, v10}, Landroidx/appcompat/view/menu/f;->b(Landroidx/appcompat/view/menu/l;)V

    invoke-virtual {v10, v0}, Lcom/google/android/material/internal/s;->z(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/m;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_13

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/j0;->n(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    goto :goto_7

    :cond_13
    const/4 v3, 0x0

    :goto_7
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v2

    if-eqz v2, :cond_14

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/j0;->n(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    :cond_14
    invoke-virtual {v1}, Landroidx/appcompat/widget/j0;->x()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->o()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/material/navigation/NavigationView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->k(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/navigation/NavigationView;)Lwa/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->u:Lwa/c;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->l()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/material/navigation/NavigationView;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->k:[I

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/s;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    return-object p0
.end method

.method private g(I)Landroid/content/res/ColorStateList;
    .locals 7

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Lcom/google/android/material/navigation/NavigationView;->x:[I

    const/4 v5, 0x3

    new-array v5, v5, [[I

    const/4 v6, 0x0

    aput-object v4, v5, v6

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->w:[I

    aput-object v6, v5, v2

    sget-object v2, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-virtual {p1, v4, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    invoke-direct {v3, v5, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/MenuInflater;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/MenuInflater;

    return-object v0
.end method

.method private h(Landroidx/appcompat/widget/j0;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    invoke-static {v0, p1, v1}, Lxa/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/j0;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;->i(Landroidx/appcompat/widget/j0;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private i(Landroidx/appcompat/widget/j0;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 9

    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/j0;->n(II)I

    move-result v0

    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/j0;->n(II)I

    move-result v2

    new-instance v4, Lab/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lab/n;->b(Landroid/content/Context;II)Lab/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lab/n$b;->m()Lab/n;

    move-result-object v0

    invoke-direct {v4, v0}, Lab/i;-><init>(Lab/n;)V

    invoke-virtual {v4, p2}, Lab/i;->d0(Landroid/content/res/ColorStateList;)V

    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v5

    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v6

    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v7

    sget p2, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/j0;->f(II)I

    move-result v8

    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p1
.end method

.method private j(Landroidx/appcompat/widget/j0;)Z
    .locals 1

    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/j0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic k(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private l()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/navigation/NavigationView;->m(II)V

    :cond_0
    return-void
.end method

.method private m(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->q:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lab/i;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$f;->a:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lab/i;

    invoke-virtual {v1}, Lab/i;->G()Lab/n;

    move-result-object v3

    invoke-virtual {v3}, Lab/n;->v()Lab/n$b;

    move-result-object v3

    iget v4, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lab/n$b;->o(F)Lab/n$b;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v4}, Lab/n$b;->H(F)Lab/n$b;

    invoke-virtual {v3, v4}, Lab/n$b;->w(F)Lab/n$b;

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v4}, Lab/n$b;->M(F)Lab/n$b;

    invoke-virtual {v3, v4}, Lab/n$b;->B(F)Lab/n$b;

    :goto_1
    invoke-virtual {v3}, Lab/n$b;->m()Lab/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Lab/i;->setShapeAppearanceModel(Lab/n;)V

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->s:Lab/r;

    invoke-virtual {v1, p0, v0}, Lab/r;->g(Landroid/view/View;Lab/n;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->s:Lab/r;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, v4, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p0, v1}, Lab/r;->f(Landroid/view/View;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->s:Lab/r;

    invoke-virtual {p1, p0, v2}, Lab/r;->i(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

.method private n()Landroid/util/Pair;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v2, :cond_0

    instance-of v2, v1, Landroidx/drawerlayout/widget/DrawerLayout$f;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/util/Pair;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$f;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavigationView back progress requires the direct parent view to be a DrawerLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o()V
    .locals 2

    new-instance v0, Lcom/google/android/material/navigation/NavigationView$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/NavigationView$c;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->m(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->l(Landroid/view/View;)V

    return-void
.end method

.method public cancelBackProgress()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->n()Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->t:Lwa/i;

    invoke-virtual {v0}, Lwa/i;->f()V

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->l()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->s:Lab/r;

    new-instance v1, Lcom/google/android/material/navigation/e;

    invoke-direct {v1, p0}, Lcom/google/android/material/navigation/e;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v0, p1, v1}, Lab/r;->e(Landroid/graphics/Canvas;Lpa/a$a;)V

    return-void
.end method

.method getBackHelper()Lwa/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->t:Lwa/i;

    return-object v0
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->n()Landroidx/appcompat/view/menu/h;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->o()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->p()I

    move-result v0

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->q()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->r(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->t()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->u()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->x()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->v()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->w()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemVerticalPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->y()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/r;

    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->A()I

    move-result v0

    return v0
.end method

.method public getSubheaderInsetStart()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0}, Lcom/google/android/material/internal/s;->B()I

    move-result v0

    return v0
.end method

.method public handleBackInvoked()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->n()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->t:Lwa/i;

    invoke-virtual {v2}, Lwa/a;->c()Landroidx/activity/b;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$f;->a:I

    invoke-static {v1, p0}, Lcom/google/android/material/navigation/b;->b(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/material/navigation/b;->c(Landroidx/drawerlayout/widget/DrawerLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView;->t:Lwa/i;

    invoke-virtual {v4, v2, v0, v3, v1}, Lwa/i;->h(Landroidx/activity/b;ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->D(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflateMenu(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/s;->a0(Z)V

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/r;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/s;->a0(Z)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/s;->h(Z)V

    return-void
.end method

.method public isBottomInsetScrimEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->o:Z

    return v0
.end method

.method public isTopInsetScrimEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->n:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    invoke-static {p0}, Lab/j;->e(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->u:Lwa/c;

    invoke-virtual {v1}, Lwa/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->v:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$e;)V

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->v:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$e;)V

    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->u:Lwa/c;

    invoke-virtual {v0}, Lwa/c;->e()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->v:Landroidx/drawerlayout/widget/DrawerLayout$e;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$e;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->j:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->j:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/r;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->T(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/r;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/f;->V(Landroid/os/Bundle;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationView;->m(II)V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->E(Landroid/view/View;)V

    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->o:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/r;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    check-cast p1, Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->G(Landroidx/appcompat/view/menu/h;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/r;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    check-cast p1, Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->G(Landroidx/appcompat/view/menu/h;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerInsetEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->H(I)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->I(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    invoke-static {p0, p1}, Lab/j;->d(Landroid/view/View;F)V

    return-void
.end method

.method public setForceCompatClippingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->s:Lab/r;

    invoke-virtual {v0, p0, p1}, Lab/r;->h(Landroid/view/View;Z)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->K(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->M(I)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->M(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->N(I)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->N(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->O(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->P(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->Q(I)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->R(I)V

    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->S(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->T(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->U(I)V

    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->U(I)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$d;)V
    .locals 0
    .param p1    # Lcom/google/android/material/navigation/NavigationView$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->V(I)V

    :cond_0
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->X(I)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lcom/google/android/material/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/s;->Y(I)V

    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->n:Z

    return-void
.end method

.method public startBackProgress(Landroidx/activity/b;)V
    .locals 1
    .param p1    # Landroidx/activity/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->n()Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->t:Lwa/i;

    invoke-virtual {v0, p1}, Lwa/i;->j(Landroidx/activity/b;)V

    return-void
.end method

.method public updateBackProgress(Landroidx/activity/b;)V
    .locals 2
    .param p1    # Landroidx/activity/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->n()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->t:Lwa/i;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$f;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$f;->a:I

    invoke-virtual {v1, p1, v0}, Lwa/i;->l(Landroidx/activity/b;I)V

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->t:Lwa/i;

    invoke-virtual {p1}, Landroidx/activity/b;->a()F

    move-result p1

    invoke-virtual {v0, p1}, Lwa/a;->a(F)F

    move-result p1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/material/navigation/NavigationView;->r:I

    invoke-static {v0, v1, p1}, Loa/a;->c(IIF)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;->m(II)V

    :cond_0
    return-void
.end method
