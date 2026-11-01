.class abstract Lcom/cloud/hisavana/sdk/common/tranmeasure/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/cloud/hisavana/sdk/common/tranmeasure/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$b;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    return-void
.end method

.method static synthetic a()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/e$b;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    return-object v0
.end method
