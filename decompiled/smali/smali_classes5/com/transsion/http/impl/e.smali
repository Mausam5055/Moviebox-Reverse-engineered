.class Lcom/transsion/http/impl/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/DownloadCallback;->A(ILjava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/transsion/http/impl/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/DownloadCallback;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/e;->c:Lcom/transsion/http/impl/DownloadCallback;

    iput-object p2, p0, Lcom/transsion/http/impl/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/http/impl/e;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/http/impl/e;->c:Lcom/transsion/http/impl/DownloadCallback;

    iget-object v1, p0, Lcom/transsion/http/impl/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/http/impl/e;->b:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/http/impl/DownloadCallback;->B(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
