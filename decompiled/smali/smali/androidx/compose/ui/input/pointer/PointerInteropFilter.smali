.class public final Landroidx/compose/ui/input/pointer/PointerInteropFilter;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/input/pointer/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;
    }
.end annotation


# instance fields
.field public b:Lkotlin/jvm/functions/Function1;

.field private c:Landroidx/compose/ui/input/pointer/k0;

.field private d:Z

.field private final e:Landroidx/compose/ui/input/pointer/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->e:Landroidx/compose/ui/input/pointer/c0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->d:Z

    return v0
.end method

.method public synthetic b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/g;->b(Landroidx/compose/ui/f$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/g;->a(Landroidx/compose/ui/f$b;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/e;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroidx/compose/ui/input/pointer/c0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->e:Landroidx/compose/ui/input/pointer/c0;

    return-object v0
.end method

.method public final i()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "onTouchEvent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->d:Z

    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final l(Landroidx/compose/ui/input/pointer/k0;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->c:Landroidx/compose/ui/input/pointer/k0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/k0;->b(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V

    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->c:Landroidx/compose/ui/input/pointer/k0;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Landroidx/compose/ui/input/pointer/k0;->b(Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V

    :goto_1
    return-void
.end method
