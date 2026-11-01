.class Lcom/mbridge/msdk/setting/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/setting/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/mbridge/msdk/setting/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/setting/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/setting/e;-><init>(Lcom/mbridge/msdk/setting/e$a;)V

    sput-object v0, Lcom/mbridge/msdk/setting/e$b;->a:Lcom/mbridge/msdk/setting/e;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/setting/e;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/setting/e$b;->a:Lcom/mbridge/msdk/setting/e;

    return-object v0
.end method
