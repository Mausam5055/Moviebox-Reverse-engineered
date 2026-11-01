.class public final Landroidx/work/impl/constraints/controllers/e;
.super Landroidx/work/impl/constraints/controllers/BaseConstraintController;


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Li4/g;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;-><init>(Li4/g;)V

    const/4 p1, 0x7

    iput p1, p0, Landroidx/work/impl/constraints/controllers/e;->b:I

    return-void
.end method


# virtual methods
.method public c(Landroidx/work/impl/model/j0;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    invoke-virtual {p1}, Landroidx/work/d;->f()Landroidx/work/NetworkType;

    move-result-object p1

    sget-object v0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected e()I
    .locals 1

    iget v0, p0, Landroidx/work/impl/constraints/controllers/e;->b:I

    return v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/work/impl/constraints/g;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/e;->g(Landroidx/work/impl/constraints/g;)Z

    move-result p1

    return p1
.end method

.method protected g(Landroidx/work/impl/constraints/g;)Z
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/work/impl/constraints/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/work/impl/constraints/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/work/impl/constraints/g;->g()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
