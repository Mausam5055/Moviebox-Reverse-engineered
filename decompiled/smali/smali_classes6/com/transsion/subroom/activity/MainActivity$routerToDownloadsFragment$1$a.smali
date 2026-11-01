.class final Lcom/transsion/subroom/activity/MainActivity$routerToDownloadsFragment$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/MainActivity$routerToDownloadsFragment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subroom/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$routerToDownloadsFragment$1$a;->a:Lcom/transsion/subroom/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$routerToDownloadsFragment$1$a;->a:Lcom/transsion/subroom/activity/MainActivity;

    const-string p2, "DOWNLOADS"

    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/transsion/subroom/activity/MainActivity;->A0(Lcom/transsion/subroom/activity/MainActivity;Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/subroom/activity/MainActivity;->D0(Lcom/transsion/subroom/activity/MainActivity;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/activity/MainActivity$routerToDownloadsFragment$1$a;->a(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
