.class final Landroidx/compose/material/ripple/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/material/ripple/i;


# static fields
.field public static final b:Landroidx/compose/material/ripple/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/ripple/a;

    invoke-direct {v0}, Landroidx/compose/material/ripple/a;-><init>()V

    sput-object v0, Landroidx/compose/material/ripple/a;->b:Landroidx/compose/material/ripple/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/runtime/i;I)J
    .locals 3

    const v0, 0x79b8960e

    invoke-interface {p1, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.ripple.DebugRippleTheme.defaultColor (RippleTheme.kt:239)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material/ripple/i;->a:Landroidx/compose/material/ripple/i$a;

    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroidx/compose/material/ripple/i$a;->b(JZ)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/i;->K()V

    return-wide v0
.end method

.method public b(Landroidx/compose/runtime/i;I)Landroidx/compose/material/ripple/c;
    .locals 3

    const v0, -0x61250617

    invoke-interface {p1, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.ripple.DebugRippleTheme.rippleAlpha (RippleTheme.kt:243)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material/ripple/i;->a:Landroidx/compose/material/ripple/i$a;

    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroidx/compose/material/ripple/i$a;->a(JZ)Landroidx/compose/material/ripple/c;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/i;->K()V

    return-object p2
.end method
