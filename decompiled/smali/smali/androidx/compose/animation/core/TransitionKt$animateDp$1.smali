.class public final Landroidx/compose/animation/core/TransitionKt$animateDp$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/animation/core/q0$a;",
        "Landroidx/compose/runtime/i;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/animation/core/o0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateDp$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/TransitionKt$animateDp$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/TransitionKt$animateDp$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/TransitionKt$animateDp$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateDp$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/animation/core/q0$a;Landroidx/compose/runtime/i;I)Landroidx/compose/animation/core/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/q0$a;",
            "Landroidx/compose/runtime/i;",
            "I)",
            "Landroidx/compose/animation/core/o0;"
        }
    .end annotation

    const p1, -0x22533cae

    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.animation.core.animateDp.<anonymous> (Transition.kt:1994)"

    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    sget-object p1, Lo0/i;->b:Lo0/i$a;

    invoke-static {p1}, Landroidx/compose/animation/core/g1;->a(Lo0/i$a;)F

    move-result p1

    invoke-static {p1}, Lo0/i;->d(F)Lo0/i;

    move-result-object p1

    const/4 p3, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, v1, p1, p3, v0}, Landroidx/compose/animation/core/h;->d(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/o0;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    check-cast p2, Landroidx/compose/runtime/i;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2, p1}, Landroidx/compose/animation/core/TransitionKt$animateDp$1;->invoke(Landroidx/compose/animation/core/q0$a;Landroidx/compose/runtime/i;I)Landroidx/compose/animation/core/o0;

    move-result-object p1

    return-object p1
.end method
