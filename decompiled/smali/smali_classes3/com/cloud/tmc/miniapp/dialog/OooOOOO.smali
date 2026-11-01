.class public Lcom/cloud/tmc/miniapp/dialog/OooOOOO;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO00o;,
        Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO0O0;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public OooO0o:Z

.field public final OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:Z

.field public OooO0oo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oO:Z

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOOO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M0(Z)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/w;->supportRequestWindowFeature(I)Z

    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/view/View;)Landroid/view/View;
    .locals 6

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;-><init>(II)V

    const/16 v2, 0x31

    iput v2, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v4, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOOO;)V

    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q0()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U0(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oo:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x101035b

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.obtainStyledAttr\u2026ndowCloseOnTouchOutside))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oO:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oo:Z

    :cond_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oO:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->cancel()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->onStart()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q0()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U0(I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setCancelable(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M0(Z)V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0o:Z

    :cond_0
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oO:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO0oo:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "layoutInflater.inflate(layoutResId, null, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO00o(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO00o(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->OooO00o(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->setContentView(Landroid/view/View;)V

    return-void
.end method
