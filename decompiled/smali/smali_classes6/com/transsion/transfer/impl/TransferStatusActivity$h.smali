.class public final Lcom/transsion/transfer/impl/TransferStatusActivity$h;
.super Ljava/lang/Object;

# interfaces
.implements Lhv/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/TransferStatusActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/TransferStatusActivity;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$h;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$h;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->F0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$h;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->B0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/TransferSentFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/TransferSentFragment;->p0()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$h;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->F0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$h;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->C0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/k;->z(I)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$h;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/b;

    iget-object v0, v0, Lgv/b;->m:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$h;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->B0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/TransferSentFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/TransferSentFragment;->p0()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$h;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->M0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    return-void
.end method
