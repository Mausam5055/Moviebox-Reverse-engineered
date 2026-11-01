.class public final synthetic Lcom/transsion/transfer/impl/client/j;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/client/TransferClient;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/http/b0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/j;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    iput-object p2, p0, Lcom/transsion/transfer/impl/client/j;->b:Lcom/transsion/transfer/androidasync/http/b0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/j;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    iget-object v1, p0, Lcom/transsion/transfer/impl/client/j;->b:Lcom/transsion/transfer/androidasync/http/b0;

    invoke-static {v0, v1, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->q(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/Exception;)V

    return-void
.end method
