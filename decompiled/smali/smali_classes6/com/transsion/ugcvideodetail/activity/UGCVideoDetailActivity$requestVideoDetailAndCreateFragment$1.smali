.class final Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->N0()V
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
    c = "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1"
    f = "UGCVideoDetailActivity.kt"
    l = {
        0xc0,
        0xc6
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    invoke-direct {v0, v1, p2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;-><init>(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object v8, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->label:I

    const-string v9, "0"

    const/4 v2, 0x1

    const-string v10, "ugcPbLoading"

    const/4 v11, 0x0

    const/4 v12, 0x2

    const-string v13, "VideoDetailFragment"

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v12, :cond_0

    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/n0;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/n0;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    :try_start_2
    iget-object v3, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    iget-object v3, v3, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->i:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    invoke-static {v3}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->H0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;)Lrv/a;

    move-result-object v3

    iget-object v4, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    iget-object v4, v4, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->i:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v5, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    iget-object v5, v5, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->j:Ljava/lang/String;

    iput-object v1, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    iput v2, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v14, 0x0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, p0

    move v6, v7

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lrv/a$a;->d(Lrv/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    goto :goto_4

    :cond_5
    :goto_1
    iget-object v2, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    iget-object v2, v2, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->k:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    invoke-static {v2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->H0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;)Lrv/a;

    move-result-object v2

    iget-object v3, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    iget-object v3, v3, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->k:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iput-object v1, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->L$0:Ljava/lang/Object;

    iput v12, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Lrv/a$a;->e(Lrv/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    goto :goto_4

    :cond_8
    :goto_3
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "UGCVideoDetailActivity"

    const-string v2, "requestVideoDetailAndCreateFragment: videoId and subjectId are both null"

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_9
    :goto_4
    if-nez v11, :cond_a

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "UGCVideoDetailActivity"

    const-string v2, "requestVideoDetailAndCreateFragment: video is null, use default UGCVideoDetailFragment"

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    sget-object v1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->D:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    move-result-object v1

    invoke-static {v0, v1, v13}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->G0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/a;

    iget-object v0, v0, Lqv/a;->c:Landroid/widget/ProgressBar;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_a
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    invoke-static {v0, v11}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->I0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    iget-object v1, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    invoke-virtual {v0, v12, v1}, Lcom/transsion/baselib/report/l;->x(ILandroid/app/Activity;)V

    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    sget-object v1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->I:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$a;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v1

    invoke-static {v0, v1, v13}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->G0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    sget-object v1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->D:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    move-result-object v1

    invoke-static {v0, v1, v13}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->G0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :goto_6
    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/a;

    iget-object v0, v0, Lqv/a;->c:Landroid/widget/ProgressBar;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    :try_start_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :goto_7
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestVideoDetailAndCreateFragment error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "UGCVideoDetailActivity"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    sget-object v1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->D:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    move-result-object v1

    invoke-static {v0, v1, v13}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->G0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;->this$0:Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    :try_start_7
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/a;

    iget-object v0, v0, Lqv/a;->c:Landroid/widget/ProgressBar;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
