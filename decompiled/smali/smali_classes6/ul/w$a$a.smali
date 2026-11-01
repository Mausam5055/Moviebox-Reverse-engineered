.class final Lul/w$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lul/w$a;->c(Landroidx/compose/runtime/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/bean/FilterVal;

.field final synthetic b:Landroidx/compose/foundation/layout/k;

.field final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/FilterVal;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lul/w$a$a;->a:Lcom/transsion/home/bean/FilterVal;

    iput-object p2, p0, Lul/w$a$a;->b:Landroidx/compose/foundation/layout/k;

    iput-object p3, p0, Lul/w$a$a;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lul/w$a$a;->c(Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/home/bean/FilterVal;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/compose/foundation/lazy/b;Landroidx/compose/runtime/i;I)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v1, p3

    const-string v2, "$this$item"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->h()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->G()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.transsion.home.view.filter.popup.SingleSelectFilter.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (SingleFilterPopupWindow.kt:114)"

    const v5, 0x3346a12e

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lul/w$a$a;->a:Lcom/transsion/home/bean/FilterVal;

    invoke-virtual {v1}, Lcom/transsion/home/bean/FilterVal;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/h$a;->b()Landroidx/compose/ui/text/font/s;

    move-result-object v16

    sget-object v2, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/p$a;->b()Landroidx/compose/ui/text/font/p;

    move-result-object v8

    sget-object v2, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/p$a;->b()I

    move-result v22

    invoke-static {v3}, Lo0/x;->c(I)J

    move-result-wide v5

    sget-object v2, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/u1$a;->f()J

    move-result-wide v26

    iget-object v2, v0, Lul/w$a$a;->b:Landroidx/compose/foundation/layout/k;

    sget-object v4, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v10, v7, v11}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v7

    int-to-float v3, v3

    invoke-static {v3}, Lo0/i;->g(F)F

    move-result v3

    const/4 v12, 0x2

    invoke-static {v7, v3, v10, v12, v11}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v7}, Landroidx/compose/ui/b$a;->f()Landroidx/compose/ui/b$b;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Landroidx/compose/foundation/layout/k;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/b$b;)Landroidx/compose/ui/f;

    move-result-object v28

    const v2, -0x615d173a

    invoke-interface {v9, v2}, Landroidx/compose/runtime/i;->P(I)V

    iget-object v2, v0, Lul/w$a$a;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lul/w$a$a;->a:Lcom/transsion/home/bean/FilterVal;

    invoke-interface {v9, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Lul/w$a$a;->c:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lul/w$a$a;->a:Lcom/transsion/home/bean/FilterVal;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v10

    if-nez v2, :cond_3

    sget-object v2, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v2}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v10, v2, :cond_4

    :cond_3
    new-instance v10, Lul/v;

    invoke-direct {v10, v3, v7}, Lul/v;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/FilterVal;)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v32, v10

    check-cast v32, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->K()V

    const/16 v33, 0x7

    const/16 v34, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v28 .. v34}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v2

    const/16 v24, 0x30

    const v25, 0x1f790

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v23, 0x30d80

    move-object/from16 v35, v4

    move-wide/from16 v3, v26

    move-object/from16 v9, v16

    move/from16 v16, v22

    move-object/from16 v22, p2

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->a(Ljava/lang/String;Landroidx/compose/ui/f;JJLandroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/h;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/text/style/h;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/d0;Landroidx/compose/runtime/i;III)V

    const/16 v1, 0x25

    int-to-float v1, v1

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v1

    move-object/from16 v2, v35

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v1

    const/4 v2, 0x6

    move-object/from16 v3, p2

    invoke-static {v1, v3, v2}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/lazy/b;

    check-cast p2, Landroidx/compose/runtime/i;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lul/w$a$a;->b(Landroidx/compose/foundation/lazy/b;Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
