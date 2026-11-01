.class public final Lcom/transsion/edcation/CourseManager$refreshCourseList$2;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/CourseManager;->r(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/edcation/CourseManager$refreshCourseList$2;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/edcation/CourseManager$refreshCourseList$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/edcation/bean/CourseListResp;

    invoke-virtual {p0, p1}, Lcom/transsion/edcation/CourseManager$refreshCourseList$2;->e(Lcom/transsion/edcation/bean/CourseListResp;)V

    return-void
.end method

.method public e(Lcom/transsion/edcation/bean/CourseListResp;)V
    .locals 10

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseListResp;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list is empty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    new-instance v7, Lcom/transsion/edcation/CourseManager$refreshCourseList$2$onSuccess$1;

    iget-object v2, p0, Lcom/transsion/edcation/CourseManager$refreshCourseList$2;->e:Ljava/lang/String;

    invoke-direct {v7, p1, v2, v0}, Lcom/transsion/edcation/CourseManager$refreshCourseList$2$onSuccess$1;-><init>(Lcom/transsion/edcation/bean/CourseListResp;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseListResp;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :cond_1
    iget-object p1, p0, Lcom/transsion/edcation/CourseManager$refreshCourseList$2;->d:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/transsion/edcation/CourseManager;->g(Lcom/transsion/edcation/CourseManager;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
