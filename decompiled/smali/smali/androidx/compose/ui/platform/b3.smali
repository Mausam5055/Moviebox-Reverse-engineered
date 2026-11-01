.class public abstract Landroidx/compose/ui/platform/b3;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/platform/b3;->a:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/m;)Landroidx/compose/runtime/d2;
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/o1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/o1;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    invoke-static {v0, p1}, Landroidx/compose/runtime/p;->b(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m;)Landroidx/compose/runtime/d2;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/l;
    .locals 3

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroidx/compose/ui/R$id;->inspection_slot_table_set:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Landroidx/compose/ui/R$id;->inspection_slot_table_set:I

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroidx/compose/ui/node/o1;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/o1;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    invoke-static {v0, p1}, Landroidx/compose/runtime/p;->a(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m;)Landroidx/compose/runtime/l;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Landroidx/compose/ui/R$id;->wrapped_composition_tag:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/compose/ui/platform/WrappedComposition;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/compose/ui/platform/WrappedComposition;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Landroidx/compose/ui/platform/WrappedComposition;

    invoke-direct {v1, p0, v0}, Landroidx/compose/ui/platform/WrappedComposition;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/l;)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Landroidx/compose/ui/R$id;->wrapped_composition_tag:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v1, p2}, Landroidx/compose/ui/platform/WrappedComposition;->d(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/compose/runtime/m;->h()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/m;->h()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setCoroutineContext(Lkotlin/coroutines/CoroutineContext;)V

    :cond_3
    return-object v1
.end method

.method public static final c(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/l;
    .locals 3

    sget-object v0, Landroidx/compose/ui/platform/GlobalSnapshotManager;->a:Landroidx/compose/ui/platform/GlobalSnapshotManager;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/GlobalSnapshotManager;->b()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/runtime/m;->h()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/platform/b3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v2}, Landroidx/compose/ui/platform/AbstractComposeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-static {v1, p1, p2}, Landroidx/compose/ui/platform/b3;->b(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/l;

    move-result-object p0

    return-object p0
.end method
