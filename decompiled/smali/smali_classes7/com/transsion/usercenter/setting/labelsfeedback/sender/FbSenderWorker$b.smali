.class public final Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcw/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lkotlin/coroutines/Continuation;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;->b:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJ)V
    .locals 0

    const-string p2, "uploadKey"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "uploadKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "bucket"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;->a:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;->b:Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;->a:Z

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;->b:Lkotlin/coroutines/Continuation;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p2, Ljava/lang/Error;

    const-string p3, "unable to upload log"

    invoke-direct {p2, p3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker$b;->a:Z

    :cond_0
    return-void
.end method
