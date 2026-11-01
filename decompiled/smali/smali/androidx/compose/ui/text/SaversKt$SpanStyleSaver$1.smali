.class final Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/saveable/e;",
        "Landroidx/compose/ui/text/x;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroidx/compose/runtime/saveable/e;",
        "Landroidx/compose/ui/text/x;",
        "it",
        "",
        "invoke",
        "(Landroidx/compose/runtime/saveable/e;Landroidx/compose/ui/text/x;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/saveable/e;Landroidx/compose/ui/text/x;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->j(Landroidx/compose/ui/graphics/u1$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->k()J

    move-result-wide v3

    invoke-static {v3, v4}, Lo0/w;->b(J)Lo0/w;

    move-result-object v3

    sget-object v4, Lo0/w;->b:Lo0/w$a;

    invoke-static {v4}, Landroidx/compose/ui/text/SaversKt;->t(Lo0/w$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->m(Landroidx/compose/ui/text/font/p$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/ui/text/SaversKt;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/ui/text/SaversKt;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/ui/text/SaversKt;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->o()J

    move-result-wide v10

    invoke-static {v10, v11}, Lo0/w;->b(J)Lo0/w;

    move-result-object v10

    invoke-static {v4}, Landroidx/compose/ui/text/SaversKt;->t(Lo0/w$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v4

    invoke-static {v10, v4, v0}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/text/style/a;->b:Landroidx/compose/ui/text/style/a$a;

    invoke-static {v11}, Landroidx/compose/ui/text/SaversKt;->n(Landroidx/compose/ui/text/style/a$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/text/style/m;->c:Landroidx/compose/ui/text/style/m$a;

    invoke-static {v12}, Landroidx/compose/ui/text/SaversKt;->p(Landroidx/compose/ui/text/style/m$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    move-result-object v12

    sget-object v13, Ln0/i;->c:Ln0/i$a;

    invoke-static {v13}, Landroidx/compose/ui/text/SaversKt;->s(Ln0/i$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->d()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    move-result-object v13

    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->j(Landroidx/compose/ui/graphics/u1$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/text/style/i;->b:Landroidx/compose/ui/text/style/i$a;

    invoke-static {v14}, Landroidx/compose/ui/text/SaversKt;->o(Landroidx/compose/ui/text/style/i$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v14

    invoke-static {v13, v14, v0}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/graphics/z4;->d:Landroidx/compose/ui/graphics/z4$a;

    invoke-static {v15}, Landroidx/compose/ui/text/SaversKt;->k(Landroidx/compose/ui/graphics/z4$a;)Landroidx/compose/runtime/saveable/d;

    move-result-object v15

    invoke-static {v14, v15, v0}, Landroidx/compose/ui/text/SaversKt;->y(Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/e;)Ljava/lang/Object;

    move-result-object v0

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v1, 0x1

    aput-object v3, v14, v1

    const/4 v1, 0x2

    aput-object v5, v14, v1

    const/4 v1, 0x3

    aput-object v6, v14, v1

    const/4 v1, 0x4

    aput-object v7, v14, v1

    const/4 v1, 0x5

    aput-object v8, v14, v1

    const/4 v1, 0x6

    aput-object v9, v14, v1

    const/4 v1, 0x7

    aput-object v4, v14, v1

    const/16 v1, 0x8

    aput-object v10, v14, v1

    const/16 v1, 0x9

    aput-object v11, v14, v1

    const/16 v1, 0xa

    aput-object v12, v14, v1

    const/16 v1, 0xb

    aput-object v2, v14, v1

    const/16 v1, 0xc

    aput-object v13, v14, v1

    const/16 v1, 0xd

    aput-object v0, v14, v1

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/saveable/e;

    check-cast p2, Landroidx/compose/ui/text/x;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;->invoke(Landroidx/compose/runtime/saveable/e;Landroidx/compose/ui/text/x;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
