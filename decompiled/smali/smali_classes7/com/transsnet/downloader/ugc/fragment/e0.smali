.class public final synthetic Lcom/transsnet/downloader/ugc/fragment/e0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c;

    invoke-static {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;->m1(Lcom/transsnet/downloader/ugc/adapter/c;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
