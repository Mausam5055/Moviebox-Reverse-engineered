.class public final synthetic Lru/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/tinker/lib/custom/download/DownloadManager;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

.field public final synthetic d:J

.field public final synthetic e:Lou/d;

.field public final synthetic f:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tinker/lib/custom/download/DownloadManager;ILcom/transsion/tinker/lib/custom/download/DownloadManager$a;JLou/d;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/a;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager;

    iput p2, p0, Lru/a;->b:I

    iput-object p3, p0, Lru/a;->c:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    iput-wide p4, p0, Lru/a;->d:J

    iput-object p6, p0, Lru/a;->e:Lou/d;

    iput-object p7, p0, Lru/a;->f:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lru/a;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager;

    iget v1, p0, Lru/a;->b:I

    iget-object v2, p0, Lru/a;->c:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    iget-wide v3, p0, Lru/a;->d:J

    iget-object v5, p0, Lru/a;->e:Lou/d;

    iget-object v6, p0, Lru/a;->f:Ljava/io/File;

    invoke-static/range {v0 .. v6}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->c(Lcom/transsion/tinker/lib/custom/download/DownloadManager;ILcom/transsion/tinker/lib/custom/download/DownloadManager$a;JLou/d;Ljava/io/File;)V

    return-void
.end method
