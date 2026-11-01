.class final Landroidx/compose/ui/window/DialogWrapper;
.super Landroidx/activity/q;

# interfaces
.implements Landroidx/compose/ui/platform/s2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/window/DialogWrapper$b;
    }
.end annotation


# instance fields
.field private a:Lkotlin/jvm/functions/Function0;

.field private b:Landroidx/compose/ui/window/c;

.field private final c:Landroid/view/View;

.field private final d:Landroidx/compose/ui/window/DialogLayout;

.field private final e:F

.field private final f:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Lo0/e;Ljava/util/UUID;)V
    .locals 6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_1

    invoke-virtual {p2}, Landroidx/compose/ui/window/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Landroidx/compose/ui/R$style;->FloatingDialogWindowTheme:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v2, Landroidx/compose/ui/R$style;->DialogWindowTheme:I

    :goto_1
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Landroidx/activity/q;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->b:Landroidx/compose/ui/window/c;

    iput-object p3, p0, Landroidx/compose/ui/window/DialogWrapper;->c:Landroid/view/View;

    const/16 p1, 0x8

    int-to-float p1, p1

    invoke-static {p1}, Lo0/i;->g(F)F

    move-result p1

    iput p1, p0, Landroidx/compose/ui/window/DialogWrapper;->e:F

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    iput v0, p0, Landroidx/compose/ui/window/DialogWrapper;->f:I

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->b:Landroidx/compose/ui/window/c;

    invoke-virtual {v0}, Landroidx/compose/ui/window/c;->a()Z

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    new-instance v0, Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroidx/compose/ui/window/DialogLayout;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    sget v1, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, v1, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-interface {p5, p1}, Lo0/e;->E0(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    new-instance p1, Landroidx/compose/ui/window/DialogWrapper$a;

    invoke-direct {p1}, Landroidx/compose/ui/window/DialogWrapper$a;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iput-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->d:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v3}, Landroidx/compose/ui/window/DialogWrapper;->d(Landroid/view/ViewGroup;)V

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/activity/q;->setContentView(Landroid/view/View;)V

    invoke-static {p3}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/u;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->b(Landroid/view/View;Landroidx/lifecycle/u;)V

    invoke-static {p3}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->a(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->b(Landroid/view/View;Landroidx/lifecycle/y0;)V

    invoke-static {p3}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->a(Landroid/view/View;)Landroidx/savedstate/e;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->b(Landroid/view/View;Landroidx/savedstate/e;)V

    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->a:Lkotlin/jvm/functions/Function0;

    iget-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->b:Landroidx/compose/ui/window/c;

    invoke-virtual {p0, p1, p2, p4}, Landroidx/compose/ui/window/DialogWrapper;->k(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {p0}, Landroidx/activity/q;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v3, Landroidx/compose/ui/window/DialogWrapper$2;

    invoke-direct {v3, p0}, Landroidx/compose/ui/window/DialogWrapper$2;-><init>(Landroidx/compose/ui/window/DialogWrapper;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroidx/activity/w;->b(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/u;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/u;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Dialog has no window"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final d(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    instance-of v1, p0, Landroidx/compose/ui/window/DialogLayout;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroidx/compose/ui/window/DialogWrapper;->d(Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final synthetic e(Landroidx/compose/ui/window/DialogWrapper;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->a:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic f(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/c;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->b:Landroidx/compose/ui/window/c;

    return-object p0
.end method

.method private final i(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->d:Landroidx/compose/ui/window/DialogLayout;

    sget-object v1, Landroidx/compose/ui/window/DialogWrapper$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method private final j(Landroidx/compose/ui/window/SecureFlagPolicy;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->d(Landroid/view/View;)Z

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/window/k;->a(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z

    move-result p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v1, 0x2000

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 p1, -0x2001

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->d:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    return-void
.end method

.method public final h(Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->d:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/window/DialogLayout;->setContent(Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->b:Landroidx/compose/ui/window/c;

    invoke-virtual {p2}, Landroidx/compose/ui/window/c;->d()Landroidx/compose/ui/window/SecureFlagPolicy;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/window/DialogWrapper;->j(Landroidx/compose/ui/window/SecureFlagPolicy;)V

    invoke-direct {p0, p3}, Landroidx/compose/ui/window/DialogWrapper;->i(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {p2}, Landroidx/compose/ui/window/c;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->d:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p1}, Landroidx/compose/ui/window/DialogLayout;->f()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p3, -0x2

    invoke-virtual {p1, p3, p3}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->d:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p2}, Landroidx/compose/ui/window/c;->e()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/compose/ui/window/DialogLayout;->g(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-ge p1, p3, :cond_2

    invoke-virtual {p2}, Landroidx/compose/ui/window/c;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p2, p0, Landroidx/compose/ui/window/DialogWrapper;->f:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->b:Landroidx/compose/ui/window/c;

    invoke-virtual {v0}, Landroidx/compose/ui/window/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return p1
.end method
