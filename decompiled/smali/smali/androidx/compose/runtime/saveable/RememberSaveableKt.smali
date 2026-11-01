.class public abstract Landroidx/compose/runtime/saveable/RememberSaveableKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x24


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/saveable/b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d(Landroidx/compose/runtime/saveable/b;Ljava/lang/Object;)V

    return-void
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable()."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c([Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;II)Ljava/lang/Object;
    .locals 9

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/compose/runtime/saveable/SaverKt;->b()Landroidx/compose/runtime/saveable/d;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p6, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p6

    if-eqz p6, :cond_2

    const/4 p6, -0x1

    const-string v1, "androidx.compose.runtime.saveable.rememberSaveable (RememberSaveable.kt:70)"

    const v2, 0x1a56bfab

    invoke-static {v2, p5, p6, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_2
    const/4 p6, 0x0

    invoke-static {p4, p6}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    sget p2, Landroidx/compose/runtime/saveable/RememberSaveableKt;->a:I

    invoke-static {p2}, Lkotlin/text/CharsKt;->a(I)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p2

    const-string v1, "toString(this, checkRadix(radix))"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.RememberSaveableKt.rememberSaveable, kotlin.Any>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->d()Landroidx/compose/runtime/s1;

    move-result-object v1

    invoke-interface {p4, v1}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/compose/runtime/saveable/b;

    invoke-interface {p4}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v7}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_7

    if-eqz v6, :cond_5

    invoke-interface {v6, p2}, Landroidx/compose/runtime/saveable/b;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v1}, Landroidx/compose/runtime/saveable/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    :cond_6
    move-object v4, v0

    new-instance v8, Landroidx/compose/runtime/saveable/SaveableHolder;

    move-object v0, v8

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/saveable/SaveableHolder;-><init>(Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/b;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {p4, v8}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    move-object v1, v8

    :cond_7
    check-cast v1, Landroidx/compose/runtime/saveable/SaveableHolder;

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/saveable/SaveableHolder;->d([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    :cond_8
    move-object p3, v0

    invoke-interface {p4, v1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v2, p5, 0x70

    xor-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-le v2, v3, :cond_9

    invoke-interface {p4, p1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    and-int/lit8 p5, p5, 0x30

    if-ne p5, v3, :cond_b

    :cond_a
    const/4 p5, 0x1

    goto :goto_0

    :cond_b
    move p5, p6

    :goto_0
    or-int/2addr p5, v0

    invoke-interface {p4, v6}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p5, v0

    invoke-interface {p4, p2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p5, v0

    invoke-interface {p4, p3}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p5, v0

    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p5, v0

    invoke-interface {p4}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v0

    if-nez p5, :cond_c

    invoke-virtual {v7}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object p5

    if-ne v0, p5, :cond_d

    :cond_c
    new-instance p5, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;

    move-object v0, p5

    move-object v2, p1

    move-object v3, v6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;-><init>(Landroidx/compose/runtime/saveable/SaveableHolder;Landroidx/compose/runtime/saveable/d;Landroidx/compose/runtime/saveable/b;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {p4, p5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_d
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p4, p6}, Landroidx/compose/runtime/g0;->e(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_e
    return-object p3
.end method

.method private static final d(Landroidx/compose/runtime/saveable/b;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/b;->a(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    instance-of v0, p1, Landroidx/compose/runtime/snapshots/r;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/runtime/snapshots/r;

    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/r;->getPolicy()Landroidx/compose/runtime/q2;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/r2;->g()Landroidx/compose/runtime/q2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/r;->getPolicy()Landroidx/compose/runtime/q2;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/r2;->j()Landroidx/compose/runtime/q2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroidx/compose/runtime/snapshots/r;->getPolicy()Landroidx/compose/runtime/q2;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/r2;->h()Landroidx/compose/runtime/q2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string p1, "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MutableState containing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable()."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method
