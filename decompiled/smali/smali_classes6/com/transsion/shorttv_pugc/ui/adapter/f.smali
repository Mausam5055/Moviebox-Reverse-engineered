.class public final synthetic Lcom/transsion/shorttv_pugc/ui/adapter/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;

.field public final synthetic b:Lot/c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;Lot/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/f;->a:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/f;->b:Lot/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/f;->a:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/f;->b:Lot/c;

    invoke-static {v0, v1, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;->g(Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;Lot/c;Landroid/view/View;)V

    return-void
.end method
