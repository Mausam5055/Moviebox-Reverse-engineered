.class public final Lcf/q0;
.super Lcf/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/q0$a;
    }
.end annotation


# static fields
.field public static final f:Lcf/q0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcf/q0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcf/q0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcf/q0;->f:Lcf/q0$a;

    return-void
.end method

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

    invoke-virtual {p1, p0}, Lcf/o0;->u(Lcf/e;)V

    return-void
.end method

.method public request()V
    .locals 5

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v0}, Lcf/o0;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.permission.BODY_SENSORS_BACKGROUND"

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    iget-object v0, v0, Lcf/o0;->f:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    iget-object v0, v0, Lcf/o0;->i:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcf/d;->finish()V

    return-void

    :cond_0
    sget-object v0, Lye/c;->a:Lye/c;

    iget-object v1, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v1}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lye/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcf/d;->finish()V

    return-void

    :cond_1
    iget-object v1, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v1}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "android.permission.BODY_SENSORS"

    invoke-virtual {v0, v1, v3}, Lye/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    iget-object v0, v0, Lcf/o0;->q:Lze/b;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcf/d;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v0}, Lcf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcf/d;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcf/d;->a:Lcf/o0;

    invoke-virtual {v3, p0}, Lcf/o0;->E(Lcf/e;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcf/d;->a:Lcf/o0;

    iget-object v4, v3, Lcf/o0;->q:Lze/b;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcf/d;->b()Lcf/f;

    move-result-object v3

    xor-int/2addr v0, v1

    invoke-interface {v4, v3, v2, v1, v0}, Lze/b;->a(Lcf/f;Ljava/util/List;ZZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcf/d;->b()Lcf/f;

    throw v0

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcf/q0;->a(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0}, Lcf/d;->finish()V

    return-void
.end method
