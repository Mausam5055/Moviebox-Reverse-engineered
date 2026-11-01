.class public final synthetic Lcom/transsnet/downloader/lottery/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/lottery/LotteryTipView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/lottery/LotteryTipView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/lottery/a;->a:Lcom/transsnet/downloader/lottery/LotteryTipView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/lottery/a;->a:Lcom/transsnet/downloader/lottery/LotteryTipView;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/lottery/LotteryTipView;->b(Lcom/transsnet/downloader/lottery/LotteryTipView;Landroid/view/View;)V

    return-void
.end method
