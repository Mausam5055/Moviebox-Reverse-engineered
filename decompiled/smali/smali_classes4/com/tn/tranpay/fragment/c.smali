.class public final synthetic Lcom/tn/tranpay/fragment/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/tn/tranpay/fragment/PayFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/tranpay/fragment/PayFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/tranpay/fragment/c;->a:Lcom/tn/tranpay/fragment/PayFragment;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/c;->a:Lcom/tn/tranpay/fragment/PayFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/PayFragment;->Y(Lcom/tn/tranpay/fragment/PayFragment;)V

    return-void
.end method
