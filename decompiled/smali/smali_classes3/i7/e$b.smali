.class abstract Li7/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Li7/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li7/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li7/e;-><init>(Li7/e$a;)V

    sput-object v0, Li7/e$b;->a:Li7/e;

    return-void
.end method

.method static synthetic a()Li7/e;
    .locals 1

    sget-object v0, Li7/e$b;->a:Li7/e;

    return-object v0
.end method
