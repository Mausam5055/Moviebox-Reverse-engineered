.class public final synthetic Lcom/transsion/transfer/impl/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/ClientViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/ClientViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Exception;

    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/impl/ClientViewModel;->c(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/util/List;Ljava/lang/Exception;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
