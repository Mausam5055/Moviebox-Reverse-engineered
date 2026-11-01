.class final Landroidx/compose/material/DelegatingThemeAwareRippleNode;
.super Landroidx/compose/ui/node/i;

# interfaces
.implements Landroidx/compose/ui/node/d;
.implements Landroidx/compose/ui/node/u0;


# instance fields
.field private final p:Lp/g;

.field private final q:Z

.field private final r:F

.field private final s:Landroidx/compose/ui/graphics/x1;

.field private t:Landroidx/compose/ui/node/f;


# direct methods
.method private constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/i;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->p:Lp/g;

    iput-boolean p2, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->q:Z

    iput p3, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->r:F

    iput-object p4, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->s:Landroidx/compose/ui/graphics/x1;

    return-void
.end method

.method public synthetic constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;-><init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;)V

    return-void
.end method

.method public static final synthetic J1(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->N1()V

    return-void
.end method

.method public static final synthetic K1(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)Landroidx/compose/ui/graphics/x1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->s:Landroidx/compose/ui/graphics/x1;

    return-object p0
.end method

.method public static final synthetic L1(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)Landroidx/compose/ui/node/f;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->t:Landroidx/compose/ui/node/f;

    return-object p0
.end method

.method public static final synthetic M1(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->O1()V

    return-void
.end method

.method private final N1()V
    .locals 5

    new-instance v0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$a;

    invoke-direct {v0, p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode$a;-><init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V

    new-instance v1, Landroidx/compose/material/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;

    invoke-direct {v1, p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1;-><init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V

    iget-object v2, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->p:Lp/g;

    iget-boolean v3, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->q:Z

    iget v4, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->r:F

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/material/ripple/h;->c(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->t:Landroidx/compose/ui/node/f;

    return-void
.end method

.method private final O1()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->t:Landroidx/compose/ui/node/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->G1(Landroidx/compose/ui/node/f;)V

    :cond_0
    return-void
.end method

.method private final P1()V
    .locals 1

    new-instance v0, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;

    invoke-direct {v0, p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode$updateConfiguration$1;-><init>(Landroidx/compose/material/DelegatingThemeAwareRippleNode;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/v0;->a(Landroidx/compose/ui/f$c;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public Z()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->P1()V

    return-void
.end method

.method public n1()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material/DelegatingThemeAwareRippleNode;->P1()V

    return-void
.end method
