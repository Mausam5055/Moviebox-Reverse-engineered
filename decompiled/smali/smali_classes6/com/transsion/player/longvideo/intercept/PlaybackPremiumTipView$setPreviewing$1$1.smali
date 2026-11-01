.class final Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->setPreviewing(Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.player.longvideo.intercept.PlaybackPremiumTipView$setPreviewing$1$1"
    f = "PlaybackPremiumTipView.kt"
    l = {
        0x56
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lgo/a;

.field final synthetic $longVdPlayerBean:Lgo/a;

.field final synthetic $manager:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Lgo/a;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;",
            "Lgo/a;",
            "Lgo/a;",
            "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$bean:Lgo/a;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$longVdPlayerBean:Lgo/a;

    iput-object p4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$manager:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$bean:Lgo/a;

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$longVdPlayerBean:Lgo/a;

    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$manager:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Lgo/a;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-static {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->access$getPlaybackRecordDao(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;)Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    move-result-object v2

    iget-object v4, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$bean:Lgo/a;

    invoke-virtual {v4}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, ""

    :cond_3
    iget-object v5, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$longVdPlayerBean:Lgo/a;

    invoke-virtual {v5}, Lgo/a;->l()I

    move-result v5

    iget-object v6, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$longVdPlayerBean:Lgo/a;

    invoke-virtual {v6}, Lgo/a;->e()I

    move-result v6

    iput v3, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->label:I

    invoke-interface {v2, v4, v5, v6, v0}, Lcom/transsion/baselib/db/video/PlaybackRecordDao;->a(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_0
    check-cast v2, Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    const-string v1, "PlaybackPremiumTipView --> onRenderFirstFrame() --> \u8bd5\u770b\u63d0\u793a --> pageName = "

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getRewardUnlock()Z

    move-result v2

    if-ne v2, v3, :cond_5

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$bean:Lgo/a;

    invoke-virtual {v2}, Lgo/a;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> \u5f53\u524d\u5df2\u7ecf\u89e3\u9501\uff0c\u4e0d\u5c55\u793a\u63d0\u793a"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "premium_p"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    sget-object v10, Llg/a;->a:Llg/a$a;

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$bean:Lgo/a;

    invoke-virtual {v2}, Lgo/a;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> \u8bd5\u770b\u63d0\u793a"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "premium_p"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->getBinding()Lho/r;

    move-result-object v1

    iget-object v1, v1, Lho/r;->d:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->getBinding()Lho/r;

    move-result-object v1

    iget-object v1, v1, Lho/r;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    sget-object v2, Lti/n;->a:Lti/n;

    invoke-virtual {v2}, Lti/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->access$setTraceId$p(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$bean:Lgo/a;

    invoke-virtual {v1}, Lgo/a;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->access$getTraceId$p(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$bean:Lgo/a;

    invoke-virtual {v1}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v6, "player/resolution_upgrade"

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/baselib/helper/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$bean:Lgo/a;

    invoke-virtual {v1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/VipInfo;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_7

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->getBinding()Lho/r;

    move-result-object v1

    iget-object v1, v1, Lho/r;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/postdetail/R$string;->p_v2_previewing:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->getBinding()Lho/r;

    move-result-object v1

    iget-object v1, v1, Lho/r;->f:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/postdetail/R$string;->p_v2_unlock_full_access:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->getBinding()Lho/r;

    move-result-object v1

    iget-object v1, v1, Lho/r;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/postdetail/R$string;->p_v2_hd_previewing:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->getBinding()Lho/r;

    move-result-object v1

    iget-object v1, v1, Lho/r;->f:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/postdetail/R$string;->p_v2_unlock_hd:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->this$0:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    iget-object v2, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$bean:Lgo/a;

    invoke-virtual {v2}, Lgo/a;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$bean:Lgo/a;

    invoke-virtual {v3}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView$setPreviewing$1$1;->$manager:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v1, v2, v3, v4}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->access$setClick(Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
