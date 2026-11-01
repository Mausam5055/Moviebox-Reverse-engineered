.class public final Lcom/transsion/member/MemberProvider$h;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberProvider;->s(Lzm/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/MemberProvider;

.field final synthetic e:Lzm/c;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberProvider;Lzm/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberProvider$h;->d:Lcom/transsion/member/MemberProvider;

    iput-object p2, p0, Lcom/transsion/member/MemberProvider$h;->e:Lzm/c;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemberProvider --> fetchMemberTaskInfo onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    sget-object p1, Lxm/k;->a:Lxm/k;

    iget-object p2, p0, Lcom/transsion/member/MemberProvider$h;->d:Lcom/transsion/member/MemberProvider;

    invoke-static {p2}, Lcom/transsion/member/MemberProvider;->P(Lcom/transsion/member/MemberProvider;)Lcom/transsion/memberapi/MemberTaskInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lxm/k;->S(Lcom/transsion/memberapi/MemberTaskInfo;)V

    iget-object p1, p0, Lcom/transsion/member/MemberProvider$h;->e:Lzm/c;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/member/MemberProvider$h;->d:Lcom/transsion/member/MemberProvider;

    invoke-static {p2}, Lcom/transsion/member/MemberProvider;->P(Lcom/transsion/member/MemberProvider;)Lcom/transsion/memberapi/MemberTaskInfo;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lzm/c;->b(Lcom/transsion/memberapi/MemberTaskInfo;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/memberapi/MemberTaskInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberProvider$h;->e(Lcom/transsion/memberapi/MemberTaskInfo;)V

    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberTaskInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemberProvider --> fetchMemberTaskInfo onSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    sget-object v0, Lxm/k;->a:Lxm/k;

    invoke-virtual {v0, p1}, Lxm/k;->S(Lcom/transsion/memberapi/MemberTaskInfo;)V

    iget-object v0, p0, Lcom/transsion/member/MemberProvider$h;->e:Lzm/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lzm/c;->b(Lcom/transsion/memberapi/MemberTaskInfo;Z)V

    :cond_0
    return-void
.end method
