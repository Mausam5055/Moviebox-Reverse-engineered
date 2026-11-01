.class public final Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;->d:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;->d:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;->d:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;->d:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;

    invoke-static {v0}, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->q0(Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;->d:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;->d:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;->r0(Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;Z)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object p1, p0, Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog$a;->d:Lcom/transsion/commercialization/task/MemberPageVideoTaskDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
