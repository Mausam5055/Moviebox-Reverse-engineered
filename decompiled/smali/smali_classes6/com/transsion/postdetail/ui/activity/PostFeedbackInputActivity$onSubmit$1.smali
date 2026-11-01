.class final Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->D0()V
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
    c = "com.transsion.postdetail.ui.activity.PostFeedbackInputActivity$onSubmit$1"
    f = "PostFeedbackInputActivity.kt"
    l = {
        0xae,
        0xc3
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $selectedReason:Lcom/transsion/postdetail/bean/ReportReason;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Lcom/transsion/postdetail/bean/ReportReason;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;",
            "Lcom/transsion/postdetail/bean/ReportReason;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->this$0:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->$selectedReason:Lcom/transsion/postdetail/bean/ReportReason;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->this$0:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->$selectedReason:Lcom/transsion/postdetail/bean/ReportReason;

    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;-><init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Lcom/transsion/postdetail/bean/ReportReason;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v7, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v8

    iget v0, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->label:I

    const-string v9, "extra_post_id"

    const/4 v1, 0x2

    const-string v10, "PostFeedbackInputActivity"

    const/4 v11, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v11, :cond_1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/n0;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/n0;

    iget-object v3, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->this$0:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    invoke-static {v3}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->o0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getImagePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->this$0:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    :try_start_2
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->o0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iput-object v0, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->L$0:Ljava/lang/Object;

    iput v11, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->label:I

    invoke-static {v3, v4, v7}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->q0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_3

    return-object v8

    :cond_3
    :goto_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload image failed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0, v11}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->this$0:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->n0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lso/e;

    move-result-object v0

    iget-object v0, v0, Lso/e;->b:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v11}, Landroid/view/View;->setEnabled(Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v2

    :cond_6
    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    iget-object v3, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->this$0:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    iget-object v4, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->$selectedReason:Lcom/transsion/postdetail/bean/ReportReason;

    :try_start_3
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_author_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_8

    move-object v14, v5

    goto :goto_4

    :cond_8
    move-object v14, v2

    :goto_4
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_action_type"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lcom/transsion/postdetail/bean/ReportReason;->getReportReasonId()Ljava/lang/String;

    move-result-object v16

    invoke-static {v3}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->o0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContent()Ljava/lang/String;

    move-result-object v17

    if-eqz v0, :cond_9

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_5

    :cond_9
    move-object/from16 v18, v2

    :goto_5
    invoke-static {v3}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->o0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->getWhole()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "^[A-Z]+ "

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    move-object/from16 v19, v0

    goto :goto_8

    :cond_b
    :goto_7
    invoke-static {v3}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->o0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_c

    goto :goto_6

    :cond_c
    move-object/from16 v19, v2

    :goto_8
    new-instance v0, Lcom/transsion/postdetail/bean/NegativeFeedbackRequest;

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lcom/transsion/postdetail/bean/NegativeFeedbackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->p0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lxo/b;

    move-result-object v3

    iput-object v2, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->L$0:Ljava/lang/Object;

    iput v1, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->label:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v3

    move-object v3, v0

    move-object/from16 v4, p0

    invoke-static/range {v1 .. v6}, Lxo/b$a;->b(Lxo/b;Ljava/lang/String;Lcom/transsion/postdetail/bean/NegativeFeedbackRequest;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_d

    return-object v8

    :cond_d
    :goto_9
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b

    :goto_a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    iget-object v1, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->this$0:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v2, v0

    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postNegativeFeedback success: code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v10, v2, v11}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_submit_toast_text"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-static {v2}, Lcom/transsion/baseui/util/m;->d(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    sget-object v3, Lty/b;->a:Lty/b$a;

    invoke-virtual {v3}, Lty/b$a;->a()Lty/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lty/b;->e(Ljava/lang/String;)V

    :cond_f
    sget-object v3, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->a:Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

    invoke-virtual {v3, v2}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->j(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    :cond_10
    iget-object v1, v7, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity$onSubmit$1;->this$0:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_11

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postNegativeFeedback error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0, v11}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget v0, Lcom/transsion/postdetail/R$string;->post_feedback_fail:I

    invoke-static {v0}, Lcom/transsion/baseui/util/m;->e(I)V

    invoke-static {v1}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->n0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)Lso/e;

    move-result-object v0

    iget-object v0, v0, Lso/e;->b:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v11}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    :cond_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
