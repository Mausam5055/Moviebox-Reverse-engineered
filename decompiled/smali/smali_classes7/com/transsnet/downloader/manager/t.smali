.class public final synthetic Lcom/transsnet/downloader/manager/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/manager/t;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/manager/t;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/manager/u;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
