.class public final Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$windowInsetsPadding$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/f;",
        "Landroidx/compose/runtime/i;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000*\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/f;",
        "invoke",
        "(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/f;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $insetsCalculation:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/layout/WindowInsetsHolder;",
            "Landroidx/compose/foundation/layout/h0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/layout/WindowInsetsHolder;",
            "+",
            "Landroidx/compose/foundation/layout/h0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$windowInsetsPadding$1;->$insetsCalculation:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/f;
    .locals 2

    const p1, 0x15733969

    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.layout.windowInsetsPadding.<anonymous> (WindowInsetsPadding.android.kt:249)"

    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    sget-object p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->x:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    const/4 p3, 0x6

    invoke-virtual {p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->c(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result p3

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$windowInsetsPadding$1;->$insetsCalculation:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_1

    sget-object p3, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {p3}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object p3

    if-ne v1, p3, :cond_2

    :cond_1
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/layout/h0;

    new-instance v1, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/InsetsPaddingModifier;-><init>(Landroidx/compose/foundation/layout/h0;)V

    invoke-interface {p2, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/f;

    check-cast p2, Landroidx/compose/runtime/i;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$windowInsetsPadding$1;->invoke(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/f;

    move-result-object p1

    return-object p1
.end method
