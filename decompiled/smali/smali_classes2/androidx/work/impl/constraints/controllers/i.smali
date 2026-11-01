.class public final Landroidx/work/impl/constraints/controllers/i;
.super Landroidx/work/impl/constraints/controllers/BaseConstraintController;


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Li4/g;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;-><init>(Li4/g;)V

    const/16 p1, 0x9

    iput p1, p0, Landroidx/work/impl/constraints/controllers/i;->b:I

    return-void
.end method


# virtual methods
.method public c(Landroidx/work/impl/model/j0;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    invoke-virtual {p1}, Landroidx/work/d;->k()Z

    move-result p1

    return p1
.end method

.method protected e()I
    .locals 1

    iget v0, p0, Landroidx/work/impl/constraints/controllers/i;->b:I

    return v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/i;->g(Z)Z

    move-result p1

    return p1
.end method

.method protected g(Z)Z
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
