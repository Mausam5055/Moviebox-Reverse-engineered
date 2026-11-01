.class public enum Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/core/pool/TranssionPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "UncaughtThrowableStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

.field public static final DEFAULT:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

.field public static final enum IGNORE:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

.field public static final enum LOG:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

.field public static final enum THROW:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->IGNORE:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    new-instance v1, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy$1;

    const-string v3, "LOG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->LOG:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    new-instance v3, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy$2;

    const-string v5, "THROW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->THROW:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->$VALUES:[Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    sput-object v1, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/transsion/core/pool/TranssionPoolExecutor$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;
    .locals 1

    const-class v0, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    return-object p0
.end method

.method public static values()[Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;
    .locals 1

    sget-object v0, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->$VALUES:[Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    invoke-virtual {v0}, [Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    return-object v0
.end method


# virtual methods
.method protected handle(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
