.class final Lp9/i$c;
.super Ljava/lang/Object;

# interfaces
.implements Lp9/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lp9/i$a;)V
    .locals 0

    invoke-direct {p0}, Lp9/i$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg9/m;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public createSeekMap()Lg9/b0;
    .locals 3

    new-instance v0, Lg9/b0$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lg9/b0$b;-><init>(J)V

    return-object v0
.end method

.method public startSeek(J)V
    .locals 0

    return-void
.end method
