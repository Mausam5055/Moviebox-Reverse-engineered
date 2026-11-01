.class public final Lkx/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkx/c$a;
    }
.end annotation


# static fields
.field public static final a:Lkx/c;

.field private static b:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkx/c;

    invoke-direct {v0}, Lkx/c;-><init>()V

    sput-object v0, Lkx/c;->a:Lkx/c;

    sget-object v0, Lcom/transsion/videodetail/music/bean/MusicLoopEnum;->NORMAL:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    sput-object v0, Lkx/c;->b:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/videodetail/music/bean/MusicLoopEnum;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "loop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkx/c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsion/videodetail/R$drawable;->music_iv_loop_single:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsion/videodetail/R$drawable;->music_iv_loop_list:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsion/videodetail/R$drawable;->music_iv_loop_normal:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b()Lcom/transsion/videodetail/music/bean/MusicLoopEnum;
    .locals 1

    sget-object v0, Lkx/c;->b:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    return-object v0
.end method

.method public final c()Lcom/transsion/videodetail/music/bean/MusicLoopEnum;
    .locals 2

    sget-object v0, Lkx/c;->b:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    sget-object v1, Lkx/c$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/transsion/videodetail/music/bean/MusicLoopEnum;->NORMAL:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/transsion/videodetail/music/bean/MusicLoopEnum;->SINGLE_LOOP:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/transsion/videodetail/music/bean/MusicLoopEnum;->LIST_LOOP:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    :goto_0
    sput-object v0, Lkx/c;->b:Lcom/transsion/videodetail/music/bean/MusicLoopEnum;

    return-object v0
.end method
