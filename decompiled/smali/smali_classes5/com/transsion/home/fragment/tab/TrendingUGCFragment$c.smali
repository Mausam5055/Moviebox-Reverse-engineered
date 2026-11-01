.class public final Lcom/transsion/home/fragment/tab/TrendingUGCFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lhl/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$c;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object p4, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$c;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    invoke-static {p4}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->K0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)Lcom/transsion/home/adapter/operateUGC/b;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const-string v1, "mainAdapter"

    if-nez p4, :cond_0

    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p4, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p4}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_SINGLE_IMAGE:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lrl/c;->a:Lrl/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrl/c;->e(IJLcom/transsion/home/bean/OperateItem;)V

    goto :goto_3

    :cond_1
    iget-object p4, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$c;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    invoke-static {p4}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->L0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)Lhl/d;

    move-result-object p4

    if-eqz p4, :cond_3

    iget-object v2, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$c;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    invoke-static {v2}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->K0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)Lcom/transsion/home/adapter/operateUGC/b;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p4, v0, p1, p2, p3}, Lhl/d;->a(Lcom/transsion/home/bean/OperateItem;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "reportExposure"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    :goto_3
    return-void
.end method
