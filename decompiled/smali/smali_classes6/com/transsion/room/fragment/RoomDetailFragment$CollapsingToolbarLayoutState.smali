.class final enum Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/fragment/RoomDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CollapsingToolbarLayoutState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "EXPANDED",
        "COLLAPSED",
        "INTERNEDIATE",
        "TOOLBAR",
        "APPBAR",
        "Room_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

.field public static final enum APPBAR:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

.field public static final enum COLLAPSED:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

.field public static final enum EXPANDED:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

.field public static final enum INTERNEDIATE:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

.field public static final enum TOOLBAR:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    sget-object v1, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->EXPANDED:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->COLLAPSED:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->INTERNEDIATE:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->TOOLBAR:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->APPBAR:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->EXPANDED:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    new-instance v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    const-string v1, "COLLAPSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->COLLAPSED:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    new-instance v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    const-string v1, "INTERNEDIATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->INTERNEDIATE:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    new-instance v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    const-string v1, "TOOLBAR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->TOOLBAR:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    new-instance v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    const-string v1, "APPBAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->APPBAR:Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    invoke-static {}, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->$values()[Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    move-result-object v0

    sput-object v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->$VALUES:[Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;
    .locals 1

    const-class v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;
    .locals 1

    sget-object v0, Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;->$VALUES:[Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/room/fragment/RoomDetailFragment$CollapsingToolbarLayoutState;

    return-object v0
.end method
