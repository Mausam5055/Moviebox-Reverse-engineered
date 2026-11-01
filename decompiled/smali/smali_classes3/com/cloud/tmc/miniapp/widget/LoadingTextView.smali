.class public final Lcom/cloud/tmc/miniapp/widget/LoadingTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;,
        Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO00o;,
        Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO0O0;
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

.field public OooO0OO:I

.field public OooO0Oo:I

.field public OooO0o:Landroid/animation/ObjectAnimator;

.field public OooO0o0:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "LoadingTextView"

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o:Ljava/lang/String;

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v2, "miniLoadProgressConfig"

    const-string v3, "{\"creatRender\":97,\"decompress\":95,\"download\":93,\"finishAnimationDuration\":100,\"firstDuration\":3000,\"firstProgress\":90,\"loadRender\":99,\"secondDuration\":1000}"

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{\n            val loadPr\u2026el::class.java)\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    const/16 v14, 0xff

    const/4 v15, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;-><init>(IJIIIIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->setLoadingProgress(I)V

    const-string v0, "0%"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final OooO00o(I)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO00o;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getFirstProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v2, v3, v0

    const-string p1, "loadingProgress"

    invoke-static {p0, p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getFirstDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/g;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/g;-><init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    return-void
.end method

.method public final OooO00o(IIJ)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO00o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    const-string p1, "loadingProgress"

    invoke-static {p0, p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0o:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/cloud/tmc/miniapp/widget/e;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/e;-><init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_5
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 6

    const-string v0, "loadStep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startTime: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",currentProgress:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$OooO0O0;->OooO00o:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x64

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getFinishAnimationDuration()J

    move-result-wide v1

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getFinishAnimationDuration()J

    move-result-wide v1

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getLoadRender()I

    move-result p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getSecondDuration()J

    move-result-wide v0

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getCreatRender()I

    move-result p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getSecondDuration()J

    move-result-wide v0

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getDecompress()I

    move-result p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getSecondDuration()J

    move-result-wide v0

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getDownload()I

    move-result p1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->getFirstDuration()J

    move-result-wide v0

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(IIJ)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(I)V

    :goto_0
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO0O0()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/f;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/f;-><init>(Lcom/cloud/tmc/miniapp/widget/LoadingTextView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getLoadingProgress()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0OO:I

    return v0
.end method

.method public final getProgressConfigModel()Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    return-object v0
.end method

.method public final setLoadingProgress(I)V
    .locals 3

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0OO:I

    const/16 v2, 0x64

    if-ne v0, v1, :cond_0

    if-ne v0, v2, :cond_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-le v0, v2, :cond_1

    move v0, v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0Oo:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading()V

    :cond_3
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0OO:I

    return-void
.end method

.method public final setProgressConfigModel(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    return-void
.end method
