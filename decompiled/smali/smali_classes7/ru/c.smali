.class public final synthetic Lru/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/c;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    iput-object p2, p0, Lru/c;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lru/c;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    iget-object v1, p0, Lru/c;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->b(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Ljava/lang/Exception;)V

    return-void
.end method
