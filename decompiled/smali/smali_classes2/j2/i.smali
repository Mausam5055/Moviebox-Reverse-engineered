.class public final synthetic Lj2/i;
.super Ljava/lang/Object;

# interfaces
.implements Lj2/n$i$a;


# instance fields
.field public final synthetic a:Lj2/n;

.field public final synthetic b:Lj2/n$e;

.field public final synthetic c:Z

.field public final synthetic d:[I


# direct methods
.method public synthetic constructor <init>(Lj2/n;Lj2/n$e;Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/i;->a:Lj2/n;

    iput-object p2, p0, Lj2/i;->b:Lj2/n$e;

    iput-boolean p3, p0, Lj2/i;->c:Z

    iput-object p4, p0, Lj2/i;->d:[I

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lj2/i;->a:Lj2/n;

    iget-object v1, p0, Lj2/i;->b:Lj2/n$e;

    iget-boolean v2, p0, Lj2/i;->c:Z

    iget-object v3, p0, Lj2/i;->d:[I

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lj2/n;->r(Lj2/n;Lj2/n$e;Z[IILandroidx/media3/common/f0;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
