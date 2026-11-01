.class public final synthetic Lcom/transsion/baselib/net/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/net/e;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/net/e;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, p1}, Lcom/transsion/baselib/net/f;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
