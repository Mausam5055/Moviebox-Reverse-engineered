.class public final Landroidx/work/impl/constraints/controllers/g;
.super Landroidx/work/impl/constraints/controllers/BaseConstraintController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/constraints/controllers/g$a;
    }
.end annotation


# static fields
.field private static final c:Landroidx/work/impl/constraints/controllers/g$a;

.field private static final d:Ljava/lang/String;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/constraints/controllers/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/constraints/controllers/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/constraints/controllers/g;->c:Landroidx/work/impl/constraints/controllers/g$a;

    const-string v0, "NetworkNotRoamingCtrlr"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/work/impl/constraints/controllers/g;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Li4/g;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;-><init>(Li4/g;)V

    const/4 p1, 0x7

    iput p1, p0, Landroidx/work/impl/constraints/controllers/g;->b:I

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

    sget-object v0, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

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

    iget v0, p0, Landroidx/work/impl/constraints/controllers/g;->b:I

    return v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/work/impl/constraints/g;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/g;->g(Landroidx/work/impl/constraints/g;)Z

    move-result p1

    return p1
.end method

.method protected g(Landroidx/work/impl/constraints/g;)Z
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/constraints/controllers/g;->d:Ljava/lang/String;

    const-string v4, "Not-roaming network constraint is not supported before API 24, only checking for connected state."

    invoke-virtual {v0, v1, v4}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/work/impl/constraints/g;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/work/impl/constraints/g;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/work/impl/constraints/g;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/work/impl/constraints/g;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/work/impl/constraints/g;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_2
    :goto_0
    return v2
.end method
