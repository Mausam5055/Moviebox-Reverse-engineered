.class public final synthetic Lcom/transsnet/downloader/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsnet/downloader/adapter/d;->a:Z

    iput-boolean p2, p0, Lcom/transsnet/downloader/adapter/d;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsnet/downloader/adapter/d;->a:Z

    iget-boolean v1, p0, Lcom/transsnet/downloader/adapter/d;->b:Z

    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/adapter/DownTitleHolder;->g(ZZLandroid/view/View;)V

    return-void
.end method
