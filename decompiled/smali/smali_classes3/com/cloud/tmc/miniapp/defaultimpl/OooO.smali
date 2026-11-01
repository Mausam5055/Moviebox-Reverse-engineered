.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OooO;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;


# instance fields
.field public final OooO00o:I

.field public final OooO0O0:I

.field public final OooO0OO:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;


# direct methods
.method public constructor <init>(IILcom/cloud/tmc/integration/proxy/OnKeyboardListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    iput p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO00o:I

    iput p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0O0:I

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0OO:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0OO:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;->onKeyBoardAnimEnd()V

    :cond_0
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runningAnims"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0O0:I

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object p2

    const-string v0, "insets.getInsets(deferredInsetTypes)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO00o:I

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object v0

    const-string v1, "insets.getInsets(persistentInsetTypes)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lz0/c;->e(Lz0/c;Lz0/c;)Lz0/c;

    move-result-object p2

    sget-object v0, Lz0/c;->e:Lz0/c;

    invoke-static {p2, v0}, Lz0/c;->a(Lz0/c;Lz0/c;)Lz0/c;

    move-result-object p2

    const-string v0, "subtract(typesInset, oth\u2026t, Insets.NONE)\n        }"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0OO:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    if-eqz v0, :cond_0

    iget p2, p2, Lz0/c;->d:I

    invoke-interface {v0, p2}, Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;->onKeyBoardHeightChange(I)V

    :cond_0
    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;->OooO0OO:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;->onKeyBoardAnimStart()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object p1

    const-string p2, "super.onStart(animation, bounds)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
