.class abstract Lcom/cloud/hisavana/sdk/P$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/cloud/hisavana/sdk/P;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/P;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/P;-><init>(Lcom/cloud/hisavana/sdk/P$a;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/P$c;->a:Lcom/cloud/hisavana/sdk/P;

    return-void
.end method

.method static synthetic a()Lcom/cloud/hisavana/sdk/P;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/P$c;->a:Lcom/cloud/hisavana/sdk/P;

    return-object v0
.end method
