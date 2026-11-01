.class public final Lcom/transsion/member/f$a;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/f;


# direct methods
.method constructor <init>(Lcom/transsion/member/f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/f$a;->d:Lcom/transsion/member/f;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/member/f$a;->d:Lcom/transsion/member/f;

    invoke-static {p1}, Lcom/transsion/member/f;->d(Lcom/transsion/member/f;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;

    invoke-virtual {p0, p1}, Lcom/transsion/member/f$a;->e(Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;)V

    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;)V
    .locals 1

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/member/f$a;->d:Lcom/transsion/member/f;

    invoke-static {v0}, Lcom/transsion/member/f;->d(Lcom/transsion/member/f;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
