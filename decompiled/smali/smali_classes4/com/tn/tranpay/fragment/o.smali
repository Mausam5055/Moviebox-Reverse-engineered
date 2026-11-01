.class public final synthetic Lcom/tn/tranpay/fragment/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tn/tranpay/fragment/TranPayWebFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/tranpay/fragment/o;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/fragment/o;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->Y(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V

    return-void
.end method
