.class Lfv/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfv/b;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/future/w;

.field final synthetic b:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field final synthetic c:Lfv/b;


# direct methods
.method constructor <init>(Lfv/b;Lcom/transsion/transfer/androidasync/future/w;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    iput-object p1, p0, Lfv/b$c;->c:Lfv/b;

    iput-object p2, p0, Lfv/b$c;->a:Lcom/transsion/transfer/androidasync/future/w;

    iput-object p3, p0, Lfv/b$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfv/b$c;->a:Lcom/transsion/transfer/androidasync/future/w;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lfv/b$c;->a:Lcom/transsion/transfer/androidasync/future/w;

    iget-object v0, p0, Lfv/b$c;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lfv/b$c;->a:Lcom/transsion/transfer/androidasync/future/w;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    :goto_0
    return-void
.end method
