.class abstract Lcom/cloud/hisavana/sdk/r4$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static a:Lcom/cloud/hisavana/sdk/r4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/r4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/r4;-><init>(Lcom/cloud/hisavana/sdk/r4$a;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/r4$b;->a:Lcom/cloud/hisavana/sdk/r4;

    return-void
.end method
