.class public final synthetic Lcom/transsnet/downloader/adapter/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/y;->a:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/y;->a:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->l(Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method
