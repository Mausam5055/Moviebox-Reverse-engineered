.class public final Lcom/cloud/tmc/miniapp/dialog/Oooo0;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/Oooo0;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO00o:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO0O0:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO0OO:Lkotlin/Lazy;

    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->layout_fw_update_progress:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO00o()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    aput-object v0, v1, p1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/Oooo0;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO00o(I)V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/h;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/dialog/h;-><init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;I)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/Oooo0;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->killActivity()V

    :cond_1
    return-void
.end method
