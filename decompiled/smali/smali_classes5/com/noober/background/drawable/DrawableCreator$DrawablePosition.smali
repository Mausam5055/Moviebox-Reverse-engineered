.class public final enum Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noober/background/drawable/DrawableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawablePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

.field public static final enum Bottom:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

.field public static final enum Left:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

.field public static final enum Right:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

.field public static final enum Top:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Left:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    new-instance v1, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    const-string v3, "Right"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Right:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    new-instance v3, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    const-string v5, "Top"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Top:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    new-instance v5, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    const-string v7, "Bottom"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->Bottom:Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->$VALUES:[Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;
    .locals 1

    const-class v0, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    return-object p0
.end method

.method public static values()[Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;
    .locals 1

    sget-object v0, Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->$VALUES:[Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    invoke-virtual {v0}, [Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/noober/background/drawable/DrawableCreator$DrawablePosition;

    return-object v0
.end method
