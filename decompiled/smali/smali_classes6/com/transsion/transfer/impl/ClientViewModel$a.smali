.class public final Lcom/transsion/transfer/impl/ClientViewModel$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/ClientViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/ClientViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/ClientViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel$a;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel$a;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/ClientViewModel;->j(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel$a;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    invoke-static {p1}, Lcom/transsion/transfer/impl/ClientViewModel;->h(Lcom/transsion/transfer/impl/ClientViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    sget-object p1, Lkv/b;->a:Lkv/b;

    sget-object p2, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    invoke-virtual {p2}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lkv/b;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/ClientViewModel$a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
