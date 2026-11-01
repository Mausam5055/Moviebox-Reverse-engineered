.class final Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/text/x;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "Landroidx/compose/ui/text/x;",
        "invoke",
        "(Ljava/lang/Object;)Landroidx/compose/ui/text/x;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/x;
    .locals 29

    move-object/from16 v0, p1

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    new-instance v24, Landroidx/compose/ui/text/x;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->j(Landroidx/compose/ui/graphics/u1$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    instance-of v5, v3, Landroidx/compose/ui/text/j;

    if-nez v5, :cond_1

    :cond_0
    move-object v1, v6

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_0

    invoke-interface {v3, v1}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/u1;

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v7

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lo0/w;->b:Lo0/w$a;

    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->t(Lo0/w$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v5

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    instance-of v9, v5, Landroidx/compose/ui/text/j;

    if-nez v9, :cond_3

    :cond_2
    move-object v1, v6

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_2

    invoke-interface {v5, v1}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/w;

    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lo0/w;->k()J

    move-result-wide v10

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-static {v5}, Landroidx/compose/ui/text/SaversKt;->m(Landroidx/compose/ui/text/font/p$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v5

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    instance-of v9, v5, Landroidx/compose/ui/text/j;

    if-nez v9, :cond_5

    :cond_4
    move-object v12, v6

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_4

    invoke-interface {v5, v1}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/font/p;

    move-object v12, v1

    :goto_2
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Landroidx/compose/ui/text/font/n;

    move-object v13, v1

    goto :goto_3

    :cond_6
    move-object v13, v6

    :goto_3
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Landroidx/compose/ui/text/font/o;

    move-object v14, v1

    goto :goto_4

    :cond_7
    move-object v14, v6

    :goto_4
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    goto :goto_5

    :cond_8
    move-object v15, v6

    :goto_5
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->t(Lo0/w$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v3

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    instance-of v5, v3, Landroidx/compose/ui/text/j;

    if-nez v5, :cond_a

    :cond_9
    move-object v1, v6

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_9

    invoke-interface {v3, v1}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/w;

    :goto_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lo0/w;->k()J

    move-result-wide v16

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/text/style/a;->b:Landroidx/compose/ui/text/style/a$a;

    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->n(Landroidx/compose/ui/text/style/a$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v3

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    instance-of v5, v3, Landroidx/compose/ui/text/j;

    if-nez v5, :cond_c

    :cond_b
    move-object/from16 v18, v6

    goto :goto_7

    :cond_c
    if-eqz v1, :cond_b

    invoke-interface {v3, v1}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/style/a;

    move-object/from16 v18, v1

    :goto_7
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/text/style/m;->c:Landroidx/compose/ui/text/style/m$a;

    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->p(Landroidx/compose/ui/text/style/m$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v3

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    instance-of v5, v3, Landroidx/compose/ui/text/j;

    if-nez v5, :cond_e

    :cond_d
    move-object/from16 v19, v6

    goto :goto_8

    :cond_e
    if-eqz v1, :cond_d

    invoke-interface {v3, v1}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/style/m;

    move-object/from16 v19, v1

    :goto_8
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ln0/i;->c:Ln0/i$a;

    invoke-static {v3}, Landroidx/compose/ui/text/SaversKt;->s(Ln0/i$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v3

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    instance-of v5, v3, Landroidx/compose/ui/text/j;

    if-nez v5, :cond_10

    :cond_f
    move-object/from16 v25, v6

    goto :goto_9

    :cond_10
    if-eqz v1, :cond_f

    invoke-interface {v3, v1}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/i;

    move-object/from16 v25, v1

    :goto_9
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->j(Landroidx/compose/ui/graphics/u1$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v2

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    instance-of v3, v2, Landroidx/compose/ui/text/j;

    if-nez v3, :cond_12

    :cond_11
    move-object v1, v6

    goto :goto_a

    :cond_12
    if-eqz v1, :cond_11

    invoke-interface {v2, v1}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/u1;

    :goto_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v26

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/text/style/i;->b:Landroidx/compose/ui/text/style/i$a;

    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->o(Landroidx/compose/ui/text/style/i$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v2

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    instance-of v3, v2, Landroidx/compose/ui/text/j;

    if-nez v3, :cond_14

    :cond_13
    move-object/from16 v28, v6

    goto :goto_b

    :cond_14
    if-eqz v1, :cond_13

    invoke-interface {v2, v1}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/style/i;

    move-object/from16 v28, v1

    :goto_b
    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/z4;->d:Landroidx/compose/ui/graphics/z4$a;

    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->k(Landroidx/compose/ui/graphics/z4$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v1

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    instance-of v2, v1, Landroidx/compose/ui/text/j;

    if-nez v2, :cond_16

    :cond_15
    move-object v0, v6

    goto :goto_c

    :cond_16
    if-eqz v0, :cond_15

    invoke-interface {v1, v0}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/z4;

    :goto_c
    const v22, 0xc020

    const/16 v23, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, v24

    move-wide v2, v7

    move-wide v4, v10

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v10, v15

    move-wide/from16 v11, v16

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v15, v25

    move-wide/from16 v16, v26

    move-object/from16 v18, v28

    move-object/from16 v19, v0

    invoke-direct/range {v1 .. v23}, Landroidx/compose/ui/text/x;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v24
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/x;

    move-result-object p1

    return-object p1
.end method
