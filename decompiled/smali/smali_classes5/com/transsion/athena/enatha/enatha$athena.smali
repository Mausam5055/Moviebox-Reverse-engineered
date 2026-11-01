.class Lcom/transsion/athena/enatha/enatha$athena;
.super Lcom/transsion/athena/aethna/aethna;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/enatha/enatha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/athena/enatha/enatha;


# direct methods
.method constructor <init>(Lcom/transsion/athena/enatha/enatha;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha$athena;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-direct {p0}, Lcom/transsion/athena/aethna/aethna;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    if-lez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$athena;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-static {v0, p1, p2}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/enatha/enatha;IZ)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/athena/enatha/enatha$athena;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-static {p1}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/enatha/enatha;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "onConfigChanged exception : %s"

    invoke-static {p1, p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
