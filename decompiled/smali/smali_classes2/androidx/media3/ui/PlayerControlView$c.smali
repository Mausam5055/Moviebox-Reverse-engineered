.class final Landroidx/media3/ui/PlayerControlView$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/a0$d;
.implements Landroidx/media3/ui/y0$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method private constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView$c;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public l(Landroidx/media3/ui/y0;J)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/media3/ui/PlayerControlView;Z)Z

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->f(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->f(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->g(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->h(Landroidx/media3/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Landroidx/media3/common/util/a1;->o0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/e0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/ui/e0;->W()V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->b(Landroidx/media3/common/a0$d;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Landroidx/media3/common/a0$b;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->c(Landroidx/media3/common/a0$d;Landroidx/media3/common/a0$b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/e0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/ui/e0;->X()V

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->m(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/16 p1, 0x9

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v0}, Landroidx/media3/common/a0;->m()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->n(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_2

    const/4 p1, 0x7

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v0}, Landroidx/media3/common/a0;->f()V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->o(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackState()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_b

    const/16 p1, 0xc

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v0}, Landroidx/media3/common/a0;->v()V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->p(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    const/16 p1, 0xb

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v0}, Landroidx/media3/common/a0;->w()V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->q(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_5

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->r(Landroidx/media3/ui/PlayerControlView;)Z

    move-result p1

    invoke-static {v0, p1}, Landroidx/media3/common/util/a1;->x0(Landroidx/media3/common/a0;Z)Z

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->s(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_6

    const/16 p1, 0xf

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v0}, Landroidx/media3/common/a0;->getRepeatMode()I

    move-result p1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->t(Landroidx/media3/ui/PlayerControlView;)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/media3/common/util/k0;->a(II)I

    move-result p1

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->u(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_7

    const/16 p1, 0xe

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->h(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v0}, Landroidx/media3/common/a0;->getShuffleModeEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setShuffleModeEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->v(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_8

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/e0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/ui/e0;->W()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->w(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$h;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->v(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/media3/ui/PlayerControlView;->y(Landroidx/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->z(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_9

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/e0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/ui/e0;->W()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->A(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$e;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->z(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/media3/ui/PlayerControlView;->y(Landroidx/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->B(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_a

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/e0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/ui/e0;->W()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->C(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->B(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/media3/ui/PlayerControlView;->y(Landroidx/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->D(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_b

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/e0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/ui/e0;->W()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->E(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$j;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->D(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/media3/ui/PlayerControlView;->y(Landroidx/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->d(Landroidx/media3/common/a0$d;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onCues(Lu1/b;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->e(Landroidx/media3/common/a0$d;Lu1/b;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Landroidx/media3/common/m;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->f(Landroidx/media3/common/a0$d;Landroidx/media3/common/m;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->g(Landroidx/media3/common/a0$d;IZ)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->l(Landroidx/media3/ui/PlayerControlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/ui/e0;->X()V

    :cond_0
    return-void
.end method

.method public onEvents(Landroidx/media3/common/a0;Landroidx/media3/common/a0$c;)V
    .locals 8

    const/4 p1, 0x0

    const/16 v0, 0xb

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/16 v6, 0xd

    filled-new-array {v4, v5, v6}, [I

    move-result-object v7

    invoke-virtual {p2, v7}, Landroidx/media3/common/a0$c;->b([I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v7}, Landroidx/media3/ui/PlayerControlView;->x(Landroidx/media3/ui/PlayerControlView;)V

    :cond_0
    filled-new-array {v4, v5, v3, v6}, [I

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/media3/common/a0$c;->b([I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v4}, Landroidx/media3/ui/PlayerControlView;->F(Landroidx/media3/ui/PlayerControlView;)V

    :cond_1
    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/media3/common/a0$c;->b([I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v2}, Landroidx/media3/ui/PlayerControlView;->N(Landroidx/media3/ui/PlayerControlView;)V

    :cond_2
    filled-new-array {v1, v6}, [I

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/media3/common/a0$c;->b([I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->O(Landroidx/media3/ui/PlayerControlView;)V

    :cond_3
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Landroidx/media3/common/a0$c;->b([I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->P(Landroidx/media3/ui/PlayerControlView;)V

    :cond_4
    filled-new-array {v0, p1, v6}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/a0$c;->b([I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->Q(Landroidx/media3/ui/PlayerControlView;)V

    :cond_5
    const/16 p1, 0xc

    filled-new-array {p1, v6}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/a0$c;->b([I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->R(Landroidx/media3/ui/PlayerControlView;)V

    :cond_6
    const/4 p1, 0x2

    filled-new-array {p1, v6}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/a0$c;->b([I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->d(Landroidx/media3/ui/PlayerControlView;)V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->i(Landroidx/media3/common/a0$d;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->j(Landroidx/media3/common/a0$d;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->k(Landroidx/media3/common/a0$d;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Landroidx/media3/common/t;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->m(Landroidx/media3/common/a0$d;Landroidx/media3/common/t;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Landroidx/media3/common/v;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->n(Landroidx/media3/common/a0$d;Landroidx/media3/common/v;)V

    return-void
.end method

.method public synthetic onMetadata(Landroidx/media3/common/x;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->o(Landroidx/media3/common/a0$d;Landroidx/media3/common/x;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->p(Landroidx/media3/common/a0$d;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Landroidx/media3/common/z;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->q(Landroidx/media3/common/a0$d;Landroidx/media3/common/z;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->r(Landroidx/media3/common/a0$d;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->s(Landroidx/media3/common/a0$d;I)V

    return-void
.end method

.method public synthetic onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->t(Landroidx/media3/common/a0$d;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->u(Landroidx/media3/common/a0$d;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->v(Landroidx/media3/common/a0$d;ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->x(Landroidx/media3/common/a0$d;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/b0;->y(Landroidx/media3/common/a0$d;Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/b0;->z(Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->A(Landroidx/media3/common/a0$d;I)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->D(Landroidx/media3/common/a0$d;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->E(Landroidx/media3/common/a0$d;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->F(Landroidx/media3/common/a0$d;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Landroidx/media3/common/e0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/b0;->G(Landroidx/media3/common/a0$d;Landroidx/media3/common/e0;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Landroidx/media3/common/h0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->H(Landroidx/media3/common/a0$d;Landroidx/media3/common/h0;)V

    return-void
.end method

.method public synthetic onTracksChanged(Landroidx/media3/common/i0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->I(Landroidx/media3/common/a0$d;Landroidx/media3/common/i0;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Landroidx/media3/common/m0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->J(Landroidx/media3/common/a0$d;Landroidx/media3/common/m0;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/b0;->K(Landroidx/media3/common/a0$d;F)V

    return-void
.end method

.method public q(Landroidx/media3/ui/y0;J)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->f(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->f(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->g(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/PlayerControlView;->h(Landroidx/media3/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Landroidx/media3/common/util/a1;->o0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public r(Landroidx/media3/ui/y0;JZ)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/media3/ui/PlayerControlView;Z)Z

    if-nez p4, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Landroidx/media3/ui/PlayerControlView;->k(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/a0;J)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$c;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/e0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/ui/e0;->X()V

    return-void
.end method
