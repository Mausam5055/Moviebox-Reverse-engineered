.class abstract Lcom/gyf/immersionbar/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyf/immersionbar/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/gyf/immersionbar/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gyf/immersionbar/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/e;-><init>(Lcom/gyf/immersionbar/e$a;)V

    sput-object v0, Lcom/gyf/immersionbar/e$b;->a:Lcom/gyf/immersionbar/e;

    return-void
.end method

.method static synthetic a()Lcom/gyf/immersionbar/e;
    .locals 1

    sget-object v0, Lcom/gyf/immersionbar/e$b;->a:Lcom/gyf/immersionbar/e;

    return-object v0
.end method
