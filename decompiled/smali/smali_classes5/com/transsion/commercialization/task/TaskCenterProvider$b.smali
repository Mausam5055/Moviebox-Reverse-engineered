.class public final Lcom/transsion/commercialization/task/TaskCenterProvider$b;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/TaskCenterProvider;->m(Lok/b;Lcom/transsion/memberapi/MemberCheckResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/TaskCenterProvider;

.field final synthetic b:Lok/b;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/TaskCenterProvider;Lok/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    iput-object p2, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->b:Lok/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lok/c;->a:Lok/c;

    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    invoke-virtual {v1}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> showMemberPage() --> checkMember() --> onFailed() --> \u5f00\u901a\u4f1a\u5458\u5931\u8d25"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->b:Lok/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lok/b;->onFail()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    sget-object v0, Lok/c;->a:Lok/c;

    iget-object v1, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->a:Lcom/transsion/commercialization/task/TaskCenterProvider;

    invoke-virtual {v1}, Lcom/transsion/commercialization/task/TaskCenterProvider;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> showMemberPage() --> checkMember() --> onSuccess() --> \u5f00\u901a\u4f1a\u5458\u6210\u529f\uff0c\u76f4\u63a5\u4e0b\u8f7d\u4e0d\u9700\u8981\u505a\u4efb\u52a1\u4e86"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lok/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/TaskCenterProvider$b;->b:Lok/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lok/b;->onSuccess()V

    :cond_0
    return-void
.end method
