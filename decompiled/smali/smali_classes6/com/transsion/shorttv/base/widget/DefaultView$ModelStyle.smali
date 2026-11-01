.class public final enum Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/base/widget/DefaultView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModelStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "MODEL_STYLE_NIGHT",
        "MODEL_STYLE_WHITE",
        "shortTvLib_release"
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

.field private static final synthetic $VALUES:[Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

.field public static final enum MODEL_STYLE_NIGHT:Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

.field public static final enum MODEL_STYLE_WHITE:Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    sget-object v1, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;->MODEL_STYLE_NIGHT:Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;->MODEL_STYLE_WHITE:Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    const-string v1, "MODEL_STYLE_NIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;->MODEL_STYLE_NIGHT:Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    new-instance v0, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    const-string v1, "MODEL_STYLE_WHITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;->MODEL_STYLE_WHITE:Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    invoke-static {}, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;->$values()[Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;->$VALUES:[Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;
    .locals 1

    const-class v0, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    return-object p0
.end method

.method public static values()[Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;->$VALUES:[Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/shorttv/base/widget/DefaultView$ModelStyle;

    return-object v0
.end method
