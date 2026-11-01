.class public final synthetic Lcom/tn/tranpay/fragment/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/tn/tranpay/fragment/PayLoadingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/tranpay/fragment/d;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/d;->a:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->X(Lcom/tn/tranpay/fragment/PayLoadingFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
