.class public abstract Landroidx/compose/foundation/FocusableKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/platform/y0;

.field private static final b:Landroidx/compose/foundation/FocusableKt$FocusableInNonTouchModeElement$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/y0;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/FocusableKt$special$$inlined$debugInspectorInfo$1;

    invoke-direct {v1}, Landroidx/compose/foundation/FocusableKt$special$$inlined$debugInspectorInfo$1;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/y0;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v0, Landroidx/compose/foundation/FocusableKt;->a:Landroidx/compose/ui/platform/y0;

    new-instance v0, Landroidx/compose/foundation/FocusableKt$FocusableInNonTouchModeElement$1;

    invoke-direct {v0}, Landroidx/compose/foundation/FocusableKt$FocusableInNonTouchModeElement$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/FocusableKt;->b:Landroidx/compose/foundation/FocusableKt$FocusableInNonTouchModeElement$1;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/f;ZLp/i;)Landroidx/compose/ui/f;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/foundation/FocusableElement;

    invoke-direct {p1, p2}, Landroidx/compose/foundation/FocusableElement;-><init>(Lp/i;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method
