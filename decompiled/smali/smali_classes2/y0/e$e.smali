.class public final Ly0/e$e;
.super Ljava/lang/Object;

# interfaces
.implements Ly0/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private final a:Landroidx/core/provider/e;

.field private final b:Landroidx/core/provider/e;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/core/provider/e;Landroidx/core/provider/e;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/e$e;->a:Landroidx/core/provider/e;

    iput-object p2, p0, Ly0/e$e;->b:Landroidx/core/provider/e;

    iput p3, p0, Ly0/e$e;->d:I

    iput p4, p0, Ly0/e$e;->c:I

    iput-object p5, p0, Ly0/e$e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/provider/e;
    .locals 1

    iget-object v0, p0, Ly0/e$e;->b:Landroidx/core/provider/e;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ly0/e$e;->d:I

    return v0
.end method

.method public c()Landroidx/core/provider/e;
    .locals 1

    iget-object v0, p0, Ly0/e$e;->a:Landroidx/core/provider/e;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly0/e$e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Ly0/e$e;->c:I

    return v0
.end method
