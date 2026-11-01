.class public abstract Landroidx/compose/foundation/lazy/layout/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/k$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/foundation/lazy/layout/k$a;

.field public static final b:I

.field private static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/layout/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/layout/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/k;->a:Landroidx/compose/foundation/lazy/layout/k$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/layout/k;->b:I

    const v0, 0x7fffffff

    invoke-static {v0, v0}, Lo0/q;->a(II)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/lazy/layout/k;->c:J

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Landroidx/compose/foundation/lazy/layout/k;->c:J

    return-wide v0
.end method


# virtual methods
.method public abstract b(JZ)V
.end method

.method public abstract c()V
.end method

.method public abstract d()J
.end method

.method public abstract e()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
.end method

.method public abstract f()J
.end method

.method public abstract g()J
.end method

.method public abstract h()J
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
.end method

.method public abstract k(J)V
.end method

.method public abstract l(J)V
.end method

.method public abstract m(J)V
.end method
