.class public final synthetic Lcom/transsion/transfer/impl/h0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/TransferStatusActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/h0;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/h0;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->g0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    return-void
.end method
