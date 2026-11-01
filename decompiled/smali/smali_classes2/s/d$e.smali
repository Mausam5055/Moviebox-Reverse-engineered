.class public final Ls/d$e;
.super Ls/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final c:Ls/d$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls/d$e;

    invoke-direct {v0}, Ls/d$e;-><init>()V

    sput-object v0, Ls/d$e;->c:Ls/d$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, v0, v1}, Ls/d;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 0

    const/4 p2, 0x2

    invoke-static {p2}, Ls/d$t;->a(I)I

    move-result p2

    invoke-interface {p1, p2}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/y0;

    const/4 p3, 0x3

    invoke-static {p3}, Ls/d$t;->a(I)I

    move-result p3

    invoke-interface {p1, p3}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/runtime/y0;

    const/4 p3, 0x1

    invoke-static {p3}, Ls/d$t;->a(I)I

    move-result p3

    invoke-interface {p1, p3}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/runtime/m;

    const/4 p4, 0x0

    invoke-static {p4}, Ls/d$t;->a(I)I

    move-result p4

    invoke-interface {p1, p4}, Ls/e;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/x0;

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/m;->l(Landroidx/compose/runtime/y0;)Landroidx/compose/runtime/x0;

    const-string p1, "Could not resolve state for movable content"

    invoke-static {p1}, Landroidx/compose/runtime/k;->s(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "resolvedState"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "resolvedCompositionContext"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "from"

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Ls/d$t;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Ls/d$t;->b(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "to"

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Ls/d;->f(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
