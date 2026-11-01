.class abstract Lc9/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lc9/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc9/c;

    invoke-direct {v0}, Lc9/c;-><init>()V

    sput-object v0, Lc9/c$a;->a:Lc9/c;

    return-void
.end method

.method static synthetic a()Lc9/c;
    .locals 1

    sget-object v0, Lc9/c$a;->a:Lc9/c;

    return-object v0
.end method
