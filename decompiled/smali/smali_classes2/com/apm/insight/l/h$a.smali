.class final enum Lcom/apm/insight/l/h$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/l/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apm/insight/l/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apm/insight/l/h$a;

.field public static final enum b:Lcom/apm/insight/l/h$a;

.field public static final enum c:Lcom/apm/insight/l/h$a;

.field public static final enum d:Lcom/apm/insight/l/h$a;

.field public static final enum e:Lcom/apm/insight/l/h$a;

.field public static final enum f:Lcom/apm/insight/l/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/apm/insight/l/h$a;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apm/insight/l/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/h$a;->a:Lcom/apm/insight/l/h$a;

    new-instance v0, Lcom/apm/insight/l/h$a;

    const-string v1, "NONEMPTY_ARRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/apm/insight/l/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/h$a;->b:Lcom/apm/insight/l/h$a;

    new-instance v0, Lcom/apm/insight/l/h$a;

    const-string v1, "EMPTY_OBJECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/apm/insight/l/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/h$a;->c:Lcom/apm/insight/l/h$a;

    new-instance v0, Lcom/apm/insight/l/h$a;

    const-string v1, "DANGLING_KEY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/apm/insight/l/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/h$a;->d:Lcom/apm/insight/l/h$a;

    new-instance v0, Lcom/apm/insight/l/h$a;

    const-string v1, "NONEMPTY_OBJECT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/apm/insight/l/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/h$a;->e:Lcom/apm/insight/l/h$a;

    new-instance v0, Lcom/apm/insight/l/h$a;

    const-string v1, "NULL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/apm/insight/l/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/h$a;->f:Lcom/apm/insight/l/h$a;

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
