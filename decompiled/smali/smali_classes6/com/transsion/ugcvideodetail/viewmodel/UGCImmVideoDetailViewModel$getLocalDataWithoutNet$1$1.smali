.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/c;",
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0007\u001a\u00020\u0006*(\u0012$\u0012\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/c;",
        "Lkotlin/Triple;",
        "",
        "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
        "",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/c;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1"
    f = "UGCImmVideoDetailViewModel.kt"
    l = {
        0xae,
        0xb1,
        0xb2,
        0xb4,
        0xb6,
        0xb9,
        0xbb,
        0xc1,
        0xc2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $curUgcVideoId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$collectionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$curUgcVideoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$collectionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    iget-object v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$curUgcVideoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v2

    iget v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto/16 :goto_5

    :pswitch_2
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v5

    move-object v5, v3

    move-object v3, v1

    move-object/from16 v1, p1

    goto/16 :goto_4

    :pswitch_3
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v6

    move-object/from16 v6, p1

    goto/16 :goto_3

    :pswitch_4
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto/16 :goto_8

    :pswitch_5
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    move-object/from16 v16, v5

    move-object v5, v3

    move-object/from16 v3, v16

    goto/16 :goto_7

    :pswitch_6
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/c;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_1

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/c;

    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$collectionId:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$collectionId:Ljava/lang/String;

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->z()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    iput v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    invoke-interface {v5, v6, v0}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_2

    return-object v2

    :cond_2
    :goto_1
    check-cast v5, Ljava/lang/String;

    :goto_2
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_6

    :cond_3
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    iput-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$3:Ljava/lang/Object;

    const/4 v8, 0x6

    iput v8, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    invoke-interface {v6, v7, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->r(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_4

    return-object v2

    :cond_4
    move-object v7, v3

    move-object v3, v1

    :goto_3
    iput-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v1

    iput-object v7, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x7

    iput v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    invoke-interface {v1, v5, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    return-object v2

    :cond_5
    :goto_4
    check-cast v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    if-eqz v1, :cond_6

    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$curUgcVideoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v10, Llg/a;->a:Llg/a$a;

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLocalDataWithoutNet curId:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", history:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "UGCImmVideoDetailViewModel"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_6
    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    sget-object v6, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v6

    iput-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$3:Ljava/lang/Object;

    const/16 v7, 0x8

    iput v7, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    invoke-virtual {v6, v3, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->P(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_7

    return-object v2

    :cond_7
    :goto_5
    check-cast v6, Ljava/util/List;

    new-instance v7, Lkotlin/Triple;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-direct {v7, v3, v1, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    const/16 v1, 0x9

    iput v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    invoke-interface {v5, v7, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_c

    return-object v2

    :cond_8
    :goto_6
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    invoke-interface {v6, v7, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->r(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_9

    return-object v2

    :cond_9
    :goto_7
    check-cast v6, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    sget-object v7, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v7}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v7

    iget-object v8, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$curUgcVideoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    invoke-virtual {v7, v8, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->R(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_a

    return-object v2

    :cond_a
    move-object/from16 v16, v6

    move-object v6, v3

    move-object/from16 v3, v16

    :goto_8
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez v7, :cond_b

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    invoke-interface {v6, v4, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_c

    return-object v2

    :cond_b
    new-instance v8, Lkotlin/Triple;

    new-array v1, v1, [Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v9, 0x0

    aput-object v7, v1, v9

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v5, v3, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    invoke-interface {v6, v8, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_c

    return-object v2

    :cond_c
    :goto_9
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
