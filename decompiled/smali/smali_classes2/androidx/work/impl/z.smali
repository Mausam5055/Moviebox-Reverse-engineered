.class public abstract synthetic Landroidx/work/impl/z;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/work/impl/a0;->a:Landroidx/work/impl/a0$a;

    return-void
.end method

.method public static a(Landroidx/work/impl/a0;Landroidx/work/impl/model/j0;)Landroidx/work/impl/y;
    .locals 1

    const-string v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/work/impl/a0;->d(Landroidx/work/impl/model/x;)Landroidx/work/impl/y;

    move-result-object p0

    return-object p0
.end method

.method public static b()Landroidx/work/impl/a0;
    .locals 1

    sget-object v0, Landroidx/work/impl/a0;->a:Landroidx/work/impl/a0$a;

    invoke-virtual {v0}, Landroidx/work/impl/a0$a;->a()Landroidx/work/impl/a0;

    move-result-object v0

    return-object v0
.end method

.method public static c(Z)Landroidx/work/impl/a0;
    .locals 1

    sget-object v0, Landroidx/work/impl/a0;->a:Landroidx/work/impl/a0$a;

    invoke-virtual {v0, p0}, Landroidx/work/impl/a0$a;->b(Z)Landroidx/work/impl/a0;

    move-result-object p0

    return-object p0
.end method
