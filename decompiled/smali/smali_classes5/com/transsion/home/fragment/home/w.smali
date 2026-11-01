.class public final synthetic Lcom/transsion/home/fragment/home/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/w;->a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/w;->a:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
