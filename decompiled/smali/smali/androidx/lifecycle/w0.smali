.class public abstract synthetic Landroidx/lifecycle/w0;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/lifecycle/v0$c;Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 0

    const-string p0, "modelClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lq1/g;->a:Lq1/g;

    invoke-virtual {p0}, Lq1/g;->d()Landroidx/lifecycle/t0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroidx/lifecycle/v0$c;Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/lifecycle/v0$c;->create(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroidx/lifecycle/v0$c;Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/v0$c;->create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p0

    return-object p0
.end method
