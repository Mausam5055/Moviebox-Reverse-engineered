.class final Landroidx/core/view/ContentInfoCompat$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/ContentInfoCompat$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/view/ContentInfo;


# direct methods
.method constructor <init>(Landroid/view/ContentInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/util/i;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/a;->a(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$e;->a:Landroid/view/ContentInfo;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$e;->a:Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/core/view/p;->a(Landroid/view/ContentInfo;)I

    move-result v0

    return v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$e;->a:Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/core/view/n;->a(Landroid/view/ContentInfo;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/view/ContentInfo;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$e;->a:Landroid/view/ContentInfo;

    return-object v0
.end method

.method public d()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$e;->a:Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/core/view/l;->a(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$e;->a:Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/core/view/o;->a(Landroid/view/ContentInfo;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$e;->a:Landroid/view/ContentInfo;

    invoke-static {v0}, Landroidx/core/view/m;->a(Landroid/view/ContentInfo;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentInfoCompat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/view/ContentInfoCompat$e;->a:Landroid/view/ContentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
