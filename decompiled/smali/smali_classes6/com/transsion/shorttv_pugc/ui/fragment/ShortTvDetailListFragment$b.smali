.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lbt/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 8

    iget-object p4, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    invoke-static {p4}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->p0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv_pugc/ui/adapter/e;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$b;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lut/a;->a:Lut/a;

    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->r0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    move-object v7, p1

    const-string v6, ""

    move-wide v3, p2

    invoke-virtual/range {v2 .. v7}, Lut/a;->d(JLcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
