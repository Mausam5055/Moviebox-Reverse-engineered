.class public final Landroidx/compose/material3/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/material3/c;

.field private static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/c;

    invoke-direct {v0}, Landroidx/compose/material3/c;-><init>()V

    sput-object v0, Landroidx/compose/material3/c;->a:Landroidx/compose/material3/c;

    sget-object v0, Lr/b;->a:Lr/b;

    invoke-virtual {v0}, Lr/b;->b()F

    move-result v0

    sput v0, Landroidx/compose/material3/c;->b:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/i;I)J
    .locals 3

    const v0, 0x49df631

    invoke-interface {p1, v0}, Landroidx/compose/runtime/i;->x(I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.DividerDefaults.<get-color> (Divider.kt:115)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Lr/b;->a:Lr/b;

    invoke-virtual {p2}, Lr/b;->a()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {p2, p1, v0}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/i;I)J

    move-result-wide v0

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/i;->N()V

    return-wide v0
.end method

.method public final b()F
    .locals 1

    sget v0, Landroidx/compose/material3/c;->b:F

    return v0
.end method
