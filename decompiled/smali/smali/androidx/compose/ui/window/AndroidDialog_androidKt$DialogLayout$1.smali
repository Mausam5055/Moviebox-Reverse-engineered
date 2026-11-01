.class final Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/AndroidDialog_androidKt;->c(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

    invoke-direct {v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;->a:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/compose/ui/layout/x;Ljava/util/List;J)Landroidx/compose/ui/layout/v;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/s;

    invoke-interface {v4, p3, p4}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    move-object p2, v1

    goto :goto_2

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroidx/compose/ui/layout/g0;

    invoke-virtual {v4}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v5

    if-gt v3, v5, :cond_3

    move v6, v3

    :goto_1
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/g0;

    invoke-virtual {v8}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v8

    if-ge v4, v8, :cond_2

    move-object p2, v7

    move v4, v8

    :cond_2
    if-eq v6, v5, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    check-cast p2, Landroidx/compose/ui/layout/g0;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result p2

    :goto_3
    move v5, p2

    goto :goto_4

    :cond_4
    invoke-static {p3, p4}, Lo0/b;->n(J)I

    move-result p2

    goto :goto_3

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_6

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/layout/g0;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v2

    if-gt v3, v2, :cond_7

    :goto_5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/layout/g0;

    invoke-virtual {v6}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v6

    if-ge v1, v6, :cond_6

    move-object p2, v4

    move v1, v6

    :cond_6
    if-eq v3, v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    move-object v1, p2

    :goto_6
    check-cast v1, Landroidx/compose/ui/layout/g0;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result p2

    :goto_7
    move v6, p2

    goto :goto_8

    :cond_8
    invoke-static {p3, p4}, Lo0/b;->m(J)I

    move-result p2

    goto :goto_7

    :goto_8
    new-instance v8, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;

    invoke-direct {v8, v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;-><init>(Ljava/util/List;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method
