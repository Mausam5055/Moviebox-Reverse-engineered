.class public final Landroidx/room/support/m$a;
.super La4/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/support/m;->d(Ljava/io/File;)La4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Landroidx/room/support/m$a;->c:I

    invoke-direct {p0, p2}, La4/e$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(La4/d;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f(La4/d;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/room/support/m$a;->c:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, La4/d;->S(I)V

    :cond_0
    return-void
.end method

.method public g(La4/d;II)V
    .locals 0

    const-string p2, "db"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
