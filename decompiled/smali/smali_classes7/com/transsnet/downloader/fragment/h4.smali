.class public final synthetic Lcom/transsnet/downloader/fragment/h4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tn/lib/view/DefaultView;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/lib/view/DefaultView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/h4;->a:Lcom/tn/lib/view/DefaultView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/h4;->a:Lcom/tn/lib/view/DefaultView;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;->H0(Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V

    return-void
.end method
