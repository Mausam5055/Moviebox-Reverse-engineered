.class Lcom/mbridge/msdk/timer/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/timer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static a:Lcom/mbridge/msdk/timer/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/timer/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/timer/a;-><init>(Lcom/mbridge/msdk/timer/a$a;)V

    sput-object v0, Lcom/mbridge/msdk/timer/a$c;->a:Lcom/mbridge/msdk/timer/a;

    return-void
.end method
