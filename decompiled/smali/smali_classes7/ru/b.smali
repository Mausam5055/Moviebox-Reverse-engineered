.class public final synthetic Lru/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/b;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    iput-wide p2, p0, Lru/b;->b:J

    iput-wide p4, p0, Lru/b;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lru/b;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    iget-wide v1, p0, Lru/b;->b:J

    iget-wide v3, p0, Lru/b;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->a(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;JJ)V

    return-void
.end method
