.class public final synthetic Lcom/transsion/transfer/impl/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/TransferSentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/x;->a:Lcom/transsion/transfer/impl/TransferSentFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/x;->a:Lcom/transsion/transfer/impl/TransferSentFragment;

    check-cast p1, Lkotlin/Triple;

    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/TransferSentFragment;->b0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Triple;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
