.class public abstract Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/runtime/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt$LocalSaveableStateRegistry$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaveableStateRegistryKt$LocalSaveableStateRegistry$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a:Landroidx/compose/runtime/s1;

    return-void
.end method

.method public static final a(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/b;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/saveable/c;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/saveable/c;-><init>(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->c(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static final c(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lkotlin/text/CharsKt;->c(C)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static final d()Landroidx/compose/runtime/s1;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a:Landroidx/compose/runtime/s1;

    return-object v0
.end method
