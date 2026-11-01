.class public final Lcom/transsion/room/sub/adapter/subscription/k$b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/sub/adapter/subscription/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final e:Lsj/b;

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private h:Lcom/transsion/room/sub/adapter/subscription/a;


# direct methods
.method public constructor <init>(Lsj/b;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->e:Lsj/b;

    iput-boolean p2, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->f:Z

    const-string p1, "/subscription/subscription"

    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->J(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/k$b;->L(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->K(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/k$b;->I(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/k$b;->G(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    return-void
.end method

.method private static final G(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 1

    sget-object p3, Lnh/m;->a:Lnh/m;

    invoke-virtual {p3}, Lnh/m;->e()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/transsion/room/sub/adapter/subscription/a;->D(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    :cond_1
    const-string p3, "item"

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V

    return-void
.end method

.method private static final H(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/k$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 8

    sget-object p7, Lnh/m;->a:Lnh/m;

    invoke-virtual {p7}, Lnh/m;->e()Z

    move-result p7

    if-nez p7, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-boolean p7, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v0, 0x1

    xor-int/2addr p7, v0

    iput-boolean p7, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v1, 0x0

    if-ne p7, v0, :cond_2

    iget-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p7, Ljava/lang/Integer;

    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    add-int/2addr p7, v0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    goto :goto_0

    :cond_1
    move-object p7, v1

    :goto_0
    iput-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p7, Ljava/lang/Integer;

    if-eqz p7, :cond_3

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    sub-int/2addr p7, v0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    goto :goto_1

    :cond_3
    move-object p7, v1

    :goto_1
    iput-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_2
    iget-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p7, Ljava/lang/Integer;

    if-eqz p7, :cond_4

    invoke-virtual {p7}, Ljava/lang/Number;->intValue()I

    move-result p7

    if-gez p7, :cond_4

    const/4 p7, 0x0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    iput-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_4
    sget p7, Lcom/transsion/room/R$id;->likeText:I

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p7, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p2, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->P(ZLandroidx/appcompat/widget/AppCompatTextView;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "like \u70b9\u51fb\u540e\u72b6\u6001 "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "SubscriptionFeedAdapter"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p3, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p5}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/transsion/room/sub/adapter/subscription/a;->u(ZLjava/lang/String;)V

    :cond_6
    const-string p0, "like"

    iget p1, p6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {p3, p0, p5, p1}, Lcom/transsion/room/sub/adapter/subscription/k$b;->N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V

    return-void
.end method

.method private static final I(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 1

    sget-object p3, Lnh/m;->a:Lnh/m;

    invoke-virtual {p3}, Lnh/m;->e()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/transsion/room/sub/adapter/subscription/a;->r(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    :cond_1
    const-string p3, "comment"

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V

    return-void
.end method

.method private static final J(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V
    .locals 1

    sget-object p2, Lnh/m;->a:Lnh/m;

    invoke-virtual {p2}, Lnh/m;->e()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-interface {p0, p2, v0}, Lcom/transsion/room/sub/adapter/subscription/a;->H(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static final K(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V
    .locals 0

    sget-object p2, Lnh/m;->a:Lnh/m;

    invoke-virtual {p2}, Lnh/m;->e()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/room/sub/adapter/subscription/a;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final L(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 1

    sget-object p3, Lnh/m;->a:Lnh/m;

    invoke-virtual {p3}, Lnh/m;->e()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/transsion/room/sub/adapter/subscription/a;->D(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    :cond_1
    const-string p3, "item"

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V

    return-void
.end method

.method private static final M(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 1

    sget-object p3, Lnh/m;->a:Lnh/m;

    invoke-virtual {p3}, Lnh/m;->e()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/transsion/room/sub/adapter/subscription/a;->D(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    :cond_1
    const-string p3, "item"

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V

    return-void
.end method

.method private final N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ops"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "content_id"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "position"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "refer_subject_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content_type"

    const-string p2, "ugc_video"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    iget-object p2, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->g:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic y(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/k$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/transsion/room/sub/adapter/subscription/k$b;->H(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/k$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/k$b;->M(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/bean/subscription/ItemTrending;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v0, "holder"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedItem"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result v0

    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget v0, Lcom/transsion/room/R$id;->cover_image:I

    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v1, "getContext(...)"

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v12

    :goto_0
    invoke-virtual {v2, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, ""

    :cond_2
    invoke-virtual {v2, v3}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    new-instance v2, Lcom/transsion/room/sub/adapter/subscription/l;

    invoke-direct {v2, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/l;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v12

    :goto_1
    const/4 v2, 0x4

    if-nez v0, :cond_5

    sget v0, Lcom/transsion/room/R$id;->languageTag:I

    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tn/lib/view/CornerTextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    sget v3, Lcom/transsion/room/R$id;->languageTag:I

    invoke-virtual {v9, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_6
    :goto_2
    sget v0, Lcom/transsion/room/R$id;->publisherAvatar:I

    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_8

    sget-object v3, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getAvatar()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v12

    :goto_3
    invoke-virtual {v1, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v3, Lcom/transsion/wrapperad/R$color;->white_20:I

    invoke-virtual {v1, v3}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/m;

    invoke-direct {v1, v8, v10}, Lcom/transsion/room/sub/adapter/subscription/m;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    sget v1, Lcom/transsion/room/R$id;->trending_grid_type_icon:I

    invoke-virtual {v9, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    invoke-static {v1, v0, v12, v2, v12}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_9
    sget v0, Lcom/transsion/room/R$id;->trending_grid_time_text:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_a
    move-object v1, v12

    :goto_4
    invoke-static {v1}, Lcom/transsion/baseui/util/TimeUtilKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/room/R$id;->videoTitle:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_b
    move-object v1, v12

    :goto_5
    invoke-virtual {v9, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/room/R$id;->videoTitle:I

    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/n;

    invoke-direct {v1, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/n;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    sget v0, Lcom/transsion/room/R$id;->videoInfo:I

    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/o;

    invoke-direct {v1, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/o;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    move-result v0

    goto :goto_6

    :cond_e
    move v0, v1

    :goto_6
    if-eqz v0, :cond_10

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v2, Lcom/transsion/baseui/R$string;->ugc_video_shorts:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_f
    move-object v2, v12

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "special_#shorts_icon"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_11
    move-object v0, v12

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    move-result-object v2

    goto :goto_9

    :cond_12
    move-object v2, v12

    :goto_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->k(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_a
    sget v2, Lcom/transsion/room/R$id;->videoInfo:I

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/baseui/util/q;->e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget v0, Lcom/transsion/room/R$id;->likeText:I

    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getLikeNum()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_13
    move-object v0, v12

    :goto_b
    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "likeNumber\u7684\u6570\u91cf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v14, "SubscriptionFeedAdapter"

    const/16 v16, 0x0

    move-object v13, v2

    invoke-static/range {v13 .. v18}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getHasLike()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_c

    :cond_14
    move v3, v1

    :goto_c
    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v8, v3, v4}, Lcom/transsion/room/sub/adapter/subscription/k$b;->P(ZLandroidx/appcompat/widget/AppCompatTextView;)V

    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v3, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "like \u521d\u59cb\u72b6\u6001 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const-string v14, "SubscriptionFeedAdapter"

    const/16 v16, 0x0

    move-object v13, v2

    invoke-static/range {v13 .. v18}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v0, :cond_15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_d

    :cond_15
    move-object v0, v12

    :goto_d
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-gez v0, :cond_16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_16
    sget v0, Lcom/transsion/room/R$id;->likeText:I

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v14, Lcom/transsion/room/sub/adapter/subscription/p;

    move-object v0, v14

    move-object v1, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/transsion/room/sub/adapter/subscription/p;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/k$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/room/R$id;->commentImg:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getCommentNum()Ljava/lang/String;

    move-result-object v12

    :cond_17
    invoke-virtual {v9, v0, v12}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/room/R$id;->commentImg:I

    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/q;

    invoke-direct {v1, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/q;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/room/R$id;->shareImg:I

    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/r;

    invoke-direct {v1, v8, v10}, Lcom/transsion/room/sub/adapter/subscription/r;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final O(Lcom/transsion/room/sub/adapter/subscription/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    return-void
.end method

.method public final P(ZLandroidx/appcompat/widget/AppCompatTextView;)V
    .locals 1

    const-string v0, "imageLikes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/baseui/R$drawable;->base_ic_ugc_post_like_selected:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/baseui/R$drawable;->base_ic_ugc_post_like:I

    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/room/sub/bean/subscription/ItemTrending;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/bean/subscription/ItemTrending;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/room/R$layout;->item_feed:I

    return v0
.end method
