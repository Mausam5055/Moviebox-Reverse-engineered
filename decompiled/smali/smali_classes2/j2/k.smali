.class public final synthetic Lj2/k;
.super Ljava/lang/Object;

# interfaces
.implements Lj2/n$i$a;


# instance fields
.field public final synthetic a:Lj2/n$e;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lj2/n$e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/k;->a:Lj2/n$e;

    iput-object p2, p0, Lj2/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lj2/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/common/f0;[I)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lj2/k;->a:Lj2/n$e;

    iget-object v1, p0, Lj2/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lj2/k;->c:Ljava/lang/String;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lj2/n;->w(Lj2/n$e;Ljava/lang/String;Ljava/lang/String;ILandroidx/media3/common/f0;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
