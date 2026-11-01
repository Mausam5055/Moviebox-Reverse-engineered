.class public final Lcom/transsion/payment/lib/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/payment/lib/c;

.field private static b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/payment/lib/c;

    invoke-direct {v0}, Lcom/transsion/payment/lib/c;-><init>()V

    sput-object v0, Lcom/transsion/payment/lib/c;->a:Lcom/transsion/payment/lib/c;

    const-string v0, "7971094"

    sput-object v0, Lcom/transsion/payment/lib/c;->b:Ljava/lang/String;

    const-string v0, "key_sku_list"

    sput-object v0, Lcom/transsion/payment/lib/c;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/payment/lib/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/payment/lib/c;->b:Ljava/lang/String;

    return-object v0
.end method
