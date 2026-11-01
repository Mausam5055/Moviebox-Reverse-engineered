.class public final synthetic Lcom/transsion/transfer/androidasync/http/server/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/androidasync/http/server/k;

.field public final synthetic b:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/androidasync/http/server/k;Lcom/transsion/transfer/androidasync/ByteBufferList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/f;->a:Lcom/transsion/transfer/androidasync/http/server/k;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/server/f;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/server/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/f;->a:Lcom/transsion/transfer/androidasync/http/server/k;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/f;->b:Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/server/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/server/k;->j(Lcom/transsion/transfer/androidasync/http/server/k;Lcom/transsion/transfer/androidasync/ByteBufferList;Ljava/lang/String;)V

    return-void
.end method
