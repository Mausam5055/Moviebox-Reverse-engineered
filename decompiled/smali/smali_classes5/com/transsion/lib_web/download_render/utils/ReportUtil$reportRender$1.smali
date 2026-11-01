.class final Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/download_render/utils/ReportUtil;->c(Lcom/transsion/lib_web/download_render/utils/RenderStage;)V
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
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.lib_web.download_render.utils.ReportUtil$reportRender$1"
    f = "ReportUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $renderStage:Lcom/transsion/lib_web/download_render/utils/RenderStage;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/lib_web/download_render/utils/RenderStage;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/lib_web/download_render/utils/RenderStage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->$renderStage:Lcom/transsion/lib_web/download_render/utils/RenderStage;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->$renderStage:Lcom/transsion/lib_web/download_render/utils/RenderStage;

    invoke-direct {p1, v0, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;-><init>(Lcom/transsion/lib_web/download_render/utils/RenderStage;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->$renderStage:Lcom/transsion/lib_web/download_render/utils/RenderStage;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getNeedReport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getReported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->setReported(Z)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getRenderWithDownload()Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "rwd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s1_score"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s1_fdn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s1_fosa"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s1_fue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s1_exp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getRenderTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "s1_rt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s1_hfr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s2_score"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s2_fdn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s2_fosa"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s2_fue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s2_exp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getRenderTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "s2_rt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s2_hfr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s3_score"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s3_fdn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s3_fosa"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s3_fue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "s3_exp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getRenderTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "s3_rt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "s3_hfr"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ext"

    invoke-static {v0}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lhj/i;->a:Lhj/i;

    const-string v1, "render"

    const/16 v2, 0x921

    invoke-virtual {v0, v1, p1, v2}, Lhj/i;->h(Ljava/lang/String;Landroid/os/Bundle;I)Z

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
