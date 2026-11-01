.class public final Lej/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lej/f$a;,
        Lej/f$b;
    }
.end annotation


# static fields
.field public static final a:Lej/f$a;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static final e:Lcom/transsion/base/image/blurhash/BlurHash;

.field private static final f:Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lej/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lej/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lej/f;->a:Lej/f$a;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lej/f;->b:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lej/f;->c:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v0

    sput v0, Lej/f;->d:I

    new-instance v0, Lcom/transsion/base/image/blurhash/BlurHash;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/base/image/blurhash/BlurHash;-><init>(Landroid/content/Context;IF)V

    sput-object v0, Lej/f;->e:Lcom/transsion/base/image/blurhash/BlurHash;

    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->setCrossFadeEnabled(Z)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->with(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    const-string v1, "with(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lej/f;->f:Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/transsion/base/image/blurhash/BlurHash;
    .locals 1

    sget-object v0, Lej/f;->e:Lcom/transsion/base/image/blurhash/BlurHash;

    return-object v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Lej/f;->b:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Lej/f;->c:I

    return v0
.end method

.method public static final synthetic d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    sget-object v0, Lej/f;->f:Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    return-object v0
.end method
