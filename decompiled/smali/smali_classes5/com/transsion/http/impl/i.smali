.class Lcom/transsion/http/impl/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/transsion/http/impl/p;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/p;ILjava/lang/Throwable;)V
    .locals 0

    iput p2, p0, Lcom/transsion/http/impl/i;->a:I

    iput-object p3, p0, Lcom/transsion/http/impl/i;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
