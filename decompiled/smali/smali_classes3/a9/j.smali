.class public final La9/j;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La9/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()La9/j;
    .locals 1

    invoke-static {}, La9/j$a;->a()La9/j;

    move-result-object v0

    return-object v0
.end method

.method public static c()La9/e;
    .locals 1

    invoke-static {}, La9/f;->d()La9/e;

    move-result-object v0

    invoke-static {v0}, Lu8/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La9/e;

    return-object v0
.end method


# virtual methods
.method public b()La9/e;
    .locals 1

    invoke-static {}, La9/j;->c()La9/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La9/j;->b()La9/e;

    move-result-object v0

    return-object v0
.end method
