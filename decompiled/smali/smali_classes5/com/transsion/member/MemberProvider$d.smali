.class public final Lcom/transsion/member/MemberProvider$d;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberProvider;->u(Lzm/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lzm/c;


# direct methods
.method constructor <init>(Lzm/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberProvider$d;->d:Lzm/c;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchMemberAdTaskInfo onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/memberapi/MemberAdTaskInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberProvider$d;->e(Lcom/transsion/memberapi/MemberAdTaskInfo;)V

    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberAdTaskInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchMemberAdTaskInfo onSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/member/MemberProvider$d;->d:Lzm/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lzm/c;->a(Lcom/transsion/memberapi/MemberAdTaskInfo;Z)V

    :cond_0
    return-void
.end method
