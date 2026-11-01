.class public final synthetic Lcom/transsnet/downloader/ugc/fragment/g0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/g0;->a:Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/g0;->a:Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->p1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
