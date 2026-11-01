.class public abstract Landroidx/compose/foundation/lazy/LazyListItemProviderKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)Lkotlin/jvm/functions/Function0;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.lazy.rememberLazyListItemProviderLambda (LazyListItemProvider.kt:43)"

    const v2, -0x147cff54

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    shr-int/lit8 v0, p3, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object p1

    and-int/lit8 v0, p3, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 p3, p3, 0x6

    if-ne p3, v1, :cond_3

    :cond_2
    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_4

    sget-object p3, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {p3}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object p3

    if-ne v0, p3, :cond_5

    :cond_4
    new-instance p3, Landroidx/compose/foundation/lazy/c;

    invoke-direct {p3}, Landroidx/compose/foundation/lazy/c;-><init>()V

    invoke-static {}, Landroidx/compose/runtime/r2;->h()Landroidx/compose/runtime/q2;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$intervalContentState$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$intervalContentState$1;-><init>(Landroidx/compose/runtime/a3;)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/r2;->b(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/a3;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/r2;->h()Landroidx/compose/runtime/q2;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;

    invoke-direct {v1, p1, p0, p3}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;-><init>(Landroidx/compose/runtime/a3;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/c;)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/r2;->b(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/a3;

    move-result-object p0

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_5
    check-cast v0, Lkotlin/reflect/KProperty0;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_6
    return-object v0
.end method
