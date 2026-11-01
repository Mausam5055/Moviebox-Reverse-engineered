.class public final Lcom/transsion/room/fragment/RoomHomeFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/fragment/RoomHomeFragment;
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

    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomHomeFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/room/fragment/RoomHomeFragment$a;Lcom/transsion/room/api/RoomHomeParentType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/room/fragment/RoomHomeFragment;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/room/fragment/RoomHomeFragment$a;->a(Lcom/transsion/room/api/RoomHomeParentType;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/room/fragment/RoomHomeFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/transsion/room/api/RoomHomeParentType;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/room/fragment/RoomHomeFragment;
    .locals 3

    const-string v0, "parentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/room/fragment/RoomHomeFragment;

    invoke-direct {v0}, Lcom/transsion/room/fragment/RoomHomeFragment;-><init>()V

    const-string v1, "post_id"

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const-string v1, "ops"

    invoke-static {v1, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const-string v1, "parent_type"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {v1}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
