.class public final Landroidx/compose/material/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/material/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/h;

    invoke-direct {v0}, Landroidx/compose/material/h;-><init>()V

    sput-object v0, Landroidx/compose/material/h;->a:Landroidx/compose/material/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JZ)Landroidx/compose/material/ripple/c;
    .locals 2

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->i(J)F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    invoke-static {}, Landroidx/compose/material/RippleKt;->b()Landroidx/compose/material/ripple/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/material/RippleKt;->c()Landroidx/compose/material/ripple/c;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/compose/material/RippleKt;->a()Landroidx/compose/material/ripple/c;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b(JZ)J
    .locals 4

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->i(J)F

    move-result v0

    if-nez p3, :cond_0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p3, v0, v2

    if-gez p3, :cond_0

    sget-object p1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->f()J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method
