.class public final synthetic Lcom/transsion/ad/test/ad_example/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/test/ad_example/TestAdH5Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/o;->a:Lcom/transsion/ad/test/ad_example/TestAdH5Activity;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/o;->a:Lcom/transsion/ad/test/ad_example/TestAdH5Activity;

    invoke-static {v0, p1}, Lcom/transsion/ad/test/ad_example/TestAdH5Activity;->R(Lcom/transsion/ad/test/ad_example/TestAdH5Activity;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
