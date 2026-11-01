.class final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->loadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.miniapp.ui.ImagePreviewActivity$loadFile$1"
    f = "ImagePreviewActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $imagePath:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$imagePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, ""

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->label:I

    if-nez v1, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->access$getAdapter(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->getImageLoder()Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$imagePath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$imagePath:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v2, v0}, Lkotlin/text/StringsKt;->d1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2, v0}, Lkotlin/text/StringsKt;->c1(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "downloadFile"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getDelete(Ljava/io/File;)Z

    :cond_2
    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-static/range {v4 .. v9}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->moveTo$default(Ljava/io/File;Ljava/io/File;ZZILjava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "ImagePreviewActivity"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
