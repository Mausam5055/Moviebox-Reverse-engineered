.class public final enum Lcom/transsion/upgradesdk/bean/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:Lcom/transsion/upgradesdk/bean/c;

.field public static final enum c:Lcom/transsion/upgradesdk/bean/c;

.field public static final enum d:Lcom/transsion/upgradesdk/bean/c;

.field public static final synthetic e:[Lcom/transsion/upgradesdk/bean/c;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/transsion/upgradesdk/bean/c;

    const-string v1, "STATUS_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/upgradesdk/bean/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/upgradesdk/bean/c;->b:Lcom/transsion/upgradesdk/bean/c;

    new-instance v1, Lcom/transsion/upgradesdk/bean/c;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/transsion/upgradesdk/bean/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    new-instance v3, Lcom/transsion/upgradesdk/bean/c;

    const-string v5, "CUSTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/transsion/upgradesdk/bean/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/transsion/upgradesdk/bean/c;->d:Lcom/transsion/upgradesdk/bean/c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/upgradesdk/bean/c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/transsion/upgradesdk/bean/c;->e:[Lcom/transsion/upgradesdk/bean/c;

    invoke-static {v5}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/upgradesdk/bean/c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/upgradesdk/bean/c;
    .locals 1

    const-class v0, Lcom/transsion/upgradesdk/bean/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/upgradesdk/bean/c;

    return-object p0
.end method

.method public static values()[Lcom/transsion/upgradesdk/bean/c;
    .locals 1

    sget-object v0, Lcom/transsion/upgradesdk/bean/c;->e:[Lcom/transsion/upgradesdk/bean/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/upgradesdk/bean/c;

    return-object v0
.end method
