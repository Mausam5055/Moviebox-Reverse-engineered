.class public final Lcom/transsion/member/MemberProvider$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberProvider;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/MemberProvider;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberProvider$b;->d:Lcom/transsion/member/MemberProvider;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchGlobalTasks failed, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", message: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/memberapi/GlobalTaskInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberProvider$b;->e(Lcom/transsion/memberapi/GlobalTaskInfo;)V

    return-void
.end method

.method public e(Lcom/transsion/memberapi/GlobalTaskInfo;)V
    .locals 4

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    invoke-virtual {p1}, Lcom/transsion/memberapi/GlobalTaskInfo;->getTaskInfo()Lcom/transsion/memberapi/MemberTaskItem;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchGlobalTasks succeed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/member/MemberProvider$b;->d:Lcom/transsion/member/MemberProvider;

    invoke-static {v0}, Lcom/transsion/member/MemberProvider;->O(Lcom/transsion/member/MemberProvider;)Lkotlinx/coroutines/flow/y0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/memberapi/GlobalTaskInfo;->getTaskInfo()Lcom/transsion/memberapi/MemberTaskItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/member/MemberProvider$b;->d:Lcom/transsion/member/MemberProvider;

    invoke-static {v0}, Lcom/transsion/member/MemberProvider;->M(Lcom/transsion/member/MemberProvider;)Lkotlinx/coroutines/flow/y0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/memberapi/GlobalTaskInfo;->getTaskInfo()Lcom/transsion/memberapi/MemberTaskItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/y0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lxm/k;->a:Lxm/k;

    invoke-virtual {p1}, Lcom/transsion/memberapi/GlobalTaskInfo;->getGlobalTaskConf()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxm/k;->T(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    const-string v0, "fetchGlobalTasks data error"

    invoke-virtual {p1, v0}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
