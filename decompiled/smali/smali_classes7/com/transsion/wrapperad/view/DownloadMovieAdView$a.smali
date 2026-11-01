.class public final Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/DownloadMovieAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/wrapperad/view/DownloadMovieAdView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/DownloadMovieAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;->d:Lcom/transsion/wrapperad/view/DownloadMovieAdView;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public w(Ljava/util/List;)V
    .locals 1

    invoke-super {p0, p1}, Ldi/a;->w(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;->d:Lcom/transsion/wrapperad/view/DownloadMovieAdView;

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->access$showData(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Ljava/util/List;)V

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;->d:Lcom/transsion/wrapperad/view/DownloadMovieAdView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
