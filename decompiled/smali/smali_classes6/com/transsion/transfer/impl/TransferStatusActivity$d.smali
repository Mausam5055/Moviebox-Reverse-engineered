.class public final Lcom/transsion/transfer/impl/TransferStatusActivity$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/TransferStatusActivity;->initView()V
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

    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/transsion/transfer/impl/TransferSentFragment;->d:Lcom/transsion/transfer/impl/TransferSentFragment$a;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/TransferSentFragment$a;->a()Lcom/transsion/transfer/impl/TransferSentFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->K0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lcom/transsion/transfer/impl/TransferSentFragment;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/transfer/impl/TransferSentFragment;->d:Lcom/transsion/transfer/impl/TransferSentFragment$a;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/TransferSentFragment$a;->a()Lcom/transsion/transfer/impl/TransferSentFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->K0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lcom/transsion/transfer/impl/TransferSentFragment;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/transfer/impl/TransferReceivedFragment;->d:Lcom/transsion/transfer/impl/TransferReceivedFragment$a;

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/TransferReceivedFragment$a;->a()Lcom/transsion/transfer/impl/TransferReceivedFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->I0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lcom/transsion/transfer/impl/TransferReceivedFragment;)V

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->E0(Lcom/transsion/transfer/impl/TransferStatusActivity;)[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
