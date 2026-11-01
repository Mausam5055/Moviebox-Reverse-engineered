.class Lcom/transsion/transfer/androidasync/a0$i;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/a0;->c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbv/a;


# direct methods
.method constructor <init>(Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/a0$i;->a:Lbv/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "sink was closed before emitter ended"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/a0$i;->a:Lbv/a;

    invoke-interface {v0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    return-void
.end method
