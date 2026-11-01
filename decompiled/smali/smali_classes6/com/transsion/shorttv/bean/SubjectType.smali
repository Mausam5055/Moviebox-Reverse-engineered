.class public final enum Lcom/transsion/shorttv/bean/SubjectType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/shorttv/bean/SubjectType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/shorttv/bean/SubjectType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "MOVIE",
        "TV",
        "VSHOW",
        "AUDIO",
        "EDUCATION",
        "MUSIC",
        "SHORT_TV",
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

.field private static final synthetic $VALUES:[Lcom/transsion/shorttv/bean/SubjectType;

.field public static final enum AUDIO:Lcom/transsion/shorttv/bean/SubjectType;

.field public static final enum EDUCATION:Lcom/transsion/shorttv/bean/SubjectType;

.field public static final enum MOVIE:Lcom/transsion/shorttv/bean/SubjectType;

.field public static final enum MUSIC:Lcom/transsion/shorttv/bean/SubjectType;

.field public static final enum SHORT_TV:Lcom/transsion/shorttv/bean/SubjectType;

.field public static final enum TV:Lcom/transsion/shorttv/bean/SubjectType;

.field public static final enum VSHOW:Lcom/transsion/shorttv/bean/SubjectType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/shorttv/bean/SubjectType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/transsion/shorttv/bean/SubjectType;

    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->MOVIE:Lcom/transsion/shorttv/bean/SubjectType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->TV:Lcom/transsion/shorttv/bean/SubjectType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->VSHOW:Lcom/transsion/shorttv/bean/SubjectType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->AUDIO:Lcom/transsion/shorttv/bean/SubjectType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->EDUCATION:Lcom/transsion/shorttv/bean/SubjectType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->MUSIC:Lcom/transsion/shorttv/bean/SubjectType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->SHORT_TV:Lcom/transsion/shorttv/bean/SubjectType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/shorttv/bean/SubjectType;

    const-string v1, "MOVIE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/shorttv/bean/SubjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/shorttv/bean/SubjectType;->MOVIE:Lcom/transsion/shorttv/bean/SubjectType;

    new-instance v0, Lcom/transsion/shorttv/bean/SubjectType;

    const-string v1, "TV"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/shorttv/bean/SubjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/shorttv/bean/SubjectType;->TV:Lcom/transsion/shorttv/bean/SubjectType;

    new-instance v0, Lcom/transsion/shorttv/bean/SubjectType;

    const-string v1, "VSHOW"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/shorttv/bean/SubjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/shorttv/bean/SubjectType;->VSHOW:Lcom/transsion/shorttv/bean/SubjectType;

    new-instance v0, Lcom/transsion/shorttv/bean/SubjectType;

    const-string v1, "AUDIO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/shorttv/bean/SubjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/shorttv/bean/SubjectType;->AUDIO:Lcom/transsion/shorttv/bean/SubjectType;

    new-instance v0, Lcom/transsion/shorttv/bean/SubjectType;

    const-string v1, "EDUCATION"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/shorttv/bean/SubjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/shorttv/bean/SubjectType;->EDUCATION:Lcom/transsion/shorttv/bean/SubjectType;

    new-instance v0, Lcom/transsion/shorttv/bean/SubjectType;

    const-string v1, "MUSIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/shorttv/bean/SubjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/shorttv/bean/SubjectType;->MUSIC:Lcom/transsion/shorttv/bean/SubjectType;

    new-instance v0, Lcom/transsion/shorttv/bean/SubjectType;

    const-string v1, "SHORT_TV"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/shorttv/bean/SubjectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/shorttv/bean/SubjectType;->SHORT_TV:Lcom/transsion/shorttv/bean/SubjectType;

    invoke-static {}, Lcom/transsion/shorttv/bean/SubjectType;->$values()[Lcom/transsion/shorttv/bean/SubjectType;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv/bean/SubjectType;->$VALUES:[Lcom/transsion/shorttv/bean/SubjectType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/shorttv/bean/SubjectType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput p3, p0, Lcom/transsion/shorttv/bean/SubjectType;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/shorttv/bean/SubjectType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/shorttv/bean/SubjectType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/shorttv/bean/SubjectType;
    .locals 1

    const-class v0, Lcom/transsion/shorttv/bean/SubjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/shorttv/bean/SubjectType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/shorttv/bean/SubjectType;
    .locals 1

    sget-object v0, Lcom/transsion/shorttv/bean/SubjectType;->$VALUES:[Lcom/transsion/shorttv/bean/SubjectType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/shorttv/bean/SubjectType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/bean/SubjectType;->value:I

    return v0
.end method
