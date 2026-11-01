.class public final Lcom/transsion/transfer/impl/TransferStatusActivity$e;
.super Landroidx/activity/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/TransferStatusActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->G0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->F0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->C0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->z0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->H0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->M0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    :goto_1
    return-void
.end method
