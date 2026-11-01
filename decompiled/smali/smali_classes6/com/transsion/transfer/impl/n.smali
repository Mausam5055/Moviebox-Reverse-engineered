.class public final synthetic Lcom/transsion/transfer/impl/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/TransferReceivedFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/TransferReceivedFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/n;->a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/n;->a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->b0(Lcom/transsion/transfer/impl/TransferReceivedFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
