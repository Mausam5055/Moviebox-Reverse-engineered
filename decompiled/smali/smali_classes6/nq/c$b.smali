.class abstract Lnq/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnq/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lnq/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnq/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnq/c;-><init>(Lnq/c$a;)V

    sput-object v0, Lnq/c$b;->a:Lnq/c;

    return-void
.end method

.method static synthetic a()Lnq/c;
    .locals 1

    sget-object v0, Lnq/c$b;->a:Lnq/c;

    return-object v0
.end method
