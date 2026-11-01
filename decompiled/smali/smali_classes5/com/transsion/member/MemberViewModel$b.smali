.class public final Lcom/transsion/member/MemberViewModel$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/MemberViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel$b;->d:Lcom/transsion/member/MemberViewModel;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestInviteUserMore failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/member/MemberViewModel$b;->d:Lcom/transsion/member/MemberViewModel;

    invoke-static {p1}, Lcom/transsion/member/MemberViewModel;->f(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/memberapi/AllMemberRightsData;

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberViewModel$b;->e(Lcom/transsion/memberapi/AllMemberRightsData;)V

    return-void
.end method

.method public e(Lcom/transsion/memberapi/AllMemberRightsData;)V
    .locals 3

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestInviteUserMore onSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel$b;->d:Lcom/transsion/member/MemberViewModel;

    invoke-static {v0}, Lcom/transsion/member/MemberViewModel;->f(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
