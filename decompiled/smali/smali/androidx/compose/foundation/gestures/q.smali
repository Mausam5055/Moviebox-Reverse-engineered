.class final Landroidx/compose/foundation/gestures/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/foundation/gestures/Orientation;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/foundation/gestures/q;-><init>(Landroidx/compose/foundation/gestures/Orientation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/q;->a:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p1, Ly/g;->b:Ly/g$a;

    invoke-virtual {p1}, Ly/g$a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/q;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/Orientation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/gestures/q;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    return-void
.end method

.method private final b(F)J
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/gestures/q;->a:Landroidx/compose/foundation/gestures/Orientation;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/q;->b:J

    invoke-static {v0, v1}, Ly/g;->k(J)F

    move-result v2

    invoke-static {v0, v1, v2}, Ly/g;->h(JF)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ly/g;->s(JF)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/compose/foundation/gestures/q;->b:J

    invoke-static {v2, v3, v0, v1}, Ly/g;->q(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/q;->b:J

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/gestures/q;->d(J)F

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/gestures/q;->b:J

    invoke-virtual {p0, v1, v2}, Landroidx/compose/foundation/gestures/q;->d(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iget-wide v1, p0, Landroidx/compose/foundation/gestures/q;->b:J

    invoke-virtual {p0, v1, v2}, Landroidx/compose/foundation/gestures/q;->c(J)F

    move-result p1

    iget-object v1, p0, Landroidx/compose/foundation/gestures/q;->a:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v1, v2, :cond_1

    invoke-static {v0, p1}, Ly/h;->a(FF)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Ly/h;->a(FF)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/input/pointer/w;F)Ly/g;
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->h()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/w;->k()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ly/g;->q(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/compose/foundation/gestures/q;->b:J

    invoke-static {v2, v3, v0, v1}, Ly/g;->r(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/q;->b:J

    iget-object p1, p0, Landroidx/compose/foundation/gestures/q;->a:Landroidx/compose/foundation/gestures/Orientation;

    if-nez p1, :cond_0

    invoke-static {v0, v1}, Ly/g;->k(J)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/gestures/q;->d(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :goto_0
    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    invoke-direct {p0, p2}, Landroidx/compose/foundation/gestures/q;->b(F)J

    move-result-wide p1

    invoke-static {p1, p2}, Ly/g;->d(J)Ly/g;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final c(J)F
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/q;->a:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result p1

    :goto_0
    return p1
.end method

.method public final d(J)F
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/gestures/q;->a:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    :goto_0
    return p1
.end method

.method public final e()V
    .locals 2

    sget-object v0, Ly/g;->b:Ly/g$a;

    invoke-virtual {v0}, Ly/g$a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/q;->b:J

    return-void
.end method
