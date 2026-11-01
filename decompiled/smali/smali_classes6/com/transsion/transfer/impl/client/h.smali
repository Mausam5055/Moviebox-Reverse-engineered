.class public final synthetic Lcom/transsion/transfer/impl/client/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/client/TransferClient;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    iput-object p2, p0, Lcom/transsion/transfer/impl/client/h;->b:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/h;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    iget-object v1, p0, Lcom/transsion/transfer/impl/client/h;->b:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/transfer/impl/client/TransferClient;->u(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V

    return-void
.end method
