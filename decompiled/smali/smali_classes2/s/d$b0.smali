.class public final Ls/d$b0;
.super Ls/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b0"
.end annotation


# static fields
.field public static final c:Ls/d$b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls/d$b0;

    invoke-direct {v0}, Ls/d$b0;-><init>()V

    sput-object v0, Ls/d$b0;->c:Ls/d$b0;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Ls/d;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 5

    const/4 p2, 0x0

    invoke-static {p2}, Ls/d$q;->a(I)I

    move-result p2

    invoke-interface {p1, p2}, Ls/e;->b(I)I

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/runtime/m2;->e0()I

    move-result p2

    invoke-virtual {p3}, Landroidx/compose/runtime/m2;->c0()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/m2;->d1(I)I

    move-result v1

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/m2;->c1(I)I

    move-result v0

    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {p3}, Landroidx/compose/runtime/m2;->k(Landroidx/compose/runtime/m2;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p3, v1}, Landroidx/compose/runtime/m2;->d(Landroidx/compose/runtime/m2;I)I

    move-result v3

    aget-object v2, v2, v3

    instance-of v3, v2, Landroidx/compose/runtime/c2;

    if-eqz v3, :cond_0

    sub-int v3, p2, v1

    check-cast v2, Landroidx/compose/runtime/c2;

    invoke-virtual {v2}, Landroidx/compose/runtime/c2;->b()Landroidx/compose/runtime/b2;

    move-result-object v2

    const/4 v4, -0x1

    invoke-interface {p4, v2, v3, v4, v4}, Landroidx/compose/runtime/a2;->e(Landroidx/compose/runtime/b2;III)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->x()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/m2;->k1(I)V

    return-void
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ls/d$q;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$q;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "count"

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ls/d;->e(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
