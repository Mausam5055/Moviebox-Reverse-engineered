.class Lcom/transsion/http/impl/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/DownloadCallback;->y(ILjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/transsion/http/impl/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/DownloadCallback;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/f;->d:Lcom/transsion/http/impl/DownloadCallback;

    iput-object p2, p0, Lcom/transsion/http/impl/f;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/transsion/http/impl/f;->b:J

    iput-wide p5, p0, Lcom/transsion/http/impl/f;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/http/impl/f;->d:Lcom/transsion/http/impl/DownloadCallback;

    iget-object v1, p0, Lcom/transsion/http/impl/f;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/transsion/http/impl/f;->b:J

    iget-wide v4, p0, Lcom/transsion/http/impl/f;->c:J

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/http/impl/DownloadCallback;->z(Ljava/lang/String;JJ)V

    return-void
.end method
