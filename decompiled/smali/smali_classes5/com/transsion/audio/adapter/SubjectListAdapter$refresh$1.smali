.class final Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/adapter/SubjectListAdapter;->I1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;)V
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
    c = "com.transsion.audio.adapter.SubjectListAdapter$refresh$1"
    f = "SubjectListAdapter.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $download:Lcom/transsion/moviedetailapi/DownloadItem;

.field final synthetic $holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/audio/adapter/SubjectListAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/transsion/audio/adapter/SubjectListAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    iput-object p2, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->d(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/DownloadItem;->getStatus()Ljava/lang/Integer;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    sget p3, Lcom/transsion/audio/R$drawable;->play_progress_bg:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    :goto_0
    sget p3, Lcom/transsion/audio/R$drawable;->playing_progress_bg:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/audio/adapter/SubjectListAdapter;->H1()Lcom/transsion/audio/adapter/SubjectListAdapter$a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/transsion/audio/adapter/SubjectListAdapter$a;->a(Lcom/transsion/moviedetailapi/DownloadItem;)V

    :cond_2
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

    new-instance p1, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;

    iget-object v0, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    iget-object v1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v2, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;-><init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/audio/adapter/SubjectListAdapter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;

    invoke-static {v1}, Lcom/transsion/audio/adapter/SubjectListAdapter;->C1(Lcom/transsion/audio/adapter/SubjectListAdapter;)Ljj/a;

    move-result-object v1

    if-eqz v1, :cond_3

    iput v3, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->label:I

    invoke-interface {v1, p1, p0}, Ljj/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/transsion/baselib/db/audio/AudioBean;

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lcom/transsion/audio/R$id;->tv_process:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_4
    move-wide v6, v4

    :goto_2
    const-wide/16 v8, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_3

    :cond_5
    move-wide v10, v8

    :goto_3
    cmp-long v1, v10, v4

    if-gtz v1, :cond_6

    goto :goto_4

    :cond_6
    move-wide v8, v10

    :goto_4
    long-to-float v1, v6

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v1, v4

    long-to-float v4, v8

    div-float/2addr v1, v4

    const/16 v4, 0x64

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    if-ltz v1, :cond_7

    const/16 v4, 0x65

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/audio/R$string;->listened:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v4, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v5, Lcom/transsion/audio/R$id;->pb_subject:I

    invoke-virtual {v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v6, Lcom/transsion/audio/R$id;->iv_subject:I

    invoke-virtual {v5, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    sget v8, Lcom/transsion/audio/R$drawable;->play_progress_bg:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/DownloadItem;->getStatus()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_8

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_8
    move-object v2, v8

    :cond_9
    :goto_5
    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_b

    const-string p1, "Not open"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_b
    :goto_6
    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_d

    const-string p1, "Finished"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_d
    :goto_7
    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x7

    if-ne p1, v3, :cond_f

    const-string p1, "ERROR"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_f
    :goto_8
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    if-nez v2, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    sget p1, Lcom/transsion/audio/R$drawable;->playing_progress_bg:I

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    :cond_11
    :goto_9
    sget p1, Lcom/transsion/audio/R$drawable;->play_progress_bg:I

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_a
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_b
    iget-object p1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    iget-object v0, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;

    new-instance v1, Lcom/transsion/audio/adapter/e;

    invoke-direct {v1, p1, v5, v0}, Lcom/transsion/audio/adapter/e;-><init>(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
