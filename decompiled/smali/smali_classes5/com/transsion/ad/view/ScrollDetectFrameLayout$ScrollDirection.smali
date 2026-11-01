.class public final enum Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/view/ScrollDetectFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "UP",
        "DOWN",
        "lib_ad_gpRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

.field public static final enum DOWN:Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

.field public static final enum UP:Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    sget-object v1, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->UP:Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->DOWN:Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->UP:Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    new-instance v0, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    const-string v1, "DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->DOWN:Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    invoke-static {}, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->$values()[Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->$VALUES:[Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;
    .locals 1

    const-class v0, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    return-object p0
.end method

.method public static values()[Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;
    .locals 1

    sget-object v0, Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;->$VALUES:[Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;

    return-object v0
.end method
