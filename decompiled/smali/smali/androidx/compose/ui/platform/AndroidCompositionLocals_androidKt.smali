.class public abstract Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/runtime/s1;

.field private static final b:Landroidx/compose/runtime/s1;

.field private static final c:Landroidx/compose/runtime/s1;

.field private static final d:Landroidx/compose/runtime/s1;

.field private static final e:Landroidx/compose/runtime/s1;

.field private static final f:Landroidx/compose/runtime/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalConfiguration$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalConfiguration$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->d(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/s1;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalContext$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalContext$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/s1;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalImageVectorCache$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalImageVectorCache$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->c:Landroidx/compose/runtime/s1;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalResourceIdCache$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalResourceIdCache$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->d:Landroidx/compose/runtime/s1;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalSavedStateRegistryOwner$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalSavedStateRegistryOwner$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->e:Landroidx/compose/runtime/s1;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalView$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalView$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/s1;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v4, 0x0

    const v6, 0x5342453c

    move-object/from16 v7, p2

    invoke-interface {v7, v6}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v7

    const/4 v8, 0x6

    and-int/lit8 v9, v2, 0x6

    const/4 v10, 0x2

    if-nez v9, :cond_1

    invoke-interface {v7, v0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    or-int/2addr v9, v2

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    and-int/lit8 v11, v2, 0x30

    if-nez v11, :cond_3

    invoke-interface {v7, v1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    goto :goto_2

    :cond_2
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v9, v11

    :cond_3
    and-int/lit8 v11, v9, 0x13

    const/16 v12, 0x12

    if-ne v11, v12, :cond_5

    invoke-interface {v7}, Landroidx/compose/runtime/i;->h()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v7}, Landroidx/compose/runtime/i;->G()V

    goto/16 :goto_4

    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, -0x1

    const-string v12, "androidx.compose.ui.platform.ProvideAndroidCompositionLocals (AndroidCompositionLocals.android.kt:91)"

    invoke-static {v6, v9, v11, v12}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v12

    if-ne v9, v12, :cond_7

    new-instance v9, Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    const/4 v12, 0x0

    invoke-static {v9, v12, v10, v12}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v9

    invoke-interface {v7, v9}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_7
    check-cast v9, Landroidx/compose/runtime/i1;

    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_8

    new-instance v12, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$1$1;

    invoke-direct {v12, v9}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$1$1;-><init>(Landroidx/compose/runtime/i1;)V

    invoke-interface {v7, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_8
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v12}, Landroidx/compose/ui/platform/AndroidComposeView;->setConfigurationChangeObserver(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_9

    new-instance v12, Landroidx/compose/ui/platform/k0;

    invoke-direct {v12, v6}, Landroidx/compose/ui/platform/k0;-><init>(Landroid/content/Context;)V

    invoke-interface {v7, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_9
    check-cast v12, Landroidx/compose/ui/platform/k0;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$b;

    move-result-object v13

    if-eqz v13, :cond_f

    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v15

    if-ne v14, v15, :cond_a

    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView$b;->b()Landroidx/savedstate/e;

    move-result-object v14

    invoke-static {v0, v14}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->b(Landroid/view/View;Landroidx/savedstate/e;)Landroidx/compose/ui/platform/u0;

    move-result-object v14

    invoke-interface {v7, v14}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Landroidx/compose/ui/platform/u0;

    sget-object v15, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v7, v14}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface {v7}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v5

    if-nez v16, :cond_b

    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v11

    if-ne v5, v11, :cond_c

    :cond_b
    new-instance v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2$1;

    invoke-direct {v5, v14}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2$1;-><init>(Landroidx/compose/ui/platform/u0;)V

    invoke-interface {v7, v5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v5, v7, v8}, Landroidx/compose/runtime/g0;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    invoke-static {v9}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b(Landroidx/compose/runtime/i1;)Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v6, v5, v7, v4}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->l(Landroid/content/Context;Landroid/content/res/Configuration;Landroidx/compose/runtime/i;I)Li0/d;

    move-result-object v5

    invoke-static {v6, v7, v4}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->m(Landroid/content/Context;Landroidx/compose/runtime/i;I)Li0/f;

    move-result-object v11

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->i()Landroidx/compose/runtime/q;

    move-result-object v15

    invoke-interface {v7, v15}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getScrollCaptureInProgress$ui_release()Z

    move-result v16

    or-int v15, v15, v16

    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/s1;

    invoke-static {v9}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b(Landroidx/compose/runtime/i1;)Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/s1;

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object v6

    invoke-static {}, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a()Landroidx/compose/runtime/s1;

    move-result-object v9

    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView$b;->a()Landroidx/lifecycle/u;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->e:Landroidx/compose/runtime/s1;

    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView$b;->b()Landroidx/savedstate/e;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object v10

    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->d()Landroidx/compose/runtime/s1;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/s1;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object v3

    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->c:Landroidx/compose/runtime/s1;

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object v5

    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->d:Landroidx/compose/runtime/s1;

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object v11

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->h()Landroidx/compose/runtime/s1;

    move-result-object v14

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object v14

    const/16 v15, 0x9

    new-array v15, v15, [Landroidx/compose/runtime/t1;

    aput-object v8, v15, v4

    const/4 v4, 0x1

    aput-object v6, v15, v4

    const/4 v4, 0x2

    aput-object v9, v15, v4

    const/4 v4, 0x3

    aput-object v10, v15, v4

    const/4 v4, 0x4

    aput-object v13, v15, v4

    const/4 v4, 0x5

    aput-object v3, v15, v4

    const/4 v3, 0x6

    aput-object v5, v15, v3

    const/4 v3, 0x7

    aput-object v11, v15, v3

    const/16 v3, 0x8

    aput-object v14, v15, v3

    new-instance v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$3;

    invoke-direct {v3, v0, v12, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$3;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/k0;Lkotlin/jvm/functions/Function2;)V

    const/16 v4, 0x36

    const v5, 0x57b729fc

    const/4 v6, 0x1

    invoke-static {v5, v6, v3, v7, v4}, Landroidx/compose/runtime/internal/b;->d(IZLjava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/internal/a;

    move-result-object v3

    sget v4, Landroidx/compose/runtime/t1;->i:I

    or-int/lit8 v4, v4, 0x30

    invoke-static {v15, v3, v7, v4}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_d
    :goto_4
    invoke-interface {v7}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v3

    if-eqz v3, :cond_e

    new-instance v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$4;

    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$4;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_e
    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called when the ViewTreeOwnersAvailability is not yet in Available state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final b(Landroidx/compose/runtime/i1;)Landroid/content/res/Configuration;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Configuration;

    return-object p0
.end method

.method private static final c(Landroidx/compose/runtime/i1;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic d(Landroidx/compose/runtime/i1;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->c(Landroidx/compose/runtime/i1;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static final synthetic e(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static final f()Landroidx/compose/runtime/s1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/s1;

    return-object v0
.end method

.method public static final g()Landroidx/compose/runtime/s1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/s1;

    return-object v0
.end method

.method public static final h()Landroidx/compose/runtime/s1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->c:Landroidx/compose/runtime/s1;

    return-object v0
.end method

.method public static final i()Landroidx/compose/runtime/s1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->d:Landroidx/compose/runtime/s1;

    return-object v0
.end method

.method public static final j()Landroidx/compose/runtime/s1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/s1;

    return-object v0
.end method

.method private static final k(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompositionLocal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not present"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final l(Landroid/content/Context;Landroid/content/res/Configuration;Landroidx/compose/runtime/i;I)Li0/d;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.ui.platform.obtainImageVectorCache (AndroidCompositionLocals.android.kt:172)"

    const v2, -0x1cf65f46

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne p3, v1, :cond_1

    new-instance p3, Li0/d;

    invoke-direct {p3}, Li0/d;-><init>()V

    invoke-interface {p2, p3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_1
    check-cast p3, Li0/d;

    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_2
    invoke-interface {p2, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_3
    check-cast v1, Landroid/content/res/Configuration;

    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_4

    new-instance p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;

    invoke-direct {p1, v1, p3}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;-><init>(Landroid/content/res/Configuration;Li0/d;)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_4
    check-cast p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;

    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_6

    :cond_5
    new-instance v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$1$1;

    invoke-direct {v2, p0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$1$1;-><init>(Landroid/content/Context;Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$a;)V

    invoke-interface {p2, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_6
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 p0, 0x0

    invoke-static {p3, v2, p2, p0}, Landroidx/compose/runtime/g0;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_7
    return-object p3
.end method

.method private static final m(Landroid/content/Context;Landroidx/compose/runtime/i;I)Li0/f;
    .locals 4

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.ui.platform.obtainResourceIdCache (AndroidCompositionLocals.android.kt:141)"

    const v2, -0x5060966e

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_1

    new-instance p2, Li0/f;

    invoke-direct {p2}, Li0/f;-><init>()V

    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_1
    check-cast p2, Li0/f;

    invoke-interface {p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    new-instance v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;

    invoke-direct {v1, p2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;-><init>(Li0/f;)V

    invoke-interface {p1, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_4

    :cond_3
    new-instance v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$1$1;

    invoke-direct {v3, p0, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$1$1;-><init>(Landroid/content/Context;Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$b;)V

    invoke-interface {p1, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_4
    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 p0, 0x0

    invoke-static {p2, v3, p1, p0}, Landroidx/compose/runtime/g0;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_5
    return-object p2
.end method
