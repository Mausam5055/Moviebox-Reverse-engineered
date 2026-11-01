.class public final synthetic Lcom/transsion/shorttv/ui/adapter/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;

.field public final synthetic b:Ljs/d;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;Ljs/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/i;->a:Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/adapter/i;->b:Ljs/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/i;->a:Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/i;->b:Ljs/d;

    invoke-static {v0, v1, p1}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->g(Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;Ljs/d;Landroid/view/View;)V

    return-void
.end method
