.class public abstract Lp1/d;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/lifecycle/v0$c;Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/v0$c;->create(Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroidx/lifecycle/v0$c;->create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/lifecycle/v0$c;->create(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p0

    :goto_0
    return-object p0
.end method
