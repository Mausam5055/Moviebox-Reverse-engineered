.class public Lh6/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh6/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lh6/d;
    .locals 1

    invoke-static {}, Lh6/d$a;->a()Lh6/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lh6/e;
    .locals 1

    new-instance v0, Lh6/a;

    invoke-direct {v0}, Lh6/a;-><init>()V

    return-object v0
.end method
