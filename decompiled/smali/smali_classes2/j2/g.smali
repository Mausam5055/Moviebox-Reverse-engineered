.class public final synthetic Lj2/g;
.super Ljava/lang/Object;

# interfaces
.implements Lj2/n$i$a;


# instance fields
.field public final synthetic a:Lj2/n$e;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[I

.field public final synthetic d:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lj2/n$e;Ljava/lang/String;[ILandroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/g;->a:Lj2/n$e;

    iput-object p2, p0, Lj2/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lj2/g;->c:[I

    iput-object p4, p0, Lj2/g;->d:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lj2/g;->a:Lj2/n$e;

    iget-object v1, p0, Lj2/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lj2/g;->c:[I

    iget-object v3, p0, Lj2/g;->d:Landroid/graphics/Point;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lj2/n;->u(Lj2/n$e;Ljava/lang/String;[ILandroid/graphics/Point;ILandroidx/media3/common/f0;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
