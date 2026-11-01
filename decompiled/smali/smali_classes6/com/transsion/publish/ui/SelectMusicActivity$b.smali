.class public final Lcom/transsion/publish/ui/SelectMusicActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/publish/adapter/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/SelectMusicActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/SelectMusicActivity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/SelectMusicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/ui/SelectMusicActivity$b;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/publish/ui/SelectMusicActivity;Lcom/transsion/publish/api/AudioEntity;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/ui/SelectMusicActivity$b;->c(Lcom/transsion/publish/ui/SelectMusicActivity;Lcom/transsion/publish/api/AudioEntity;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final c(Lcom/transsion/publish/ui/SelectMusicActivity;Lcom/transsion/publish/api/AudioEntity;Landroid/media/MediaPlayer;)V
    .locals 6

    invoke-static {p0}, Lcom/transsion/publish/ui/SelectMusicActivity;->l0(Lcom/transsion/publish/ui/SelectMusicActivity;)Lcom/transsion/publish/adapter/b0;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/publish/adapter/b0;->h()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v4, Lcom/transsion/publish/api/AudioEntity;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    if-eq v2, v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/AudioEntity;->setPlay(Z)V

    invoke-static {p0}, Lcom/transsion/publish/ui/SelectMusicActivity;->l0(Lcom/transsion/publish/ui/SelectMusicActivity;)Lcom/transsion/publish/adapter/b0;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/publish/api/AudioEntity;)V
    .locals 6

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectMusicActivity$b;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectMusicActivity;->k0(Lcom/transsion/publish/ui/SelectMusicActivity;)Lmp/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/publish/ui/SelectMusicActivity$b;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    new-instance v1, Lmp/d;

    invoke-direct {v1}, Lmp/d;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/publish/ui/SelectMusicActivity;->s0(Lcom/transsion/publish/ui/SelectMusicActivity;Lmp/d;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectMusicActivity$b;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectMusicActivity;->n0(Lcom/transsion/publish/ui/SelectMusicActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/publish/api/AudioEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/publish/ui/SelectMusicActivity$b;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectMusicActivity;->k0(Lcom/transsion/publish/ui/SelectMusicActivity;)Lmp/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmp/d;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/transsion/publish/ui/SelectMusicActivity$b;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-static {p1}, Lcom/transsion/publish/ui/SelectMusicActivity;->k0(Lcom/transsion/publish/ui/SelectMusicActivity;)Lmp/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmp/d;->c()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/publish/api/AudioEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/publish/ui/SelectMusicActivity$b;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-static {v1}, Lcom/transsion/publish/ui/SelectMusicActivity;->o0(Lcom/transsion/publish/ui/SelectMusicActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/transsion/publish/ui/SelectMusicActivity;->k0(Lcom/transsion/publish/ui/SelectMusicActivity;)Lmp/d;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Lcom/transsion/publish/ui/d1;

    invoke-direct {v4, v1, p1}, Lcom/transsion/publish/ui/d1;-><init>(Lcom/transsion/publish/ui/SelectMusicActivity;Lcom/transsion/publish/api/AudioEntity;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v0, v1, v4}, Lmp/d;->d(Landroid/content/Context;Ljava/lang/String;ZLandroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectMusicActivity$b;->a:Lcom/transsion/publish/ui/SelectMusicActivity;

    invoke-virtual {p1}, Lcom/transsion/publish/api/AudioEntity;->getLocalPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/publish/ui/SelectMusicActivity;->t0(Lcom/transsion/publish/ui/SelectMusicActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "audioTAG"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method
