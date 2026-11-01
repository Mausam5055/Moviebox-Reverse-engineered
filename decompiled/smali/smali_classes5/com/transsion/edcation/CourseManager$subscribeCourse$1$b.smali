.class public final Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/CourseManager$subscribeCourse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/moviedetailapi/bean/Subject;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->d:Lcom/transsion/moviedetailapi/bean/Subject;

    iput p2, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->e:I

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

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget p2, Lcom/transsion/edcation/R$string;->course_default_failed:I

    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->d:Lcom/transsion/moviedetailapi/bean/Subject;

    iget v0, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/Subject;->setSeenStatus(Ljava/lang/Integer;)V

    sget-object p1, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    iget-object v0, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->d:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-static {v0}, Luk/a;->a(Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/edcation/bean/CourseBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/edcation/CourseManager;->e(Lcom/transsion/edcation/CourseManager;Lcom/transsion/edcation/bean/CourseBean;)V

    iget p1, p0, Lcom/transsion/edcation/CourseManager$subscribeCourse$1$b;->e:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v0, Lcom/transsion/edcation/R$string;->course_add_success:I

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v0, Lcom/transsion/edcation/R$string;->course_remove_success:I

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    :goto_0
    return-void
.end method
