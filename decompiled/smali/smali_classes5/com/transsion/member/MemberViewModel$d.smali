.class public final Lcom/transsion/member/MemberViewModel$d;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->v()V
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

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel$d;->d:Lcom/transsion/member/MemberViewModel;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/member/MemberViewModel$d;->d:Lcom/transsion/member/MemberViewModel;

    invoke-static {p1}, Lcom/transsion/member/MemberViewModel;->h(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/memberapi/MemberDetail;

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberViewModel$d;->e(Lcom/transsion/memberapi/MemberDetail;)V

    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberDetail;)V
    .locals 2

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel$d;->d:Lcom/transsion/member/MemberViewModel;

    invoke-static {v0}, Lcom/transsion/member/MemberViewModel;->h(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/memberapi/IMemberApi;->k(Lcom/transsion/memberapi/MemberDetail;)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lsg/a;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    iget-object v0, p0, Lcom/transsion/member/MemberViewModel$d;->d:Lcom/transsion/member/MemberViewModel;

    invoke-static {v0, p1}, Lcom/transsion/member/MemberViewModel;->r(Lcom/transsion/member/MemberViewModel;Lio/reactivex/rxjava3/disposables/c;)V

    return-void
.end method
