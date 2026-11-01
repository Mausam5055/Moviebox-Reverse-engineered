.class Lcom/pgl/ssdk/x0$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pgl/ssdk/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/pgl/ssdk/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pgl/ssdk/x0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pgl/ssdk/x0;-><init>(Lcom/pgl/ssdk/x0$a;)V

    sput-object v0, Lcom/pgl/ssdk/x0$b;->a:Lcom/pgl/ssdk/x0;

    return-void
.end method

.method static synthetic a()Lcom/pgl/ssdk/x0;
    .locals 1

    sget-object v0, Lcom/pgl/ssdk/x0$b;->a:Lcom/pgl/ssdk/x0;

    return-object v0
.end method
