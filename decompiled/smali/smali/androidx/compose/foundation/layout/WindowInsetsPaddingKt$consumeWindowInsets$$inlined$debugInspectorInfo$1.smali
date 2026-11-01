.class public final Landroidx/compose/foundation/layout/WindowInsetsPaddingKt$consumeWindowInsets$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/platform/z0;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/compose/ui/platform/z0;",
        "",
        "invoke",
        "(Landroidx/compose/ui/platform/z0;)V",
        "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1",
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
.field final synthetic $insets$inlined:Landroidx/compose/foundation/layout/h0;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/h0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt$consumeWindowInsets$$inlined$debugInspectorInfo$1;->$insets$inlined:Landroidx/compose/foundation/layout/h0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/platform/z0;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt$consumeWindowInsets$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/z0;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/platform/z0;)V
    .locals 2

    const-string v0, "consumeWindowInsets"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/z0;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object p1

    const-string v0, "insets"

    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt$consumeWindowInsets$$inlined$debugInspectorInfo$1;->$insets$inlined:Landroidx/compose/foundation/layout/h0;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
