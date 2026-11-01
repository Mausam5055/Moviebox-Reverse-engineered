.class public final Landroidx/compose/ui/platform/w2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/platform/v2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/w2$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/platform/w2$a;

.field private static final c:Landroidx/compose/runtime/i1;


# instance fields
.field private final a:Landroidx/compose/runtime/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/platform/w2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/w2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/w2;->b:Landroidx/compose/ui/platform/w2$a;

    invoke-static {}, Landroidx/compose/ui/input/pointer/r;->a()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/g0;->a(I)Landroidx/compose/ui/input/pointer/g0;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/w2;->c:Landroidx/compose/runtime/i1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/w2;->a:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/w2;->c:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Landroidx/compose/ui/input/pointer/g0;->a(I)Landroidx/compose/ui/input/pointer/g0;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/w2;->a:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
