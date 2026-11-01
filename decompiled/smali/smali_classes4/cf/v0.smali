.class public final Lcf/v0;
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
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {p1, p0}, Lcf/o0;->x(Lcf/e;)V

    return-void
.end method

.method public request()V
    .locals 5

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v0}, Lcf/o0;->J()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lye/c;->a:Lye/c;

    iget-object v1, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v1}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lye/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcf/d;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    iget-object v0, v0, Lcf/o0;->q:Lze/b;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcf/d;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-lt v1, v3, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcf/d;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    move v0, v4

    :goto_0
    iget-object v1, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v1, p0}, Lcf/o0;->E(Lcf/e;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcf/d;->a:Lcf/o0;

    iget-object v3, v2, Lcf/o0;->q:Lze/b;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcf/d;->b()Lcf/f;

    move-result-object v2

    xor-int/2addr v0, v4

    invoke-interface {v3, v2, v1, v4, v0}, Lze/b;->a(Lcf/f;Ljava/util/List;ZZ)V

    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcf/d;->b()Lcf/f;

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcf/d;->finish()V

    return-void
.end method
