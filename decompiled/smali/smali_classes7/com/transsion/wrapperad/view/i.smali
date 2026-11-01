.class public final synthetic Lcom/transsion/wrapperad/view/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/wrapperad/view/DownloadMovieAdView;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/i;->a:Lcom/transsion/wrapperad/view/DownloadMovieAdView;

    iput-object p2, p0, Lcom/transsion/wrapperad/view/i;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/wrapperad/view/i;->a:Lcom/transsion/wrapperad/view/DownloadMovieAdView;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/i;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->a(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
