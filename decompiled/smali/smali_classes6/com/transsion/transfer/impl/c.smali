.class public final synthetic Lcom/transsion/transfer/impl/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/impl/ClientViewModel;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/c;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    iput-object p2, p0, Lcom/transsion/transfer/impl/c;->b:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/impl/c;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    iget-object v1, p0, Lcom/transsion/transfer/impl/c;->b:Lkotlin/jvm/functions/Function2;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/transfer/impl/ClientViewModel;->d(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
