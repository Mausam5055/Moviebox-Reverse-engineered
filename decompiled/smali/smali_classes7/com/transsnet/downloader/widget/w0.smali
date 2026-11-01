.class public final synthetic Lcom/transsnet/downloader/widget/w0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/w0;->a:Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;

    iput-object p2, p0, Lcom/transsnet/downloader/widget/w0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/widget/w0;->a:Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;

    iget-object v1, p0, Lcom/transsnet/downloader/widget/w0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;->b(Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
