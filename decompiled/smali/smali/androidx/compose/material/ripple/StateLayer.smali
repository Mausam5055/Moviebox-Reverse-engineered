.class final Landroidx/compose/material/ripple/StateLayer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Lkotlin/jvm/functions/Function0;

.field private final c:Landroidx/compose/animation/core/Animatable;

.field private final d:Ljava/util/List;

.field private e:Lp/f;


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material/ripple/StateLayer;->a:Z

    iput-object p2, p0, Landroidx/compose/material/ripple/StateLayer;->b:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {v0, v0, p1, p2}, Landroidx/compose/animation/core/a;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->c:Landroidx/compose/animation/core/Animatable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/material/ripple/StateLayer;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material/ripple/StateLayer;->c:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method


# virtual methods
.method public final b(Lz/g;FJ)V
    .locals 22

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/material/ripple/StateLayer;->c:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_1

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide v11

    iget-boolean v0, v1, Landroidx/compose/material/ripple/StateLayer;->a:Z

    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Lz/g;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ly/m;->i(J)F

    move-result v7

    invoke-interface/range {p1 .. p1}, Lz/g;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ly/m;->g(J)F

    move-result v8

    sget-object v0, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/t1$a;->b()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Lz/g;->H0()Lz/d;

    move-result-object v2

    invoke-interface {v2}, Lz/d;->i()J

    move-result-wide v14

    invoke-interface {v2}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->n()V

    :try_start_0
    invoke-interface {v2}, Lz/d;->c()Lz/j;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v9}, Lz/j;->a(FFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v20, 0x7c

    const/16 v21, 0x0

    const-wide/16 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v10, p1

    move/from16 v13, p2

    move-wide v5, v14

    move-wide v14, v3

    :try_start_1
    invoke-static/range {v10 .. v21}, Lz/f;->d(Lz/g;JFJFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-interface {v2, v5, v6}, Lz/d;->f(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide v5, v14

    :goto_0
    invoke-interface {v2}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-interface {v2, v5, v6}, Lz/d;->f(J)V

    throw v0

    :cond_0
    const/16 v20, 0x7c

    const/16 v21, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v10, p1

    move/from16 v13, p2

    invoke-static/range {v10 .. v21}, Lz/f;->d(Lz/g;JFJFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final c(Lp/f;Lkotlinx/coroutines/n0;)V
    .locals 9

    instance-of v0, p1, Lp/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lp/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lp/e;

    invoke-virtual {v2}, Lp/e;->a()Lp/d;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lp/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lp/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lp/c;

    invoke-virtual {v2}, Lp/c;->a()Lp/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lp/a$b;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v1, p1, Lp/a$c;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lp/a$c;

    invoke-virtual {v2}, Lp/a$c;->a()Lp/a$b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v1, p1, Lp/a$a;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lp/a$a;

    invoke-virtual {v2}, Lp/a$a;->a()Lp/a$b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/f;

    iget-object v2, p0, Landroidx/compose/material/ripple/StateLayer;->e:Lp/f;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v3, p0, Landroidx/compose/material/ripple/StateLayer;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material/ripple/c;

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Landroidx/compose/material/ripple/c;->c()F

    move-result p1

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lp/b;

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Landroidx/compose/material/ripple/c;->b()F

    move-result p1

    goto :goto_1

    :cond_7
    instance-of p1, p1, Lp/a$b;

    if-eqz p1, :cond_8

    invoke-virtual {v3}, Landroidx/compose/material/ripple/c;->a()F

    move-result p1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    invoke-static {v1}, Landroidx/compose/material/ripple/h;->a(Lp/f;)Landroidx/compose/animation/core/g;

    move-result-object v0

    new-instance v6, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;

    invoke-direct {v6, p0, p1, v0, v2}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;-><init>(Landroidx/compose/material/ripple/StateLayer;FLandroidx/compose/animation/core/g;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_2

    :cond_9
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->e:Lp/f;

    invoke-static {p1}, Landroidx/compose/material/ripple/h;->b(Lp/f;)Landroidx/compose/animation/core/g;

    move-result-object p1

    new-instance v6, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;

    invoke-direct {v6, p0, p1, v2}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;-><init>(Landroidx/compose/material/ripple/StateLayer;Landroidx/compose/animation/core/g;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_2
    iput-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->e:Lp/f;

    :cond_a
    return-void
.end method
