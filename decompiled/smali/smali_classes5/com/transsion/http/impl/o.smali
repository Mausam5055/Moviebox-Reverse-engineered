.class Lcom/transsion/http/impl/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/StringCallback;->m(I[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/transsion/http/impl/StringCallback;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/StringCallback;[BILjava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/o;->d:Lcom/transsion/http/impl/StringCallback;

    iput-object p2, p0, Lcom/transsion/http/impl/o;->a:[B

    iput p3, p0, Lcom/transsion/http/impl/o;->b:I

    iput-object p4, p0, Lcom/transsion/http/impl/o;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/http/impl/o;->a:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "UTF-8"

    :try_start_1
    invoke-static {v0, v1}, Lcom/transsion/http/impl/StringCallback;->w([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/http/impl/o;->d:Lcom/transsion/http/impl/StringCallback;

    new-instance v2, Lcom/transsion/http/impl/m;

    invoke-direct {v2, p0, v0}, Lcom/transsion/http/impl/m;-><init>(Lcom/transsion/http/impl/o;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/transsion/http/impl/o;->d:Lcom/transsion/http/impl/StringCallback;

    new-instance v2, Lcom/transsion/http/impl/n;

    invoke-direct {v2, p0, v0}, Lcom/transsion/http/impl/n;-><init>(Lcom/transsion/http/impl/o;Ljava/io/UnsupportedEncodingException;)V

    invoke-virtual {v1, v2}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
