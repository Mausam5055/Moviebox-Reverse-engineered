.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;
.super Lcom/bumptech/glide/request/target/CustomTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->W0(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    iput p3, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->c:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method

.method public static synthetic a(ILkotlin/jvm/functions/Function1;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Landroidx/palette/graphics/a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->b(ILkotlin/jvm/functions/Function1;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Landroidx/palette/graphics/a;)V

    return-void
.end method

.method private static final b(ILkotlin/jvm/functions/Function1;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Landroidx/palette/graphics/a;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/palette/graphics/a;->i()Landroidx/palette/graphics/a$e;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/palette/graphics/a;->o()Landroidx/palette/graphics/a$e;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_6

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroidx/palette/graphics/a;->m()Landroidx/palette/graphics/a$e;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_6

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroidx/palette/graphics/a;->g()Landroidx/palette/graphics/a$e;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_6

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroidx/palette/graphics/a;->k()Landroidx/palette/graphics/a$e;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    if-nez v1, :cond_6

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroidx/palette/graphics/a;->f()Landroidx/palette/graphics/a$e;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    if-nez v1, :cond_6

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroidx/palette/graphics/a;->j()Landroidx/palette/graphics/a$e;

    move-result-object v0

    goto :goto_5

    :cond_6
    move-object v0, v1

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/palette/graphics/a$e;->e()I

    move-result p0

    goto :goto_6

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3, p0}, Landroidx/palette/graphics/a;->h(I)I

    move-result p0

    :cond_9
    :goto_6
    invoke-static {p2, p0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->y0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->a:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    iget v1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->c:I

    invoke-static {v0, v1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->y0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 3

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroidx/palette/graphics/a;->b(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/a$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/palette/graphics/a$b;->a()Landroidx/palette/graphics/a$b;

    move-result-object p1

    iget p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->c:I

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    new-instance v2, Lcom/transsion/usercenter/profile/fragment/q;

    invoke-direct {v2, p2, v0, v1}, Lcom/transsion/usercenter/profile/fragment/q;-><init>(ILkotlin/jvm/functions/Function1;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V

    invoke-virtual {p1, v2}, Landroidx/palette/graphics/a$b;->b(Landroidx/palette/graphics/a$d;)Landroid/os/AsyncTask;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->a:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    iget v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->c:I

    invoke-static {p2, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->y0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$f;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
