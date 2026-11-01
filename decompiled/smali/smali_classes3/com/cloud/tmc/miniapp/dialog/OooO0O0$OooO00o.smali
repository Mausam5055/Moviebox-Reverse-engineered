.class public Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/ActivityAction;
.implements Lcom/cloud/tmc/miniapp/action/ResourcesAction;
.implements Lcom/cloud/tmc/miniapp/action/ClickAction;
.implements Lcom/cloud/tmc/miniapp/action/KeyboardAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "TB;>;>",
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/miniapp/action/ActivityAction;",
        "Lcom/cloud/tmc/miniapp/action/ResourcesAction;",
        "Lcom/cloud/tmc/miniapp/action/ClickAction;",
        "Lcom/cloud/tmc/miniapp/action/KeyboardAction;"
    }
.end annotation


# instance fields
.field private animStyle:I

.field private backgroundDimAmount:F

.field private backgroundDimEnabled:Z

.field private final cancelListeners$delegate:Lkotlin/Lazy;

.field private cancelable:Z

.field private canceledOnTouchOutside:Z

.field private clickArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private contentView:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private createListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;

.field private dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

.field private final dismissListeners$delegate:Lkotlin/Lazy;

.field private extendToEdgesListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO;

.field private gravity:I

.field private height:I

.field private keyListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;

.field private final showListeners$delegate:Lkotlin/Lazy;

.field private themeId:I

.field private width:I

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    sget p1, Lcom/cloud/tmc/miniapp/R$style;->MiniSDKDialogTheme:I

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->themeId:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->animStyle:I

    const/4 p1, -0x2

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->width:I

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->height:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelable:Z

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->canceledOnTouchOutside:Z

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimEnabled:Z

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimAmount:F

    sget-object p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO0OO;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->showListeners$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO00o;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelListeners$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o$OooO0O0;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismissListeners$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getCancelListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getDismissListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismissListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getShowListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->showListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addOnCancelListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;",
            ")TB;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getCancelListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;",
            ")TB;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getDismissListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;",
            ")TB;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getShowListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public create()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    if-nez v0, :cond_1

    const/16 v0, 0x11

    iput v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    :cond_1
    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->animStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/16 v2, 0x30

    if-eq v0, v2, :cond_3

    const/16 v2, 0x50

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_BOTTOM()I

    move-result v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_TOP()I

    move-result v1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_RIGHT()I

    move-result v1

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_LEFT()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->animStyle:I

    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->themeId:I

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->createDialog(Landroid/content/Context;I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/w;->setContentView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelable:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->canceledOnTouchOutside:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getShowListeners()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getCancelListeners()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getDismissListeners()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->keyListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const-string v3, "window.attributes"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->width:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->height:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->xOffset:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->yOffset:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->animStyle:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimEnabled:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_8

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    iget v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimAmount:F

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->clickArray:Landroid/util/SparseArray;

    if-eqz v1, :cond_b

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    new-instance v4, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;

    invoke-direct {v4, v0, v5}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v2, "activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;

    invoke-direct {v2, v1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;-><init>(Landroid/app/Activity;Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V

    :cond_c
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->createListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;

    if-eqz v1, :cond_d

    invoke-interface {v1, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;->onCreate(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V

    :cond_d
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "are you ok?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createDialog(Landroid/content/Context;I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    invoke-direct {v0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public dismiss()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseDialog"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "are you ok?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ActivityAction$DefaultImpls;->getActivity(Lcom/cloud/tmc/miniapp/action/ActivityAction;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getColor(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)I

    move-result p1

    return p1
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDialog()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getDrawable(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getResources(Lcom/cloud/tmc/miniapp/action/ResourcesAction;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getSystemService(Lcom/cloud/tmc/miniapp/action/ResourcesAction;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hideKeyboard(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->hideKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    return-void
.end method

.method public isCreated()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->onClick(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    :cond_1
    :goto_0
    return-void
.end method

.method public postAtTime(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    :cond_1
    :goto_0
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    :cond_1
    :goto_0
    return-void
.end method

.method public setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->animStyle:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBackground(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackground(ILandroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public setBackground(ILandroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
            ")TB;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBackgroundDimAmount(F)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TB;"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimAmount:F

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->backgroundDimEnabled:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelable:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->canceledOnTouchOutside:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->cancelable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(Landroid/view/View;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public setContentView(Landroid/view/View;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_7

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/w;->setContentView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->width:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->height:I

    if-ne v0, v2, :cond_3

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setWidth(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setHeight(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    :cond_3
    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    if-nez v0, :cond_6

    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    goto :goto_1

    :cond_4
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    :cond_5
    :goto_1
    iget p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    if-nez p1, :cond_6

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    :cond_6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "are you ok?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExtendToEdgesListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->extendToEdgesListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO;

    return-void
.end method

.method public setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->gravity:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHeight(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->height:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_3
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHint(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setHint(ILjava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public setHint(ILjava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setImageDrawable(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackground(ILandroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
            ")TB;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOnClickListener(ILcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO<",
            "+",
            "Landroid/view/View;",
            ">;)TB;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->clickArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->clickArray:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->clickArray:Landroid/util/SparseArray;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    invoke-direct {v0, v1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[Landroid/view/View;)V

    return-void
.end method

.method public varargs setOnClickListener([I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[I)V

    return-void
.end method

.method public varargs setOnClickListener([Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[Landroid/view/View;)V

    return-void
.end method

.method public setOnCreateListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;",
            ")TB;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->createListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;

    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOnKeyListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;",
            ")TB;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->keyListener:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)V

    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setText(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setText(ILjava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p1

    return-object p1
.end method

.method public setText(ILjava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTextColor(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setThemeStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->themeId:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "are you ok?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisibility(II)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TB;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWidth(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->width:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->contentView:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_3
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setXOffset(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->xOffset:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_1
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setYOffset(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->yOffset:I

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_1
    const-string p1, "null cannot be cast to non-null type B of com.cloud.tmc.miniapp.dialog.BaseDialog.Builder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public show()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isCreated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->create()Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dialog:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    :goto_1
    return-void

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseDialog"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->showKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    return-void
.end method

.method public toggleSoftInput(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->toggleSoftInput(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    return-void
.end method
