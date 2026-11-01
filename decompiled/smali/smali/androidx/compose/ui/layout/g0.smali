.class public abstract Landroidx/compose/ui/layout/g0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/g0$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lo0/u;->a(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/g0;->c:J

    invoke-static {}, Landroidx/compose/ui/layout/PlaceableKt;->c()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/g0;->d:J

    sget-object v0, Lo0/p;->b:Lo0/p$a;

    invoke-virtual {v0}, Lo0/p$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/g0;->e:J

    return-void
.end method

.method public static final synthetic a0(Landroidx/compose/ui/layout/g0;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/g0;->e:J

    return-wide v0
.end method

.method public static final synthetic g0(Landroidx/compose/ui/layout/g0;JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/g0;->w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public static final synthetic j0(Landroidx/compose/ui/layout/g0;JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/g0;->z0(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final v0()V
    .locals 4

    iget-wide v0, p0, Landroidx/compose/ui/layout/g0;->c:J

    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/ui/layout/g0;->d:J

    invoke-static {v1, v2}, Lo0/b;->n(J)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/layout/g0;->d:J

    invoke-static {v2, v3}, Lo0/b;->l(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/layout/g0;->a:I

    iget-wide v0, p0, Landroidx/compose/ui/layout/g0;->c:J

    invoke-static {v0, v1}, Lo0/t;->f(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/ui/layout/g0;->d:J

    invoke-static {v1, v2}, Lo0/b;->m(J)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/layout/g0;->d:J

    invoke-static {v2, v3}, Lo0/b;->k(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/layout/g0;->b:I

    iget v0, p0, Landroidx/compose/ui/layout/g0;->a:I

    iget-wide v1, p0, Landroidx/compose/ui/layout/g0;->c:J

    invoke-static {v1, v2}, Lo0/t;->g(J)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroidx/compose/ui/layout/g0;->b:I

    iget-wide v2, p0, Landroidx/compose/ui/layout/g0;->c:J

    invoke-static {v2, v3}, Lo0/t;->f(J)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lo0/q;->a(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/g0;->e:J

    return-void
.end method


# virtual methods
.method protected final B0(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/g0;->c:J

    invoke-static {v0, v1, p1, p2}, Lo0/t;->e(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/layout/g0;->c:J

    invoke-direct {p0}, Landroidx/compose/ui/layout/g0;->v0()V

    :cond_0
    return-void
.end method

.method protected final F0(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/g0;->d:J

    invoke-static {v0, v1, p1, p2}, Lo0/b;->f(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/layout/g0;->d:J

    invoke-direct {p0}, Landroidx/compose/ui/layout/g0;->v0()V

    :cond_0
    return-void
.end method

.method public synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/layout/y;->a(Landroidx/compose/ui/layout/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final k0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/g0;->e:J

    return-wide v0
.end method

.method public final l0()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/g0;->b:I

    return v0
.end method

.method public o0()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/g0;->c:J

    invoke-static {v0, v1}, Lo0/t;->f(J)I

    move-result v0

    return v0
.end method

.method protected final r0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/g0;->c:J

    return-wide v0
.end method

.method public s0()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/g0;->c:J

    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result v0

    return v0
.end method

.method protected final t0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/g0;->d:J

    return-wide v0
.end method

.method public final u0()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/g0;->a:I

    return v0
.end method

.method protected w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/g0;->z0(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected abstract z0(JFLkotlin/jvm/functions/Function1;)V
.end method
