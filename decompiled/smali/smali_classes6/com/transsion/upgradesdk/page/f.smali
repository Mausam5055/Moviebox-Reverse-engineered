.class public final Lcom/transsion/upgradesdk/page/f;
.super Landroidx/fragment/app/DialogFragment;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/transsion/upgradesdk/page/f;",
        "Landroidx/fragment/app/DialogFragment;",
        "<init>",
        "()V",
        "upgradesdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/transsion/upgradesdk/bean/UpgradeData;

.field public i:I

.field public final j:Lkotlin/Lazy;

.field public final k:Lkotlin/Lazy;

.field public final l:Lkotlin/Lazy;

.field public final m:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    new-instance v0, Lcom/transsion/upgradesdk/page/a;

    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/a;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->j:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/upgradesdk/page/b;

    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/b;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->k:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/upgradesdk/page/e;

    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/e;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/upgradesdk/page/c;

    invoke-direct {v0, p0}, Lcom/transsion/upgradesdk/page/c;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->m:Lkotlin/Lazy;

    return-void
.end method

.method public static X()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Law/d;

    invoke-direct {v1}, Law/d;-><init>()V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final a0(Lcom/transsion/upgradesdk/page/f;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez p1, :cond_0

    const-string p1, "upgradeData"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    const-string v2, "exitapp"

    invoke-static {p1, v0, v2, v1}, Lbw/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    sget-object p1, Lyv/f;->o:Lyv/d;

    invoke-virtual {p1}, Lyv/d;->a()Lyv/f;

    move-result-object p1

    iget-object p1, p1, Lyv/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogClick(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-static {}, Lcom/transsion/upgradesdk/page/f;->X()V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    const-string v2, "later"

    invoke-static {p1, v0, v2, v1}, Lbw/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    sget-object p1, Lyv/f;->o:Lyv/d;

    invoke-virtual {p1}, Lyv/d;->a()Lyv/f;

    move-result-object p1

    iget-object p1, p1, Lyv/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogClick(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method public static final b0(Lcom/transsion/upgradesdk/page/f;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez p2, :cond_0

    const-string p2, "upgradeData"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result p2

    if-eqz p2, :cond_2

    iget p1, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    iget-object p0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p2, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    const-string p3, "back_exit"

    invoke-static {p1, p0, p3, p2}, Lbw/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    sget-object p0, Lyv/f;->o:Lyv/d;

    invoke-virtual {p0}, Lyv/d;->a()Lyv/f;

    move-result-object p0

    iget-object p0, p0, Lyv/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    if-eqz p0, :cond_1

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogClick(I)V

    :cond_1
    invoke-static {}, Lcom/transsion/upgradesdk/page/f;->X()V

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    iget-object p0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p3, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    const-string v0, "back"

    invoke-static {p2, p0, v0, p3}, Lbw/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    sget-object p0, Lyv/f;->o:Lyv/d;

    invoke-virtual {p0}, Lyv/d;->a()Lyv/f;

    move-result-object p0

    iget-object p0, p0, Lyv/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogClick(I)V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c0()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final d0(Lcom/transsion/upgradesdk/page/f;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    const-string v2, "update"

    invoke-static {p1, v0, v2, v1}, Lbw/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    sget-object p1, Lyv/f;->o:Lyv/d;

    invoke-virtual {p1}, Lyv/d;->a()Lyv/f;

    move-result-object p1

    iget-object p1, p1, Lyv/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogClick(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    const/4 v0, 0x0

    const-string v1, "upgradeData"

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkg()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v0

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getDirectDwl()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v3

    :goto_0
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getHoverBtn()I

    move-result v0

    new-instance v1, Lcom/transsion/upgradesdk/page/d;

    invoke-direct {v1, p0}, Lcom/transsion/upgradesdk/page/d;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    invoke-static {p1, v2, v0, v1}, Lbw/n;->c(Ljava/lang/String;IILkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final Y(Landroid/view/View;)V
    .locals 10

    sget v0, Lcom/transsion/upgradesdk/R$id;->icon_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    const-string v2, "upgradeData"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkg()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.transsion.phonemaster"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/transsion/upgradesdk/R$layout;->layout_icon_pm_style:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/upgradesdk/R$layout;->layout_icon_sdk_default:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/upgradesdk/R$id;->iv_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->c:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->a:Landroid/widget/TextView;

    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->b:Landroid/widget/TextView;

    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->d:Landroid/widget/TextView;

    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->e:Landroid/widget/TextView;

    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->f:Landroid/widget/TextView;

    sget v0, Lcom/transsion/upgradesdk/R$id;->tv_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/upgradesdk/page/f;->g:Landroid/widget/TextView;

    sget v0, Lcom/transsion/upgradesdk/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    :try_start_0
    sget-object p1, Lyv/f;->o:Lyv/d;

    invoke-virtual {p1}, Lyv/d;->a()Lyv/f;

    move-result-object p1

    invoke-virtual {p1}, Lyv/f;->e()Lvv/b;

    move-result-object p1

    iget-object p1, p1, Lvv/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_a

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->b:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ":  "

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/transsion/upgradesdk/R$string;->upgrade_sdk_text_version:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez v4, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v3

    :cond_4
    invoke-virtual {v4}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->d:Landroid/widget/TextView;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/transsion/upgradesdk/R$string;->upgrade_sdk_text_size:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgSize()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    long-to-double v4, v4

    const-wide/16 v6, 0x400

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-string v0, "K"

    goto :goto_3

    :cond_7
    const-wide/32 v8, 0x40000000

    cmp-long v0, v4, v8

    if-gez v0, :cond_8

    long-to-double v4, v4

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-string v0, "M"

    goto :goto_3

    :cond_8
    long-to-double v4, v4

    long-to-double v6, v8

    div-double/2addr v4, v6

    const-string v0, "G"

    :goto_3
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    const/4 v7, 0x4

    invoke-virtual {v6, v5, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->e:Landroid/widget/TextView;

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v3

    :cond_a
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getUpgradeMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->f:Landroid/widget/TextView;

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez v1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v3

    :cond_c
    invoke-virtual {v1, p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getCancelButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->a:Landroid/widget/TextView;

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :catch_1
    move-exception p1

    goto :goto_7

    :cond_e
    iget-object p1, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :goto_7
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    move-object p1, v3

    :goto_8
    if-eqz p1, :cond_10

    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_10
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_9
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->e:Landroid/widget/TextView;

    if-nez p1, :cond_12

    goto :goto_b

    :cond_12
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_b
    invoke-virtual {p0}, Lcom/transsion/upgradesdk/page/f;->e0()V

    return-void
.end method

.method public final Z(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->L0()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UpgradeBottomDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Law/b;

    invoke-direct {v1, p0}, Law/b;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/f;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Law/c;

    invoke-direct {v1, p0}, Law/c;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/upgradesdk/page/f;->m:Lkotlin/Lazy;

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    sget p3, Lcom/transsion/upgradesdk/R$layout;->upgradesdk_layout_dialog_os16:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/upgradesdk/R$layout;->upgradesdk_layout_dialog_os15:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :try_start_0
    sget-object p2, Lyv/f;->o:Lyv/d;

    invoke-virtual {p2}, Lyv/d;->a()Lyv/f;

    move-result-object p2

    iget-object p2, p2, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez p2, :cond_1

    const-string p2, "upgradeData"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    :cond_2
    iput v0, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/upgradesdk/page/f;->Y(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_1
    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    const-string v1, "dialog"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lyv/f;->i:Lcom/transsion/upgradesdk/page/f;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lyv/f;->i:Lcom/transsion/upgradesdk/page/f;

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    sget-object p1, Lyv/f;->o:Lyv/d;

    invoke-virtual {p1}, Lyv/d;->a()Lyv/f;

    move-result-object p1

    iget-object p1, p1, Lyv/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogDismiss()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 8

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lbw/d;->a(Landroid/view/Window;Landroid/content/Context;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lbw/i;->b:Lbw/h;

    invoke-virtual {v2, v0}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "KV_UPGRADE_POPUP_LAST_TIME"

    const-string v7, "key"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v6, v4, v5}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    :cond_2
    invoke-virtual {v2, v0}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v3

    const-string v4, "KV_UPGRADE_POPUP_TIMES"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4, v1}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v0

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mmkv/MMKV;->s(Ljava/lang/String;I)Z

    :cond_4
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Law/a;

    invoke-direct {p2, p0}, Law/a;-><init>(Lcom/transsion/upgradesdk/page/f;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->j:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/upgradesdk/page/f;->f:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/upgradesdk/page/f;->k:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/upgradesdk/page/f;->g:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget p1, p0, Lcom/transsion/upgradesdk/page/f;->i:I

    iget-object p2, p0, Lcom/transsion/upgradesdk/page/f;->l:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    sget-object v0, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    invoke-static {p1, p2, v0}, Lbw/l;->d(IZLcom/transsion/upgradesdk/bean/c;)V

    sget-object p1, Lyv/f;->o:Lyv/d;

    invoke-virtual {p1}, Lyv/d;->a()Lyv/f;

    move-result-object p1

    iget-object p1, p1, Lyv/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;->onDialogShow()V

    :cond_3
    return-void
.end method
