.class abstract Lc9/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lc9/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc9/d;

    invoke-direct {v0}, Lc9/d;-><init>()V

    sput-object v0, Lc9/d$a;->a:Lc9/d;

    return-void
.end method

.method static synthetic a()Lc9/d;
    .locals 1

    sget-object v0, Lc9/d$a;->a:Lc9/d;

    return-object v0
.end method
