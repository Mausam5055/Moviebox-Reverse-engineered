.class public final synthetic Lcom/transsion/transfer/wifi/connect/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/d;->a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/d;->a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroid/content/Intent;

    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->m(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Landroid/content/Context;Landroid/content/Intent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
