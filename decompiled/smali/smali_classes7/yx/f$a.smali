.class public final Lyx/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyx/f;->g(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lyx/f$a;->a:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/memberapi/MemberAdTaskInfo;Z)V
    .locals 5

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberAdTaskInfo;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    check-cast v0, Lcom/transsion/memberapi/MemberTaskItem;

    goto :goto_2

    :cond_3
    move-object v0, p2

    :goto_2
    sget-object p1, Llg/a;->a:Llg/a$a;

    sget-object v1, Lyx/f;->a:Lyx/f;

    invoke-static {v1}, Lyx/f;->f(Lyx/f;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, p2

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> fetchAdTaskInfo() --> \u83b7\u53d6\u4efb\u52a1\u5217\u8868 -- taskId = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v2, v3, v4, p2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, ""

    :cond_5
    iget-object p2, p0, Lyx/f$a;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, p1, p2}, Lyx/f;->e(Lyx/f;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lyx/f$a;->a:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_7

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberTaskInfo;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lzm/c$a;->b(Lzm/c;Lcom/transsion/memberapi/MemberTaskInfo;Z)V

    return-void
.end method
