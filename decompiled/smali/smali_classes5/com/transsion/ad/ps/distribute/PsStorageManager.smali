.class public final Lcom/transsion/ad/ps/distribute/PsStorageManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PsStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/ps/distribute/PsStorageManager;

    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsStorageManager;-><init>()V

    sput-object v0, Lcom/transsion/ad/ps/distribute/PsStorageManager;->a:Lcom/transsion/ad/ps/distribute/PsStorageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;

    iget v1, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;-><init>(Lcom/transsion/ad/ps/distribute/PsStorageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    iput-object p1, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->label:I

    invoke-virtual {v2, v0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsLinkAdInfoStr()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/transsion/ad/ps/model/PsLinkAdInfo;

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/ps/model/PsLinkAdInfo;

    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    invoke-virtual {p1}, Lcom/transsion/ad/a;->a()Ljava/lang/String;

    move-result-object p1

    sget-char v1, Ljava/io/File;->separatorChar:C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lti/h;->a:Lti/h;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lti/h;->c(Ljava/io/File;Ljava/util/HashSet;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
