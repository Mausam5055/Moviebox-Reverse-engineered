.class public final Landroidx/compose/material3/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/material3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/e;

    invoke-direct {v0}, Landroidx/compose/material3/e;-><init>()V

    sput-object v0, Landroidx/compose/material3/e;->a:Landroidx/compose/material3/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/i;I)Landroidx/compose/material3/a;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.MaterialTheme.<get-colorScheme> (MaterialTheme.kt:86)"

    const v2, -0x21799f1e

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/material3/ColorSchemeKt;->b()Landroidx/compose/runtime/s1;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/a;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    return-object p1
.end method
