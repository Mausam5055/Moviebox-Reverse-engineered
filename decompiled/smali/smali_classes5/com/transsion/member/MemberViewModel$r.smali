.class public final Lcom/transsion/member/MemberViewModel$r;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->X(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/MemberViewModel;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:I


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberViewModel;ILjava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel$r;->d:Lcom/transsion/member/MemberViewModel;

    iput p2, p0, Lcom/transsion/member/MemberViewModel$r;->e:I

    iput-object p3, p0, Lcom/transsion/member/MemberViewModel$r;->f:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/member/MemberViewModel$r;->g:I

    iput p5, p0, Lcom/transsion/member/MemberViewModel$r;->h:I

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskCheckInSubmit failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/member/MemberViewModel$r;->d:Lcom/transsion/member/MemberViewModel;

    invoke-static {p1}, Lcom/transsion/member/MemberViewModel;->o(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    new-instance p2, Lzm/d;

    iget v0, p0, Lcom/transsion/member/MemberViewModel$r;->e:I

    neg-int v1, v0

    iget-object v2, p0, Lcom/transsion/member/MemberViewModel$r;->f:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/member/MemberViewModel$r;->g:I

    iget v4, p0, Lcom/transsion/member/MemberViewModel$r;->h:I

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lzm/d;-><init>(ILjava/lang/String;IILcom/transsion/memberapi/MemberTaskRewardInfo;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/memberapi/MemberTaskRewardInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberViewModel$r;->e(Lcom/transsion/memberapi/MemberTaskRewardInfo;)V

    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberTaskRewardInfo;)V
    .locals 8

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel$r;->d:Lcom/transsion/member/MemberViewModel;

    invoke-static {v0}, Lcom/transsion/member/MemberViewModel;->o(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v7, Lzm/d;

    iget v2, p0, Lcom/transsion/member/MemberViewModel$r;->e:I

    iget-object v3, p0, Lcom/transsion/member/MemberViewModel$r;->f:Ljava/lang/String;

    iget v4, p0, Lcom/transsion/member/MemberViewModel$r;->g:I

    iget v5, p0, Lcom/transsion/member/MemberViewModel$r;->h:I

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lzm/d;-><init>(ILjava/lang/String;IILcom/transsion/memberapi/MemberTaskRewardInfo;)V

    invoke-virtual {v0, v7}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
