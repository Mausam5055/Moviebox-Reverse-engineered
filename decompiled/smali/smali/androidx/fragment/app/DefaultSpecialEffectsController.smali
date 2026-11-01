.class Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/DefaultSpecialEffectsController$g;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$e;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$f;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v12, " has started."

    const-string v13, "FragmentManager"

    const/4 v14, 0x2

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/fragment/app/DefaultSpecialEffectsController$e;

    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    :goto_1
    move-object/from16 v3, p4

    goto :goto_0

    :cond_0
    invoke-virtual {v15, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$e;->e(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$a;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    goto :goto_1

    :cond_1
    iget-object v5, v0, Landroidx/fragment/app/FragmentAnim$a;->b:Landroid/animation/Animator;

    if-nez v5, :cond_2

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v3, p4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring Animator set on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as this Fragment was involved in a Transition."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/16 v16, 0x1

    if-ne v1, v2, :cond_5

    move/from16 v6, v16

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v2, p2

    if-eqz v6, :cond_6

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$b;

    move-object/from16 p1, v0

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, v17

    move-object/from16 v18, v4

    move v4, v6

    move-object v6, v5

    move-object/from16 v5, v18

    move-object v11, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$b;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$e;)V

    invoke-virtual {v11, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/animation/Animator;->start()V

    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animator from operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move-object/from16 v1, v18

    :goto_3
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->c()Landroidx/core/os/e;

    move-result-object v0

    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$c;

    move-object/from16 v15, p0

    invoke-direct {v2, v15, v11, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$c;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v0, v2}, Landroidx/core/os/e;->b(Landroidx/core/os/e$a;)V

    move/from16 v6, v16

    goto/16 :goto_0

    :cond_8
    move-object/from16 v15, p0

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/fragment/app/DefaultSpecialEffectsController$e;

    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "Ignoring Animation set on "

    if-eqz p3, :cond_a

    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as Animations cannot run alongside Transitions."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    goto :goto_4

    :cond_a
    if-eqz v6, :cond_c

    invoke-static {v14}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as Animations cannot run alongside Animators."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    goto :goto_4

    :cond_c
    iget-object v5, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$e;->e(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$a;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/i;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentAnim$a;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$a;->a:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroidx/core/util/i;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v11}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v1, v2, :cond_d

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    move/from16 v16, v6

    move-object/from16 v17, v8

    move v6, v14

    move-object v8, v5

    goto :goto_5

    :cond_d
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v4, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    invoke-direct {v4, v0, v7, v5}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v14, v3

    move-object v3, v7

    move/from16 v16, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v17, v8

    move-object v8, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$4;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$e;)V

    invoke-virtual {v6, v14}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v8, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x2

    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation from operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    invoke-virtual {v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->c()Landroidx/core/os/e;

    move-result-object v14

    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$d;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object v4, v10

    move-object v8, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$d;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$e;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v14, v8}, Landroidx/core/os/e;->b(Landroidx/core/os/e$a;)V

    move v14, v6

    move/from16 v6, v16

    move-object/from16 v8, v17

    goto/16 :goto_4

    :cond_f
    return-void
.end method

.method private x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
    .locals 33

    move-object/from16 v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v15, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$g;

    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$g;->e()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v2

    if-nez v15, :cond_2

    move-object v15, v2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    if-ne v15, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returned Transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$g;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez v15, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$g;

    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    goto :goto_1

    :cond_5
    return-object v10

    :cond_6
    new-instance v14, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroidx/collection/a;

    invoke-direct {v4}, Landroidx/collection/a;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v21, 0x0

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v22, 0x2

    const-string v3, "FragmentManager"

    if-eqz v1, :cond_1b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$g;

    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$g;->i()Z

    move-result v17

    if-eqz v17, :cond_1a

    if-eqz v8, :cond_1a

    if-eqz v9, :cond_1a

    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$g;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v17

    move-object/from16 v18, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v17, v2

    move-object/from16 v24, v10

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    move-object/from16 v19, v1

    const/4 v1, -0x1

    if-eq v10, v1, :cond_7

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v19

    goto :goto_3

    :cond_8
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v7, :cond_9

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/a0;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/a0;

    move-result-object v2

    goto :goto_4

    :cond_9
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/a0;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Landroidx/core/app/a0;

    move-result-object v2

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v19, v14

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v11, :cond_a

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move/from16 v26, v11

    move-object/from16 v11, v25

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v27, v13

    move-object/from16 v13, v25

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v11, v13}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v26

    move-object/from16 v13, v27

    goto :goto_5

    :cond_a
    move-object/from16 v27, v13

    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, ">>> entering view names <<<"

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "Name: "

    if-eqz v13, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v25, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, v25

    goto :goto_6

    :cond_b
    const-string v11, ">>> exiting view names <<<"

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v25, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, v25

    goto :goto_7

    :cond_c
    new-instance v11, Landroidx/collection/a;

    invoke-direct {v11}, Landroidx/collection/a;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v13

    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v11, v13}, Landroidx/fragment/app/DefaultSpecialEffectsController;->u(Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v11, v0}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_11

    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Executing exit callback for operation "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v1, v0, v11}, Landroidx/core/app/a0;->d(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    :goto_8
    if-ltz v1, :cond_10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    if-nez v14, :cond_e

    invoke-virtual {v4, v13}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v25, v0

    goto :goto_9

    :cond_e
    move-object/from16 v25, v0

    invoke-static {v14}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v4, v13}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v14}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13, v0}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_9
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v25

    goto :goto_8

    :cond_10
    move-object/from16 v25, v0

    goto :goto_a

    :cond_11
    move-object/from16 v25, v0

    invoke-virtual {v11}, Landroidx/collection/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    :goto_a
    new-instance v13, Landroidx/collection/a;

    invoke-direct {v13}, Landroidx/collection/a;-><init>()V

    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v13, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->u(Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v13, v10}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    if-eqz v2, :cond_15

    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing enter callback for operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-virtual {v2, v10, v13}, Landroidx/core/app/a0;->d(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_13

    invoke-static {v4, v1}, Landroidx/fragment/app/x;->b(Landroidx/collection/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v4, v1}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_13
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {v4, v1}, Landroidx/fragment/app/x;->b(Landroidx/collection/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    :goto_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_15
    invoke-static {v4, v13}, Landroidx/fragment/app/x;->d(Landroidx/collection/a;Landroidx/collection/a;)V

    :cond_16
    invoke-virtual {v4}, Landroidx/collection/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v6, v11, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->v(Landroidx/collection/a;Ljava/util/Collection;)V

    invoke-virtual {v4}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v6, v13, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->v(Landroidx/collection/a;Ljava/util/Collection;)V

    invoke-virtual {v4}, Landroidx/collection/x0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v28, v4

    move-object v10, v5

    move-object v4, v8

    move-object v7, v12

    move-object v11, v15

    move-object/from16 v2, v17

    move-object/from16 v1, v19

    move-object/from16 v8, v24

    move-object/from16 v5, v27

    const/4 v0, 0x0

    const/4 v14, 0x0

    move-object v15, v9

    goto/16 :goto_f

    :cond_17
    invoke-virtual/range {p5 .. p5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v14, 0x1

    invoke-static {v0, v1, v7, v11, v14}, Landroidx/fragment/app/x;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/a;Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    move-object/from16 v1, v25

    move-object v0, v2

    move-object/from16 v14, v18

    move-object/from16 v1, p0

    move-object v7, v2

    move-object/from16 v26, v17

    move-object/from16 v2, p5

    move-object v9, v3

    move-object/from16 v3, p4

    move-object/from16 v28, v4

    move/from16 v4, p3

    move-object v8, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/a;)V

    invoke-static {v9, v7}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    invoke-virtual {v11}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    move-object/from16 v1, v25

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v15, v14, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->p(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_d

    :cond_18
    const/4 v0, 0x0

    move-object/from16 v2, v26

    :goto_d
    invoke-virtual {v13}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$7;

    move-object/from16 v5, v27

    invoke-direct {v4, v6, v15, v1, v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$7;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v3, v4}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-object/from16 v1, v19

    const/16 v21, 0x1

    goto :goto_e

    :cond_19
    move-object/from16 v5, v27

    move-object/from16 v1, v19

    :goto_e
    invoke-virtual {v15, v14, v1, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->s(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v12

    move-object v12, v15

    move-object v13, v14

    move-object v9, v14

    move-object v14, v3

    move-object v11, v15

    move-object v15, v4

    move-object/from16 v18, v9

    move-object/from16 v19, v8

    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/FragmentTransitionImpl;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v4, p4

    move-object v10, v8

    move-object/from16 v8, v24

    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, p5

    move v14, v0

    invoke-interface {v8, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v9

    goto :goto_f

    :cond_1a
    move-object/from16 v26, v2

    move-object/from16 v28, v4

    move-object v4, v8

    move-object v8, v10

    move-object v7, v12

    move-object v1, v14

    move-object v11, v15

    const/4 v14, 0x0

    move-object v10, v5

    move-object v15, v9

    move-object v5, v13

    move-object/from16 v2, v26

    :goto_f
    move-object v14, v1

    move-object v13, v5

    move-object v12, v7

    move-object v5, v10

    move-object v9, v15

    move/from16 v7, p3

    move-object v10, v8

    move-object v15, v11

    move-object v8, v4

    move-object/from16 v4, v28

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v26, v2

    move-object/from16 v28, v4

    move-object v4, v8

    move-object v8, v10

    move-object v7, v12

    move-object v1, v14

    move-object v11, v15

    const/4 v14, 0x0

    move-object v10, v5

    move-object v15, v9

    move-object v5, v13

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_28

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v16

    check-cast v20, Landroidx/fragment/app/DefaultSpecialEffectsController$g;

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->d()Z

    move-result v16

    if-eqz v16, :cond_1c

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v14

    move-object/from16 p3, v9

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    move-object/from16 v9, p3

    :goto_11
    const/4 v14, 0x0

    goto :goto_10

    :cond_1c
    move-object/from16 p3, v9

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$g;->h()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v14

    if-eqz v0, :cond_1e

    if-eq v14, v4, :cond_1d

    if-ne v14, v15, :cond_1e

    :cond_1d
    const/16 v17, 0x1

    goto :goto_12

    :cond_1e
    const/16 v17, 0x0

    :goto_12
    if-nez v9, :cond_20

    if-nez v17, :cond_1f

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    :cond_1f
    move-object/from16 v29, v1

    move-object/from16 v24, v3

    move-object/from16 v30, v7

    move-object/from16 v32, v10

    move-object v1, v12

    move-object v7, v13

    move-object v10, v15

    move-object/from16 v3, v26

    const/4 v13, 0x0

    const/16 v23, 0x1

    move-object/from16 v12, p2

    goto/16 :goto_16

    :cond_20
    move-object/from16 v24, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v12

    invoke-virtual {v14}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v12

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v3, v12}, Landroidx/fragment/app/DefaultSpecialEffectsController;->t(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v17, :cond_22

    if-ne v14, v4, :cond_21

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_21
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_22
    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-virtual {v11, v9, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->a(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v12, p2

    move-object/from16 v29, v1

    move-object/from16 v30, v7

    move-object/from16 v32, v10

    move-object v7, v13

    move-object v13, v14

    move-object v10, v15

    move-object/from16 v1, v18

    const/16 v23, 0x1

    goto :goto_14

    :cond_23
    invoke-virtual {v11, v9, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v19, 0x0

    const/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v27, 0x0

    move-object/from16 v29, v1

    move-object/from16 v1, v18

    move-object v12, v11

    move-object/from16 v30, v7

    move-object v7, v13

    move-object v13, v9

    move-object/from16 v31, v14

    const/16 v23, 0x1

    move-object v14, v9

    move-object/from16 v32, v10

    move-object v10, v15

    move-object v15, v3

    move-object/from16 v16, v17

    move-object/from16 v17, v27

    move-object/from16 v18, v19

    move-object/from16 v19, v25

    invoke-virtual/range {v12 .. v19}, Landroidx/fragment/app/FragmentTransitionImpl;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual/range {v31 .. v31}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v12

    sget-object v13, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v12, v13, :cond_24

    move-object/from16 v12, p2

    move-object/from16 v13, v31

    invoke-interface {v12, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v15

    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v15

    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v11, v9, v15, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->m(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    move-result-object v14

    new-instance v15, Landroidx/fragment/app/DefaultSpecialEffectsController$8;

    invoke-direct {v15, v6, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$8;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;)V

    invoke-static {v14, v15}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_14

    :cond_24
    move-object/from16 v12, p2

    move-object/from16 v13, v31

    :goto_14
    invoke-virtual {v13}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v14

    sget-object v15, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v14, v15, :cond_26

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v21, :cond_25

    invoke-virtual {v11, v9, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->o(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_25
    move-object/from16 v3, v26

    goto :goto_15

    :cond_26
    move-object/from16 v3, v26

    invoke-virtual {v11, v9, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->p(Ljava/lang/Object;Landroid/view/View;)V

    :goto_15
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, Landroidx/fragment/app/DefaultSpecialEffectsController$g;->j()Z

    move-result v13

    if-eqz v13, :cond_27

    const/4 v13, 0x0

    invoke-virtual {v11, v7, v9, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_16

    :cond_27
    const/4 v13, 0x0

    invoke-virtual {v11, v1, v9, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_16
    move-object/from16 v9, p3

    move-object v12, v1

    move-object/from16 v26, v3

    move-object v13, v7

    move-object v15, v10

    move-object/from16 v3, v24

    move-object/from16 v1, v29

    move-object/from16 v7, v30

    move-object/from16 v10, v32

    goto/16 :goto_11

    :cond_28
    move-object/from16 v24, v3

    move-object/from16 v30, v7

    move-object/from16 v32, v10

    move-object v1, v12

    move-object v7, v13

    move-object v10, v15

    const/16 v23, 0x1

    invoke-virtual {v11, v7, v1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    return-object v8

    :cond_29
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/DefaultSpecialEffectsController$g;

    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->d()Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_17

    :cond_2a
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$g;->h()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v9

    if-eqz v0, :cond_2c

    if-eq v9, v4, :cond_2b

    if-ne v9, v10, :cond_2c

    :cond_2b
    move/from16 v12, v23

    goto :goto_18

    :cond_2c
    const/4 v12, 0x0

    :goto_18
    if-nez v7, :cond_2e

    if-eqz v12, :cond_2d

    goto :goto_19

    :cond_2d
    move-object/from16 v12, v24

    goto :goto_1b

    :cond_2e
    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_30

    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v7

    if-eqz v7, :cond_2f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SpecialEffectsController: Container "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " has not been laid out. Completing operation "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v12, v24

    invoke-static {v12, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_2f
    move-object/from16 v12, v24

    :goto_1a
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->a()V

    goto :goto_1b

    :cond_30
    move-object/from16 v12, v24

    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->b()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$f;->c()Landroidx/core/os/e;

    move-result-object v13

    new-instance v14, Landroidx/fragment/app/DefaultSpecialEffectsController$9;

    invoke-direct {v14, v6, v5, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$9;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$g;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v11, v7, v1, v13, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->q(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/e;Ljava/lang/Runnable;)V

    :goto_1b
    move-object/from16 v24, v12

    goto :goto_17

    :cond_31
    move-object/from16 v12, v24

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_32

    return-object v8

    :cond_32
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroidx/fragment/app/x;->e(Ljava/util/ArrayList;I)V

    move-object/from16 v3, v32

    invoke-virtual {v11, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->l(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-static/range {v22 .. v22}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v4

    if-eqz v4, :cond_34

    const-string v4, ">>>>> Beginning transition <<<<<"

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ">>>>> SharedElementFirstOutViews <<<<<"

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v7, " Name: "

    const-string v9, "View: "

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_33
    const-string v4, ">>>>> SharedElementLastInViews <<<<<"

    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v11, v4, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->m()Landroid/view/ViewGroup;

    move-result-object v13

    move-object v12, v11

    move-object/from16 v14, v30

    move-object v15, v3

    move-object/from16 v17, v28

    invoke-virtual/range {v12 .. v17}, Landroidx/fragment/app/FragmentTransitionImpl;->r(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroidx/fragment/app/x;->e(Ljava/util/ArrayList;I)V

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v8
.end method

.method private y(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$h;

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$h;

    iget v3, v3, Landroidx/fragment/app/Fragment$h;->c:I

    iput v3, v2, Landroidx/fragment/app/Fragment$h;->c:I

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$h;

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$h;

    iget v3, v3, Landroidx/fragment/app/Fragment$h;->d:I

    iput v3, v2, Landroidx/fragment/app/Fragment$h;->d:I

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$h;

    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$h;

    iget v3, v3, Landroidx/fragment/app/Fragment$h;->e:I

    iput v3, v2, Landroidx/fragment/app/Fragment$h;->e:I

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$h;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$h;

    iget v2, v2, Landroidx/fragment/app/Fragment$h;->f:I

    iput v2, v1, Landroidx/fragment/app/Fragment$h;->f:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method f(Ljava/util/List;Z)V
    .locals 13

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v8, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v9, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v4

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v4

    sget-object v5, Landroidx/fragment/app/DefaultSpecialEffectsController$a;->a:[I

    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v3, :cond_2

    if-eq v5, v9, :cond_2

    const/4 v3, 0x3

    if-eq v5, v3, :cond_2

    const/4 v3, 0x4

    if-eq v5, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v4, v3, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_2
    sget-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v4, v3, :cond_0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result v0

    const-string v10, " to "

    const-string v11, "FragmentManager"

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing operations from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->y(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    new-instance v5, Landroidx/core/os/e;

    invoke-direct {v5}, Landroidx/core/os/e;-><init>()V

    invoke-virtual {v2, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->j(Landroidx/core/os/e;)V

    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$e;

    invoke-direct {v6, v2, v5, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$e;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/e;Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroidx/core/os/e;

    invoke-direct {v5}, Landroidx/core/os/e;-><init>()V

    invoke-virtual {v2, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->j(Landroidx/core/os/e;)V

    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$g;

    const/4 v7, 0x0

    if-eqz p2, :cond_5

    if-ne v2, v1, :cond_6

    :goto_2
    move v7, v3

    goto :goto_3

    :cond_5
    if-ne v2, v8, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    invoke-direct {v6, v2, v5, p2, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$g;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/e;ZZ)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    invoke-direct {v5, p0, v12, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v2, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    move-object v2, p0

    move-object v3, v4

    move-object v4, v12

    move v5, p2

    move-object v6, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/DefaultSpecialEffectsController;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {p0, v0, v12, p2, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->s(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    goto :goto_4

    :cond_8
    invoke-interface {v12}, Ljava/util/List;->clear()V

    invoke-static {v9}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Completed executing operations from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method s(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->e()Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    return-void
.end method

.method t(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupCompat;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->t(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method u(Ljava/util/Map;Landroid/view/View;)V
    .locals 4

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->u(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method v(Landroidx/collection/a;Ljava/util/Collection;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/collection/a;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
