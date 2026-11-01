.class public final synthetic Lcom/transsion/transfer/impl/client/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/client/TransferClient;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/g;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    iput-object p2, p0, Lcom/transsion/transfer/impl/client/g;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/g;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    iget-object v1, p0, Lcom/transsion/transfer/impl/client/g;->b:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/transsion/transfer/impl/client/TransferClient;->o(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
