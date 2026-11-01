.class abstract Lcom/transsion/push/PushManager$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/PushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/transsion/push/PushManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/push/PushManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/push/PushManager;-><init>(Lcom/transsion/push/PushManager$a;)V

    sput-object v0, Lcom/transsion/push/PushManager$c;->a:Lcom/transsion/push/PushManager;

    return-void
.end method

.method static synthetic a()Lcom/transsion/push/PushManager;
    .locals 1

    sget-object v0, Lcom/transsion/push/PushManager$c;->a:Lcom/transsion/push/PushManager;

    return-object v0
.end method
