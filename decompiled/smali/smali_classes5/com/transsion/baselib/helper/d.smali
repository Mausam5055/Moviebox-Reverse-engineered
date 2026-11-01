.class public final Lcom/transsion/baselib/helper/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/baselib/helper/d;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/baselib/helper/d;

    invoke-direct {v0}, Lcom/transsion/baselib/helper/d;-><init>()V

    sput-object v0, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    new-instance v0, Lcom/transsion/baselib/helper/c;

    invoke-direct {v0}, Lcom/transsion/baselib/helper/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/baselib/helper/d;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/baselib/helper/d;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private final b()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/helper/d;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method

.method private static final e()Lcom/tencent/mmkv/MMKV;
    .locals 2

    const-string v0, "LocalVideoPlayerConfig"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkvWithID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/transsion/player/enum/ScaleMode;
    .locals 3

    invoke-direct {p0}, Lcom/transsion/baselib/helper/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ScaleMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FIT:Lcom/transsion/player/enum/ScaleMode;

    invoke-virtual {v1}, Lcom/transsion/player/enum/ScaleMode;->getValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    invoke-virtual {v1}, Lcom/transsion/player/enum/ScaleMode;->getValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/transsion/player/enum/ScaleMode;->SCALE_TO_FILL:Lcom/transsion/player/enum/ScaleMode;

    :goto_0
    return-object v1
.end method

.method public final d()F
    .locals 3

    invoke-direct {p0}, Lcom/transsion/baselib/helper/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final f(Lcom/transsion/player/enum/ScaleMode;)V
    .locals 2

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/baselib/helper/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ScaleMode"

    invoke-virtual {p1}, Lcom/transsion/player/enum/ScaleMode;->getValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final g(F)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/baselib/helper/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "speed"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
