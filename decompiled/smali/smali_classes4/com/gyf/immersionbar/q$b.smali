.class abstract Lcom/gyf/immersionbar/q$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyf/immersionbar/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/gyf/immersionbar/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gyf/immersionbar/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/q;-><init>(Lcom/gyf/immersionbar/q$a;)V

    sput-object v0, Lcom/gyf/immersionbar/q$b;->a:Lcom/gyf/immersionbar/q;

    return-void
.end method

.method static synthetic a()Lcom/gyf/immersionbar/q;
    .locals 1

    sget-object v0, Lcom/gyf/immersionbar/q$b;->a:Lcom/gyf/immersionbar/q;

    return-object v0
.end method
