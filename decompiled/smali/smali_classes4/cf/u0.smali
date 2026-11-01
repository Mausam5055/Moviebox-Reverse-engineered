.class public final Lcf/u0;
.super Lcf/d;


# direct methods
.method public constructor <init>(Lcf/o0;)V
    .locals 1

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcf/d;-><init>(Lcf/o0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcf/d;->a:Lcf/o0;

    iget-object v1, v1, Lcf/o0;->j:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {p1, v0, p0}, Lcf/o0;->y(Ljava/util/Set;Lcf/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcf/d;->finish()V

    :goto_0
    return-void
.end method

.method public request()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcf/d;->a:Lcf/o0;

    iget-object v1, v1, Lcf/o0;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lye/c;->a:Lye/c;

    iget-object v4, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v4}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lye/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcf/d;->a:Lcf/o0;

    iget-object v3, v3, Lcf/o0;->j:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcf/d;->finish()V

    return-void

    :cond_2
    iget-object v1, p0, Lcf/d;->a:Lcf/o0;

    iget-boolean v2, v1, Lcf/o0;->g:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcf/d;->a:Lcf/o0;

    iget-object v1, v1, Lcf/o0;->q:Lze/b;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "get(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcf/d;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v4}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v1}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcf/d;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4
    move v1, v3

    :goto_1
    iget-object v4, p0, Lcf/d;->a:Lcf/o0;

    iput-boolean v2, v4, Lcf/o0;->g:Z

    iget-object v2, v4, Lcf/o0;->k:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v2, p0}, Lcf/o0;->E(Lcf/e;)V

    iget-object v2, p0, Lcf/d;->a:Lcf/o0;

    iget-object v4, v2, Lcf/o0;->q:Lze/b;

    if-eqz v4, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcf/d;->b()Lcf/f;

    move-result-object v2

    xor-int/2addr v1, v3

    invoke-interface {v4, v2, v0, v3, v1}, Lze/b;->a(Lcf/f;Ljava/util/List;ZZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcf/d;->b()Lcf/f;

    throw v0

    :cond_6
    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    iget-object v1, v0, Lcf/o0;->e:Ljava/util/Set;

    invoke-virtual {v0, v1, p0}, Lcf/o0;->y(Ljava/util/Set;Lcf/e;)V

    :goto_2
    return-void
.end method
