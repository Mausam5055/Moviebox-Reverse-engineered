.class Lcv/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcv/c;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/Headers;

.field final synthetic b:Lcv/c;


# direct methods
.method constructor <init>(Lcv/c;Lcom/transsion/transfer/androidasync/http/Headers;)V
    .locals 0

    iput-object p1, p0, Lcv/c$a;->b:Lcv/c;

    iput-object p2, p0, Lcv/c$a;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcv/c$a;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->b(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcv/c$a;->b:Lcv/c;

    invoke-virtual {p1}, Lcv/c;->W()V

    iget-object p1, p0, Lcv/c$a;->b:Lcv/c;

    const/4 v0, 0x0

    iput-object v0, p1, Lcv/c;->i:Lcom/transsion/transfer/androidasync/v;

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/q;->t(Lbv/d;)V

    new-instance p1, Lcv/d;

    iget-object v0, p0, Lcv/c$a;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-direct {p1, v0}, Lcv/d;-><init>(Lcom/transsion/transfer/androidasync/http/Headers;)V

    iget-object v0, p0, Lcv/c$a;->b:Lcv/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcv/c$a;->b:Lcv/c;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/q;->I()Lbv/d;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcv/c$a;->b:Lcv/c;

    iput-object p1, v0, Lcv/c;->l:Lcv/d;

    new-instance p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object p1, v0, Lcv/c;->k:Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object p1, p0, Lcv/c$a;->b:Lcv/c;

    new-instance v0, Lcv/c$a$a;

    invoke-direct {v0, p0}, Lcv/c$a$a;-><init>(Lcv/c$a;)V

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/q;->t(Lbv/d;)V

    :cond_1
    :goto_0
    return-void
.end method
