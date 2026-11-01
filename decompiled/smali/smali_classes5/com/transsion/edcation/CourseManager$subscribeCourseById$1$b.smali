.class public final Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/CourseManager$subscribeCourseById$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->d:I

    iput-object p2, p0, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->e:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lsg/a;->c(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->d:I

    if-nez v5, :cond_0

    sget-object v1, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    new-instance v15, Lcom/transsion/edcation/bean/CourseBean;

    iget-object v3, v0, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->e:Ljava/lang/String;

    const/16 v16, 0x7fa

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v2, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lcom/transsion/edcation/bean/CourseBean;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v18

    invoke-static {v1, v2}, Lcom/transsion/edcation/CourseManager;->e(Lcom/transsion/edcation/CourseManager;Lcom/transsion/edcation/bean/CourseBean;)V

    sget-object v1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v2, Lcom/transsion/edcation/R$string;->course_remove_success:I

    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    iget-object v2, v0, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1$b;->e:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v4}, Lcom/transsion/edcation/CourseManager;->s(Lcom/transsion/edcation/CourseManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v2, Lcom/transsion/edcation/R$string;->course_add_success:I

    invoke-virtual {v1, v2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    :goto_0
    return-void
.end method
