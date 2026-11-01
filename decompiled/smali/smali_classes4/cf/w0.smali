.class public final Lcf/w0;
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

    invoke-virtual {p1, p0}, Lcf/o0;->z(Lcf/e;)V

    return-void
.end method

.method public request()V
    .locals 4

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v0}, Lcf/o0;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lye/c;->a:Lye/c;

    iget-object v1, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v1}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lye/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcf/d;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    iget-object v1, v0, Lcf/o0;->q:Lze/b;

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Lcf/o0;->E(Lcf/e;)V

    const-string v0, "android.permission.PICTURE_IN_PICTURE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcf/d;->a:Lcf/o0;

    iget-object v2, v1, Lcf/o0;->q:Lze/b;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcf/d;->b()Lcf/f;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3, v3}, Lze/b;->a(Lcf/f;Ljava/util/List;ZZ)V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcf/d;->b()Lcf/f;

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcf/d;->finish()V

    return-void
.end method
