.class public final synthetic Lcom/tn/tranpay/fragment/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lgh/b;


# direct methods
.method public synthetic constructor <init>(Lgh/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/tranpay/fragment/k;->a:Lgh/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/k;->a:Lgh/b;

    invoke-static {v0, p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->Y(Lgh/b;Landroid/view/View;)V

    return-void
.end method
