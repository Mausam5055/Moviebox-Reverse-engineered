.class public final Landroidx/compose/animation/core/e1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/animation/core/b1;


# instance fields
.field private final a:F

.field private final b:F

.field private final synthetic c:Landroidx/compose/animation/core/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FFLandroidx/compose/animation/core/o;)V
    .locals 0

    invoke-static {p3, p1, p2}, Landroidx/compose/animation/core/w0;->a(Landroidx/compose/animation/core/o;FF)Landroidx/compose/animation/core/q;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/e1;-><init>(FFLandroidx/compose/animation/core/q;)V

    return-void
.end method

.method private constructor <init>(FFLandroidx/compose/animation/core/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/e1;->a:F

    iput p2, p0, Landroidx/compose/animation/core/e1;->b:F

    new-instance p1, Landroidx/compose/animation/core/c1;

    invoke-direct {p1, p3}, Landroidx/compose/animation/core/c1;-><init>(Landroidx/compose/animation/core/q;)V

    iput-object p1, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    invoke-virtual {v0}, Landroidx/compose/animation/core/c1;->a()Z

    move-result v0

    return v0
.end method

.method public c(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/animation/core/c1;->c(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object p1

    return-object p1
.end method

.method public e(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 6

    iget-object v0, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/c1;->e(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)J
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/animation/core/c1;->f(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)J

    move-result-wide p1

    return-wide p1
.end method

.method public g(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 6

    iget-object v0, p0, Landroidx/compose/animation/core/e1;->c:Landroidx/compose/animation/core/c1;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/c1;->g(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object p1

    return-object p1
.end method
