.class public final synthetic Lcom/cloud/tmc/miniapp/defaultimpl/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/f;->a:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/f;->a:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;

    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO00o(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
