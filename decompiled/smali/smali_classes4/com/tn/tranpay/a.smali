.class public final Lcom/tn/tranpay/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tn/tranpay/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/tranpay/a;

    invoke-direct {v0}, Lcom/tn/tranpay/a;-><init>()V

    sput-object v0, Lcom/tn/tranpay/a;->a:Lcom/tn/tranpay/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
