.class public final Lcom/transsnet/downloader/popup/PopupManager$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/popup/PopupManager;->L(Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/popup/PopupManager;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->a:Lcom/transsnet/downloader/popup/PopupManager;

    iput-object p2, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->c:Z

    iput-object p4, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->d:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->a:Lcom/transsnet/downloader/popup/PopupManager;

    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->c:Z

    iget-object v3, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v3}, Lcom/transsnet/downloader/popup/PopupManager;->k(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public onGranted()V
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->a:Lcom/transsnet/downloader/popup/PopupManager;

    iget-object v1, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->c:Z

    iget-object v3, p0, Lcom/transsnet/downloader/popup/PopupManager$b;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v3}, Lcom/transsnet/downloader/popup/PopupManager;->k(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V

    return-void
.end method
