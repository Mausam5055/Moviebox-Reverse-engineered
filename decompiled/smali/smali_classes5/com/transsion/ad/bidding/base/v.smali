.class public final Lcom/transsion/ad/bidding/base/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/bidding/base/v;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/bidding/base/v;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/base/v;-><init>()V

    sput-object v0, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/ad/bidding/base/v;->b:Z

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/ad/bidding/base/v;->b:Z

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/ad/bidding/base/v;->b:Z

    return-void
.end method
