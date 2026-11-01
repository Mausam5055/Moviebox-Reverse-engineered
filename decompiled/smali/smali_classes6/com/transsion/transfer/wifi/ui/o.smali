.class public final synthetic Lcom/transsion/transfer/wifi/ui/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

.field public final synthetic b:Llv/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Llv/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/o;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    iput-object p2, p0, Lcom/transsion/transfer/wifi/ui/o;->b:Llv/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/o;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/o;->b:Llv/a;

    invoke-static {v0, v1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->L0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Llv/a;)V

    return-void
.end method
