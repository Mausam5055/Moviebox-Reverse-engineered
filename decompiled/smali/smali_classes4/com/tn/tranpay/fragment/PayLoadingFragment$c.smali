.class public final Lcom/tn/tranpay/fragment/PayLoadingFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tn/tranpay/fragment/PayFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayLoadingFragment;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/tranpay/fragment/PayLoadingFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->b0(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$c;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method
