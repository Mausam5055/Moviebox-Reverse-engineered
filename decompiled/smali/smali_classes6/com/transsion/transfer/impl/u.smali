.class public final synthetic Lcom/transsion/transfer/impl/u;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/TransferSentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/u;->a:Lcom/transsion/transfer/impl/TransferSentFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/u;->a:Lcom/transsion/transfer/impl/TransferSentFragment;

    invoke-static {v0}, Lcom/transsion/transfer/impl/TransferSentFragment;->a0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/adapter/b;

    move-result-object v0

    return-object v0
.end method
