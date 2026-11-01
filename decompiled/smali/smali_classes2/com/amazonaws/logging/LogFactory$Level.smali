.class public final enum Lcom/amazonaws/logging/LogFactory$Level;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/logging/LogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/logging/LogFactory$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum ALL:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum ERROR:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum INFO:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum OFF:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum TRACE:Lcom/amazonaws/logging/LogFactory$Level;

.field public static final enum WARN:Lcom/amazonaws/logging/LogFactory$Level;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/amazonaws/logging/LogFactory$Level;

    const/high16 v1, -0x80000000

    const-string v2, "ALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazonaws/logging/LogFactory$Level;->ALL:Lcom/amazonaws/logging/LogFactory$Level;

    new-instance v1, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v2, "TRACE"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazonaws/logging/LogFactory$Level;->TRACE:Lcom/amazonaws/logging/LogFactory$Level;

    new-instance v2, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v5, "DEBUG"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    new-instance v5, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v7, "INFO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    new-instance v7, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v9, "WARN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    new-instance v9, Lcom/amazonaws/logging/LogFactory$Level;

    const-string v11, "ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    new-instance v11, Lcom/amazonaws/logging/LogFactory$Level;

    const/4 v13, 0x6

    const v14, 0x7fffffff

    const-string v15, "OFF"

    invoke-direct {v11, v15, v13, v14}, Lcom/amazonaws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/amazonaws/logging/LogFactory$Level;->OFF:Lcom/amazonaws/logging/LogFactory$Level;

    const/4 v14, 0x7

    new-array v14, v14, [Lcom/amazonaws/logging/LogFactory$Level;

    aput-object v0, v14, v3

    aput-object v1, v14, v4

    aput-object v2, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    aput-object v11, v14, v13

    sput-object v14, Lcom/amazonaws/logging/LogFactory$Level;->$VALUES:[Lcom/amazonaws/logging/LogFactory$Level;

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

    iput p3, p0, Lcom/amazonaws/logging/LogFactory$Level;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    const-class v0, Lcom/amazonaws/logging/LogFactory$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/logging/LogFactory$Level;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->$VALUES:[Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v0}, [Lcom/amazonaws/logging/LogFactory$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/logging/LogFactory$Level;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/amazonaws/logging/LogFactory$Level;->value:I

    return v0
.end method
