.class Lcom/mbridge/msdk/timer/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/timer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:Lcom/mbridge/msdk/timer/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/timer/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/timer/b;-><init>(Lcom/mbridge/msdk/timer/b$a;)V

    sput-object v0, Lcom/mbridge/msdk/timer/b$b;->a:Lcom/mbridge/msdk/timer/b;

    return-void
.end method
