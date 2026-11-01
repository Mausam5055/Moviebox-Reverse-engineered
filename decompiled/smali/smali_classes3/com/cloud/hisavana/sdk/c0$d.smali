.class abstract Lcom/cloud/hisavana/sdk/c0$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final a:Lcom/cloud/hisavana/sdk/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/c0;-><init>(Lcom/cloud/hisavana/sdk/c0$a;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/c0$d;->a:Lcom/cloud/hisavana/sdk/c0;

    return-void
.end method

.method static synthetic a()Lcom/cloud/hisavana/sdk/c0;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/c0$d;->a:Lcom/cloud/hisavana/sdk/c0;

    return-object v0
.end method
