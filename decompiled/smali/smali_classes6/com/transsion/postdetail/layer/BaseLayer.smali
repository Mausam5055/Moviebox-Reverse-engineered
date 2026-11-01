.class public abstract Lcom/transsion/postdetail/layer/BaseLayer;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/transsion/player/orplayer/g;

.field private c:Ljava/lang/String;

.field private d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private final e:Lkotlin/Lazy;

.field private f:Lcom/transsion/player/ui/ORPlayerView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/transsion/postdetail/layer/a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->a:Ljava/lang/String;

    new-instance v0, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p1}, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class v1, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance v3, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v0, p1}, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-static {p1, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->e:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final varargs F(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "flag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->h:Lcom/transsion/postdetail/layer/a;

    if-eqz v0, :cond_0

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/transsion/postdetail/layer/a;->h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final G()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected final H()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->b:Lcom/transsion/player/orplayer/g;

    return-object v0
.end method

.method protected final I()Lcom/transsion/player/ui/ORPlayerView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->f:Lcom/transsion/player/ui/ORPlayerView;

    return-object v0
.end method

.method protected final J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->i:Z

    return v0
.end method

.method protected final K(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->g:Landroid/widget/ImageView;

    return-void
.end method

.method public final L(Lcom/transsion/postdetail/layer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->h:Lcom/transsion/postdetail/layer/a;

    return-void
.end method

.method public M(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 7

    const-string v0, "orPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orPlayerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/BaseLayer;->a:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "setPlayer----->"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->b:Lcom/transsion/player/orplayer/g;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/BaseLayer;->f:Lcom/transsion/player/ui/ORPlayerView;

    return-void
.end method

.method public final N(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 7

    const-string v0, "postId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/BaseLayer;->a:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "setPostData----->"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/BaseLayer;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    return-void
.end method

.method protected final O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->c:Ljava/lang/String;

    return-void
.end method

.method protected final P(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->i:Z

    return-void
.end method
