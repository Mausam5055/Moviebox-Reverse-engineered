.class Lcom/transsion/http/impl/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/UnsupportedEncodingException;

.field final synthetic b:Lcom/transsion/http/impl/o;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/o;Ljava/io/UnsupportedEncodingException;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/n;->b:Lcom/transsion/http/impl/o;

    iput-object p2, p0, Lcom/transsion/http/impl/n;->a:Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/http/impl/n;->b:Lcom/transsion/http/impl/o;

    iget-object v1, v0, Lcom/transsion/http/impl/o;->d:Lcom/transsion/http/impl/StringCallback;

    iget v0, v0, Lcom/transsion/http/impl/o;->b:I

    iget-object v2, p0, Lcom/transsion/http/impl/n;->a:Ljava/io/UnsupportedEncodingException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/transsion/http/impl/StringCallback;->x(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
