.class public final Landroidx/compose/foundation/s;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/m1;
.implements Landroidx/compose/ui/node/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/s$a;
    }
.end annotation


# static fields
.field public static final q:Landroidx/compose/foundation/s$a;

.field public static final r:I


# instance fields
.field private n:Z

.field private final o:Z

.field private p:Landroidx/compose/ui/layout/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/s;->q:Landroidx/compose/foundation/s$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/s;->r:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    return-void
.end method

.method private final D1()Landroidx/compose/foundation/t;
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/t;->p:Landroidx/compose/foundation/t$a;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/n1;->a(Landroidx/compose/ui/node/f;Ljava/lang/Object;)Landroidx/compose/ui/node/m1;

    move-result-object v0

    instance-of v2, v0, Landroidx/compose/foundation/t;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/t;

    :cond_0
    return-object v1
.end method

.method private final E1()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/s;->p:Landroidx/compose/ui/layout/l;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/compose/ui/layout/l;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/s;->D1()Landroidx/compose/foundation/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/s;->p:Landroidx/compose/ui/layout/l;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/t;->D1(Landroidx/compose/ui/layout/l;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public D()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/s;->q:Landroidx/compose/foundation/s$a;

    return-object v0
.end method

.method public final F1(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/foundation/s;->n:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroidx/compose/foundation/s;->D1()Landroidx/compose/foundation/t;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/t;->D1(Landroidx/compose/ui/layout/l;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/s;->E1()V

    :cond_2
    :goto_0
    iput-boolean p1, p0, Landroidx/compose/foundation/s;->n:Z

    return-void
.end method

.method public i1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/s;->o:Z

    return v0
.end method

.method public v(Landroidx/compose/ui/layout/l;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/s;->p:Landroidx/compose/ui/layout/l;

    iget-boolean v0, p0, Landroidx/compose/foundation/s;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/l;->F()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/compose/foundation/s;->E1()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/s;->D1()Landroidx/compose/foundation/t;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/t;->D1(Landroidx/compose/ui/layout/l;)V

    :cond_2
    :goto_0
    return-void
.end method
