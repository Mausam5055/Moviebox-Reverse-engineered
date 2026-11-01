.class final Lcom/transsion/home/fragment/rank/RankAllFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/rank/RankAllFragment;->i0(Ljava/util/List;Ljava/lang/String;Landroidx/compose/runtime/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/bean/CategoryType;

.field final synthetic b:Lcom/transsion/home/fragment/rank/RankAllFragment;

.field final synthetic c:I

.field final synthetic d:Landroidx/compose/runtime/i1;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/CategoryType;Lcom/transsion/home/fragment/rank/RankAllFragment;ILandroidx/compose/runtime/i1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->a:Lcom/transsion/home/bean/CategoryType;

    iput-object p2, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->b:Lcom/transsion/home/fragment/rank/RankAllFragment;

    iput p3, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->c:I

    iput-object p4, p0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->d:Landroidx/compose/runtime/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/home/bean/CategoryType;Lcom/transsion/home/fragment/rank/RankAllFragment;ILandroidx/compose/runtime/i1;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->c(Lcom/transsion/home/bean/CategoryType;Lcom/transsion/home/fragment/rank/RankAllFragment;ILandroidx/compose/runtime/i1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lcom/transsion/home/bean/CategoryType;Lcom/transsion/home/fragment/rank/RankAllFragment;ILandroidx/compose/runtime/i1;)Lkotlin/Unit;
    .locals 3

    invoke-static {p3}, Lcom/transsion/home/fragment/rank/RankAllFragment;->n0(Landroidx/compose/runtime/i1;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/home/bean/CategoryType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/home/bean/CategoryType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/home/fragment/rank/RankAllFragment;->o0(Landroidx/compose/runtime/i1;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/home/fragment/rank/RankAllFragment;->p0(Lcom/transsion/home/fragment/rank/RankAllFragment;)Lcom/transsion/home/fragment/rank/RankListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/fragment/rank/RankListFragment;->startLoading()V

    :cond_0
    invoke-static {p1}, Lcom/transsion/home/fragment/rank/RankAllFragment;->t0(Lcom/transsion/home/fragment/rank/RankAllFragment;)Lcom/transsion/home/viewmodel/RankAllViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/transsion/home/fragment/rank/RankAllFragment;->n0(Landroidx/compose/runtime/i1;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/transsion/home/fragment/rank/RankAllFragment;->s0(Lcom/transsion/home/fragment/rank/RankAllFragment;)I

    move-result v1

    invoke-static {p1}, Lcom/transsion/home/fragment/rank/RankAllFragment;->r0(Lcom/transsion/home/fragment/rank/RankAllFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v1, v2}, Lcom/transsion/home/viewmodel/RankAllViewModel;->k(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    invoke-static {p1, p0, p2}, Lcom/transsion/home/fragment/rank/RankAllFragment;->u0(Lcom/transsion/home/fragment/rank/RankAllFragment;Lcom/transsion/home/bean/CategoryType;I)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/compose/foundation/lazy/b;Landroidx/compose/runtime/i;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "$this$item"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0x11

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->h()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->G()V

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v5, "com.transsion.home.fragment.rank.RankAllFragment.SetRankCategoryUI.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RankAllFragment.kt:282)"

    const v6, -0x40005ad5

    invoke-static {v6, v2, v3, v5}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_2
    iget-object v2, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->d:Landroidx/compose/runtime/i1;

    invoke-static {v2}, Lcom/transsion/home/fragment/rank/RankAllFragment;->n0(Landroidx/compose/runtime/i1;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->a:Lcom/transsion/home/bean/CategoryType;

    invoke-virtual {v3}, Lcom/transsion/home/bean/CategoryType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v3, Lcom/transsion/home/R$color;->rank_all_list_background:I

    goto :goto_1

    :cond_3
    sget v3, Lcom/transsion/home/R$color;->rank_all_category_background:I

    :goto_1
    sget-object v5, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v5}, Landroidx/compose/ui/b$a;->h()Landroidx/compose/ui/b$c;

    move-result-object v5

    sget-object v7, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    invoke-static {v7, v10, v6, v11}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x3

    invoke-static {v8, v11, v9, v12, v11}, Landroidx/compose/foundation/layout/SizeKt;->p(Landroidx/compose/ui/f;Landroidx/compose/ui/b$c;ZILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v13

    invoke-static {v3, v1, v9}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v14

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v3

    int-to-float v8, v9

    invoke-static {v8}, Lo0/i;->g(F)F

    move-result v8

    iget-object v13, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->b:Lcom/transsion/home/fragment/rank/RankAllFragment;

    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-static {v13}, Lcom/transsion/baseui/util/b;->a(Landroid/content/Context;)Z

    move-result v13

    if-ne v13, v6, :cond_4

    const/16 v6, 0x14

    int-to-float v6, v6

    :goto_2
    invoke-static {v6}, Lo0/i;->g(F)F

    move-result v6

    goto :goto_3

    :cond_4
    int-to-float v6, v4

    goto :goto_2

    :goto_3
    invoke-static {v3, v8, v6}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;

    move-result-object v13

    const v3, -0x48fade91

    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->P(I)V

    iget-object v3, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->a:Lcom/transsion/home/bean/CategoryType;

    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v3

    iget-object v6, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->b:Lcom/transsion/home/fragment/rank/RankAllFragment;

    invoke-interface {v1, v6}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    iget v6, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->c:I

    invoke-interface {v1, v6}, Landroidx/compose/runtime/i;->c(I)Z

    move-result v6

    or-int/2addr v3, v6

    iget-object v6, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->a:Lcom/transsion/home/bean/CategoryType;

    iget-object v8, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->b:Lcom/transsion/home/fragment/rank/RankAllFragment;

    iget v14, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->c:I

    iget-object v15, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->d:Landroidx/compose/runtime/i1;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_5

    sget-object v3, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v3}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v3

    if-ne v10, v3, :cond_6

    :cond_5
    new-instance v10, Lcom/transsion/home/fragment/rank/i;

    invoke-direct {v10, v6, v8, v14, v15}, Lcom/transsion/home/fragment/rank/i;-><init>(Lcom/transsion/home/bean/CategoryType;Lcom/transsion/home/fragment/rank/RankAllFragment;ILandroidx/compose/runtime/i1;)V

    invoke-interface {v1, v10}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v17, v10

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->K()V

    const/16 v18, 0x7

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v19}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v3

    iget-object v6, v0, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->a:Lcom/transsion/home/bean/CategoryType;

    sget-object v8, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/b;->c()Landroidx/compose/foundation/layout/b$d;

    move-result-object v8

    const/16 v10, 0x30

    invoke-static {v8, v5, v1, v10}, Landroidx/compose/foundation/layout/a0;->b(Landroidx/compose/foundation/layout/b$d;Landroidx/compose/ui/b$c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;

    move-result-object v5

    invoke-static {v1, v9}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v8

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v10

    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v3

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/f;

    if-nez v15, :cond_7

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->C()V

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->e()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v1, v14}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->o()V

    :goto_4
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v14

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v14, v5, v15}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v14, v10, v5}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-interface {v14}, Landroidx/compose/runtime/i;->e()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-interface {v14}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v14, v8, v5}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_a
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v14, v3, v5}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/foundation/layout/d0;->a:Landroidx/compose/foundation/layout/d0;

    const v3, 0x50b06b76

    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->P(I)V

    if-eqz v2, :cond_b

    int-to-float v3, v12

    invoke-static {v3}, Lo0/i;->g(F)F

    move-result v3

    invoke-static {v7, v3}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v3

    int-to-float v4, v4

    invoke-static {v4}, Lo0/i;->g(F)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v12

    sget v3, Lcom/tn/lib/widget/R$color;->brand:I

    invoke-static {v3, v1, v9}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v13

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v3

    invoke-static {v3, v1, v9}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->K()V

    if-eqz v2, :cond_c

    sget v2, Lcom/tn/lib/widget/R$color;->brand:I

    goto :goto_5

    :cond_c
    sget v2, Lcom/transsion/home/R$color;->rank_all_category_text:I

    :goto_5
    invoke-virtual {v6}, Lcom/transsion/home/bean/CategoryType;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    const-string v3, ""

    :cond_d
    move-object/from16 v22, v3

    invoke-static {v2, v1, v9}, Li0/b;->a(ILandroidx/compose/runtime/i;I)J

    move-result-wide v3

    const/16 v2, 0xe

    invoke-static {v2}, Lo0/x;->c(I)J

    move-result-wide v5

    sget-object v2, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v9

    sget-object v2, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/p$a;->c()Landroidx/compose/ui/text/font/p;

    move-result-object v8

    sget-object v2, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/p$a;->b()I

    move-result v16

    const/16 v2, 0xc

    int-to-float v2, v2

    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v2

    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-static {v7, v2, v12, v10, v11}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    const/16 v24, 0xdb0

    const v25, 0x1c790

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v23, 0x30c30

    move-object/from16 v1, v22

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->r()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_e
    :goto_6
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/lazy/b;

    check-cast p2, Landroidx/compose/runtime/i;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->b(Landroidx/compose/foundation/lazy/b;Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
