.class public final Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$a;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 10

    iget-object p4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$a;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMAdapter()Lcom/transsion/postdetail/ui/adapter/i;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->access$checkShowRefreshPopGuide(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    invoke-static {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->access$getMExposureList(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->access$getMExposureList(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    invoke-virtual {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMPageFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMGroupId()Ljava/lang/String;

    move-result-object v9

    move v5, p1

    move-wide v6, p2

    move-object v8, v0

    invoke-virtual/range {v1 .. v9}, Lcom/transsion/postdetail/helper/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;)V

    :cond_2
    instance-of p1, p4, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    if-eqz p1, :cond_3

    check-cast p4, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    invoke-virtual {p4, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;->deleteCacheRoom(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method
