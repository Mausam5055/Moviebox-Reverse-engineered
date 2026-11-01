.class public final synthetic Lcom/transsnet/downloader/widget/g0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/widget/TransferBottomToolsView;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/g0;->a:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    iput-wide p2, p0, Lcom/transsnet/downloader/widget/g0;->b:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/widget/g0;->a:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    iget-wide v1, p0, Lcom/transsnet/downloader/widget/g0;->b:J

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->q(Lcom/transsnet/downloader/widget/TransferBottomToolsView;JLjava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
