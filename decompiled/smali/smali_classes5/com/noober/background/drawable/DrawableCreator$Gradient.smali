.class public final enum Lcom/noober/background/drawable/DrawableCreator$Gradient;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noober/background/drawable/DrawableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gradient"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/noober/background/drawable/DrawableCreator$Gradient;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/noober/background/drawable/DrawableCreator$Gradient;

.field public static final enum Linear:Lcom/noober/background/drawable/DrawableCreator$Gradient;

.field public static final enum Radial:Lcom/noober/background/drawable/DrawableCreator$Gradient;

.field public static final enum Sweep:Lcom/noober/background/drawable/DrawableCreator$Gradient;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/noober/background/drawable/DrawableCreator$Gradient;

    const-string v1, "Linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/noober/background/drawable/DrawableCreator$Gradient;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/noober/background/drawable/DrawableCreator$Gradient;->Linear:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    new-instance v1, Lcom/noober/background/drawable/DrawableCreator$Gradient;

    const-string v3, "Radial"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/noober/background/drawable/DrawableCreator$Gradient;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/noober/background/drawable/DrawableCreator$Gradient;->Radial:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    new-instance v3, Lcom/noober/background/drawable/DrawableCreator$Gradient;

    const-string v5, "Sweep"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/noober/background/drawable/DrawableCreator$Gradient;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/noober/background/drawable/DrawableCreator$Gradient;->Sweep:Lcom/noober/background/drawable/DrawableCreator$Gradient;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/noober/background/drawable/DrawableCreator$Gradient;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/noober/background/drawable/DrawableCreator$Gradient;->$VALUES:[Lcom/noober/background/drawable/DrawableCreator$Gradient;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/noober/background/drawable/DrawableCreator$Gradient;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/noober/background/drawable/DrawableCreator$Gradient;
    .locals 1

    const-class v0, Lcom/noober/background/drawable/DrawableCreator$Gradient;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/noober/background/drawable/DrawableCreator$Gradient;

    return-object p0
.end method

.method public static values()[Lcom/noober/background/drawable/DrawableCreator$Gradient;
    .locals 1

    sget-object v0, Lcom/noober/background/drawable/DrawableCreator$Gradient;->$VALUES:[Lcom/noober/background/drawable/DrawableCreator$Gradient;

    invoke-virtual {v0}, [Lcom/noober/background/drawable/DrawableCreator$Gradient;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/noober/background/drawable/DrawableCreator$Gradient;

    return-object v0
.end method
