.class Lcom/transsion/http/impl/q$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/http/impl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/transsion/http/impl/q;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/q;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/http/impl/q$a;->a:Lcom/transsion/http/impl/q;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/impl/q$a;->a:Lcom/transsion/http/impl/q;

    invoke-virtual {v0, p1}, Lcom/transsion/http/impl/q;->g(Landroid/os/Message;)V

    return-void
.end method
