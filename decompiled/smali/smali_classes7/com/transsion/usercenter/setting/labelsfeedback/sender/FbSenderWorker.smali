.class public final Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;
.super Landroidx/work/CoroutineWorker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\n2\u0006\u0010\t\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ:\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0082@\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0019\u001a\u00020\u0018H\u0096@\u00a2\u0006\u0004\u0008\u0019\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "workerParams",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "",
        "imagePath",
        "Lkotlin/Pair;",
        "s",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "t",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "imageUrl",
        "logId",
        "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;",
        "model",
        "tempBucket",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;",
        "r",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroidx/work/s$a;",
        "n",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private final r(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v3, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    if-nez v2, :cond_1

    const-string v2, "0"

    :cond_1
    const-string v4, "uid"

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content"

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    const-string p1, "imageUrl"

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_2
    const-string p1, "email"

    const-string v2, ""

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->getWhole()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "whatsApp"

    invoke-virtual {v3, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "pageName"

    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getUgcVideoId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v2, "ugcVideoId"

    invoke-virtual {v3, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v2, "subjectId"

    invoke-virtual {v3, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getTv()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->getSeason()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%02d"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "format(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->getEpisode()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "season"

    invoke-virtual {v3, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p1, "logId"

    invoke-virtual {v3, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getSelectedId()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_7
    const/4 p1, -0x1

    :goto_1
    const-string p2, "label"

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "tempBucket"

    invoke-virtual {v3, p1, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lbh/b;->a:Lbh/b$a;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "toString(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    if-eqz p1, :cond_8

    sget-object p2, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {p2}, Lzg/c$a;->a()Lzg/c;

    move-result-object p2

    const-class p3, Lyw/a;

    invoke-virtual {p2, p3}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyw/a;

    sget-object p3, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {p3}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1, p5}, Lyw/a;->c(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/Error;

    const-string p2, "can not find feedback body"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    sget-object v1, Lcw/c;->a:Lcw/c;

    sget-object v2, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    new-instance v3, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$a;

    invoke-direct {v3, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$a;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v2, v4, v3}, Lcw/c;->f(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLcw/a;)V

    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method private final t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;

    invoke-direct {v1, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;-><init>(Lkotlin/coroutines/Continuation;)V

    sget-object v2, Lcom/transsion/upload/log/UploadLoggerManager;->a:Lcom/transsion/upload/log/UploadLoggerManager;

    invoke-virtual {v2, v1}, Lcom/transsion/upload/log/UploadLoggerManager;->k(Lcw/a;)V

    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public n(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    instance-of v0, p1, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;

    iget v1, v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;-><init>(Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    const-string v7, "failure(...)"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v8, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :cond_3
    iget-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_4
    iget-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/work/s;->e()Landroidx/work/f;

    move-result-object p1

    const-string v1, "key_work_data"

    invoke-virtual {p1, v1}, Landroidx/work/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    if-nez p1, :cond_6

    invoke-static {}, Landroidx/work/s$a;->a()Landroidx/work/s$a;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_6
    :try_start_4
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getImagePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    iput-object p1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v10, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput v8, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    invoke-direct {p0, v10, v6}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;->s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_7

    return-object v0

    :cond_7
    move-object v12, p1

    move-object p1, v11

    move-object v11, v1

    :goto_2
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object v12, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v11, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v5, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput v4, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    invoke-direct {p0, v10, v6}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;->s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    move-object v1, v9

    move-object v4, v1

    move-object v9, v11

    move-object v10, v12

    :goto_3
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v4

    move-object p1, v10

    goto :goto_4

    :cond_9
    move-object v13, v9

    move-object v9, v1

    move-object v1, v13

    :goto_4
    iput-object p1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v9, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v1, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v5, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput v3, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    invoke-direct {p0, v6}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_a

    return-object v0

    :cond_a
    move-object v4, p1

    move-object p1, v3

    move-object v3, v9

    :goto_5
    check-cast p1, Ljava/lang/String;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    iput-object v5, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v5, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v5, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput v2, v6, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$doWork$1;->label:I

    move-object v1, p0

    move-object v2, v3

    move-object v3, p1

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;->r(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    :cond_b
    :goto_6
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;->getResult()Z

    move-result p1

    if-ne p1, v8, :cond_c

    invoke-static {}, Landroidx/work/s$a;->c()Landroidx/work/s$a;

    move-result-object p1

    const-string v0, "success(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    invoke-static {}, Landroidx/work/s$a;->a()Landroidx/work/s$a;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
