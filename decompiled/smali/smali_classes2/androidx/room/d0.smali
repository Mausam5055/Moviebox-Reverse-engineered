.class public abstract Landroidx/room/d0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/room/e0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/d0$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "identityHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyIdentityHash"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/d0;->a:I

    iput-object p2, p0, Landroidx/room/d0;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/d0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Lz3/b;)V
.end method

.method public abstract b(Lz3/b;)V
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/d0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/d0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Landroidx/room/d0;->a:I

    return v0
.end method

.method public abstract f(Lz3/b;)V
.end method

.method public abstract g(Lz3/b;)V
.end method

.method public abstract h(Lz3/b;)V
.end method

.method public abstract i(Lz3/b;)V
.end method

.method public abstract j(Lz3/b;)Landroidx/room/d0$a;
.end method
