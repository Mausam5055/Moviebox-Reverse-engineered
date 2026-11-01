.class public final synthetic Lcom/tn/tranpay/fragment/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/tn/tranpay/fragment/PayLoadingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/tranpay/fragment/e;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/e;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->Y(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V

    return-void
.end method
