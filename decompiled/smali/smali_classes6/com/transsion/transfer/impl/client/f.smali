.class public final synthetic Lcom/transsion/transfer/impl/client/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/client/TransferClient;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/client/TransferClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/f;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/f;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->n(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
