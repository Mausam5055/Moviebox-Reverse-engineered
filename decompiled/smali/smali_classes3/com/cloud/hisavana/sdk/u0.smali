.class public final Lcom/cloud/hisavana/sdk/u0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/u0;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/u0;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/u0;->a:Lcom/cloud/hisavana/sdk/u0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/d;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/d;->A(Ljava/util/List;)V

    return-void
.end method
