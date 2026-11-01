.class public final Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/StatusAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static isLoadStatusLoadingOrError(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z
    .locals 0

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0OO()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 1

    const-string v0, "progressConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V

    :cond_0
    return-void
.end method

.method public static showComplete(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z
    .locals 1

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0OO()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static showCustomErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 3

    const-class p6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v1, "uncon_page_ex"

    invoke-interface {p6, p5, v1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p5

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o()V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0(Ljava/lang/Integer;)V

    const/4 p0, 0x1

    iput-boolean p0, p5, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOo:Z

    iget-object p0, p5, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oO:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 p6, 0x8

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p5, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0o:Landroid/widget/LinearLayout;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    :try_start_0
    iget-object p0, p5, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    iget-object p0, p5, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO0:Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    const-string p1, "launcher step error"

    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    invoke-virtual {p5, p4}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setOnCustomNoNetWorkRetryListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    :cond_4
    return-void
.end method

.method public static showError(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 6

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    sget p4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error_normal_mode:I

    :goto_0
    move v1, p4

    goto :goto_2

    :cond_1
    :goto_1
    sget p4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error:I

    goto :goto_0

    :goto_2
    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public static synthetic showError$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const-string p3, ""

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showError"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 13

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p1

    invoke-static {v1, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p2

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v2 .. v12}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 8

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    :cond_0
    return-void
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 12

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v10, 0x60

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v11}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p8

    if-eqz p8, :cond_0

    invoke-virtual {p8}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o()V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p8, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0(Ljava/lang/Integer;)V

    invoke-virtual {p8, p5, p6, p7}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o(Ljava/lang/String;ZZ)V

    invoke-virtual {p8, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p8, p2}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p8, p3}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p8, p4}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setOnRetryListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    :cond_0
    return-void
.end method

.method public static synthetic showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 9

    if-nez p9, :cond_3

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: showErrorLayout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const-string p4, ""

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showErrorLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const-string p4, ""

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showErrorLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 11

    move/from16 v0, p9

    if-nez p10, :cond_4

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v10}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: showErrorLayout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static showLoading(Lcom/cloud/tmc/miniapp/action/StatusAction;)V
    .locals 1

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0Oo()V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setOnRetryListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    :cond_0
    return-void
.end method

.method public static showLoadingLogo(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "logo"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/cloud/tmc/miniapp/R$string;->dialog_loading_tv:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "Loading..."

    :goto_0
    const-string v2, "try {\n            contex\u2026   \"Loading...\"\n        }"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOO0:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    if-eqz p0, :cond_9

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p1, :cond_2

    const-string p1, "mLoadingImg"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    move-object v3, p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_9

    :goto_2
    const-class p1, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;->enableLoadingAnimation()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o()V

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_a

    :cond_4
    const-class p1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 p1, 0xe

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0OO:Ljava/lang/Integer;

    const/4 v2, 0x2

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_6

    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder_normal_mode:I

    :goto_3
    move v5, p1

    goto :goto_5

    :cond_6
    :goto_4
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    goto :goto_3

    :goto_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0OO:Ljava/lang/Integer;

    if-nez p1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_8

    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder_normal_mode:I

    :goto_6
    move v6, p1

    goto :goto_8

    :cond_8
    :goto_7
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    goto :goto_6

    :goto_8
    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_a

    :goto_9
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0Oo:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_a
    return-void
.end method

.method public static showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/StatusAction;F)V
    .locals 0

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setMainLayoutAlpha(F)V

    :cond_0
    return-void
.end method

.method public static showNoNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 10

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p2

    if-eqz p2, :cond_2

    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v0, "uncon_page_ex"

    invoke-interface {p2, p4, v0, p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    sget p2, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_no_network_normal_mode:I

    :goto_0
    move v1, p2

    goto :goto_2

    :cond_1
    :goto_1
    sget p2, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_no_network:I

    goto :goto_0

    :goto_2
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_no_network_info:I

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_no_network_connection:I

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v7, p5

    invoke-static/range {v0 .. v9}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static synthetic showNoNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const-string p3, ""

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showNoNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showNoNetwork"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showPhotoEmpty(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 10

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v2 .. v9}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    sget p0, Lcom/cloud/tmc/miniapp/R$color;->mini_color_686c73:I

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setHintColor(I)V

    :cond_0
    return-void
.end method

.method public static showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 8

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p2

    if-eqz p2, :cond_2

    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const/4 v1, 0x3

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v0, "uncon_page_ex"

    invoke-interface {p2, p4, v0, p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    sget p2, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_unstable_network_normal_mode:I

    :goto_0
    move v1, p2

    goto :goto_2

    :cond_1
    :goto_1
    sget p2, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_unstable_network:I

    goto :goto_0

    :goto_2
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_unstable_network_info:I

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_unstable_network:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    :cond_2
    return-void
.end method

.method public static synthetic showUnstableNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    sget p2, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const-string p3, ""

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showUnstableNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showUnstableNetwork"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static statusLayoutCreateShortCutsSuccess(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/action/StatusAction;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p2, "appId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static statusLayoutOnResume(Lcom/cloud/tmc/miniapp/action/StatusAction;)V
    .locals 1

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO0:Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->getLlOfflineApps()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->offlineAppOnResume(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method

.method public static updateStepAnimation(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 1

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    :cond_0
    return-void
.end method
