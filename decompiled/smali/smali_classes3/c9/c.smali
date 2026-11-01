.class public final Lc9/c;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc9/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc9/c;
    .locals 1

    invoke-static {}, Lc9/c$a;->a()Lc9/c;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lc9/a;
    .locals 1

    invoke-static {}, Lc9/b;->a()Lc9/a;

    move-result-object v0

    invoke-static {v0}, Lu8/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc9/a;

    return-object v0
.end method


# virtual methods
.method public c()Lc9/a;
    .locals 1

    invoke-static {}, Lc9/c;->b()Lc9/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lc9/c;->c()Lc9/a;

    move-result-object v0

    return-object v0
.end method
