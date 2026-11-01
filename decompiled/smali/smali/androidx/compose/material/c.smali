.class public final Landroidx/compose/material/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/material/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/c;

    invoke-direct {v0}, Landroidx/compose/material/c;-><init>()V

    sput-object v0, Landroidx/compose/material/c;->a:Landroidx/compose/material/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(FFLandroidx/compose/runtime/i;I)F
    .locals 4

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.ContentAlpha.contentAlpha (ContentAlpha.kt:76)"

    const v2, -0x5b18edc7

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/s1;

    move-result-object p4

    invoke-interface {p3, p4}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {p4}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v0

    sget-object p4, Landroidx/compose/material/e;->a:Landroidx/compose/material/e;

    const/4 v2, 0x6

    invoke-virtual {p4, p3, v2}, Landroidx/compose/material/e;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/material/b;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/material/b;->m()Z

    move-result p3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-eqz p3, :cond_1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/w1;->i(J)F

    move-result p3

    float-to-double p3, p3

    cmpl-double p3, p3, v2

    if-lez p3, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/w1;->i(J)F

    move-result p3

    float-to-double p3, p3

    cmpg-double p3, p3, v2

    if-gez p3, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_3
    return p1
.end method


# virtual methods
.method public final b(Landroidx/compose/runtime/i;I)F
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.ContentAlpha.<get-disabled> (ContentAlpha.kt:57)"

    const v2, 0x2506827f

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    shl-int/lit8 p2, p2, 0x6

    and-int/lit16 p2, p2, 0x380

    or-int/lit8 p2, p2, 0x36

    const v0, 0x3ec28f5c    # 0.38f

    invoke-direct {p0, v0, v0, p1, p2}, Landroidx/compose/material/c;->a(FFLandroidx/compose/runtime/i;I)F

    move-result p1

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    return p1
.end method
