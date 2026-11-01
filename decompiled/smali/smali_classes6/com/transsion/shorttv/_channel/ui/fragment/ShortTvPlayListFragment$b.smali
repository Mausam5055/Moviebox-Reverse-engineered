.class public final Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lxr/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->initViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 10

    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p2}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->y0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p2}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->s0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/a;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    :cond_0
    if-lt p1, p3, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p2}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->s0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/a;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/shorttv/bean/Staff;

    goto :goto_0

    :cond_2
    move-object p2, p4

    :goto_0
    iget-object p3, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p3}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->v0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Ltr/d;

    move-result-object v0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Staff;->getStaffId()Ljava/lang/String;

    move-result-object p3

    move-object v2, p3

    goto :goto_1

    :cond_3
    move-object v2, p4

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Staff;->getOps()Ljava/lang/String;

    move-result-object p4

    :cond_4
    move-object v3, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->t0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->w0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->u0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "playlist"

    invoke-virtual/range {v0 .. v7}, Ltr/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p2}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->x0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/e;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_2

    :cond_6
    move p2, p3

    :goto_2
    if-lt p1, p2, :cond_7

    return-void

    :cond_7
    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p2}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->x0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/e;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_3

    :cond_8
    move-object p2, p4

    :goto_3
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {v0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->v0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Ltr/d;

    move-result-object v1

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_9
    move-object v3, p4

    :goto_4
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object p4

    :cond_a
    move-object v4, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :cond_b
    move v6, p3

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->t0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->w0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->u0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "playlist"

    invoke-virtual/range {v1 .. v9}, Ltr/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method
