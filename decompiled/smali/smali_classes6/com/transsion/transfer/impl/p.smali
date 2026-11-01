.class public final synthetic Lcom/transsion/transfer/impl/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/TransferReceivedFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/TransferReceivedFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/p;->a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/p;->a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->a0(Lcom/transsion/transfer/impl/TransferReceivedFragment;)Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object v0

    return-object v0
.end method
