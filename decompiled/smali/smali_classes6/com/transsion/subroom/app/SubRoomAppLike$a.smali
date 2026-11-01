.class public final Lcom/transsion/subroom/app/SubRoomAppLike$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/subroom/app/SubRoomAppLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/app/SubRoomAppLike$a;-><init>()V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/transsion/subroom/app/SubRoomAppLike$a;->l()Z

    move-result v0

    return v0
.end method

.method public static synthetic b()Z
    .locals 1

    invoke-static {}, Lcom/transsion/subroom/app/SubRoomAppLike$a;->p()Z

    move-result v0

    return v0
.end method

.method public static synthetic c()Z
    .locals 1

    invoke-static {}, Lcom/transsion/subroom/app/SubRoomAppLike$a;->r()Z

    move-result v0

    return v0
.end method

.method public static synthetic d()I
    .locals 1

    invoke-static {}, Lcom/transsion/subroom/app/SubRoomAppLike$a;->n()I

    move-result v0

    return v0
.end method

.method public static synthetic e()I
    .locals 1

    invoke-static {}, Lcom/transsion/subroom/app/SubRoomAppLike$a;->t()I

    move-result v0

    return v0
.end method

.method public static final synthetic f(Lcom/transsion/subroom/app/SubRoomAppLike$a;)Lkotlin/jvm/functions/Function0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/app/SubRoomAppLike$a;->k()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/subroom/app/SubRoomAppLike$a;)Lkotlin/jvm/functions/Function0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/app/SubRoomAppLike$a;->m()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/subroom/app/SubRoomAppLike$a;)Lkotlin/jvm/functions/Function0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/app/SubRoomAppLike$a;->o()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/subroom/app/SubRoomAppLike$a;)Lkotlin/jvm/functions/Function0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/app/SubRoomAppLike$a;->q()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/subroom/app/SubRoomAppLike$a;)Lkotlin/jvm/functions/Function0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/app/SubRoomAppLike$a;->s()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method private final k()Lkotlin/jvm/functions/Function0;
    .locals 1

    new-instance v0, Lzt/i;

    invoke-direct {v0}, Lzt/i;-><init>()V

    return-object v0
.end method

.method private static final l()Z
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "brandwidth_redundancy_on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrandWidthRedundancyOn API: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    :goto_1
    return v1
.end method

.method private final m()Lkotlin/jvm/functions/Function0;
    .locals 1

    new-instance v0, Lzt/l;

    invoke-direct {v0}, Lzt/l;-><init>()V

    return-object v0
.end method

.method private static final n()I
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sa_player_max_buffer_time"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayerBufferingTime API: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x4e20

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    :goto_1
    return v1
.end method

.method private final o()Lkotlin/jvm/functions/Function0;
    .locals 1

    new-instance v0, Lzt/j;

    invoke-direct {v0}, Lzt/j;-><init>()V

    return-object v0
.end method

.method private static final p()Z
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "player_async"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "false"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final q()Lkotlin/jvm/functions/Function0;
    .locals 1

    new-instance v0, Lzt/k;

    invoke-direct {v0}, Lzt/k;-><init>()V

    return-object v0
.end method

.method private static final r()Z
    .locals 1

    sget-object v0, Lak/h;->a:Lak/h;

    invoke-virtual {v0}, Lak/h;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final s()Lkotlin/jvm/functions/Function0;
    .locals 1

    new-instance v0, Lzt/m;

    invoke-direct {v0}, Lzt/m;-><init>()V

    return-object v0
.end method

.method private static final t()I
    .locals 3

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sb_player_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method
