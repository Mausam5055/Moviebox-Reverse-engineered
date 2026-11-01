.class public final Landroidx/compose/foundation/q;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/d;
.implements Landroidx/compose/ui/focus/m;


# instance fields
.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    return-void
.end method

.method private final D1()Lc0/b;
    .locals 1

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->f()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/b;

    return-object v0
.end method


# virtual methods
.method public i1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/q;->n:Z

    return v0
.end method

.method public r0(Landroidx/compose/ui/focus/k;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/foundation/q;->D1()Lc0/b;

    move-result-object v0

    invoke-interface {v0}, Lc0/b;->a()I

    move-result v0

    sget-object v1, Lc0/a;->b:Lc0/a$a;

    invoke-virtual {v1}, Lc0/a$a;->b()I

    move-result v1

    invoke-static {v0, v1}, Lc0/a;->f(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/k;->r(Z)V

    return-void
.end method
