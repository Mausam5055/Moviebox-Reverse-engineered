.class abstract Lcom/gyf/immersionbar/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyf/immersionbar/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/gyf/immersionbar/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gyf/immersionbar/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/j;-><init>(Lcom/gyf/immersionbar/j$a;)V

    sput-object v0, Lcom/gyf/immersionbar/j$b;->a:Lcom/gyf/immersionbar/j;

    return-void
.end method

.method static synthetic a()Lcom/gyf/immersionbar/j;
    .locals 1

    sget-object v0, Lcom/gyf/immersionbar/j$b;->a:Lcom/gyf/immersionbar/j;

    return-object v0
.end method
