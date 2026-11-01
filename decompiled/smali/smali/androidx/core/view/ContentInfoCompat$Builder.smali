.class public final Landroidx/core/view/ContentInfoCompat$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/ContentInfoCompat$b;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/ContentInfoCompat$b;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$d;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/ContentInfoCompat$d;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/ContentInfoCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/ContentInfoCompat$b;

    invoke-direct {v0, p1}, Landroidx/core/view/ContentInfoCompat$b;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$d;

    invoke-direct {v0, p1}, Landroidx/core/view/ContentInfoCompat$d;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;

    :goto_0
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/ContentInfoCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$c;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$c;->c(Landroid/content/ClipData;)V

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$c;->setExtras(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$c;->d(I)V

    return-object p0
.end method

.method public setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$c;->b(Landroid/net/Uri;)V

    return-object p0
.end method

.method public setSource(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$c;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$c;->a(I)V

    return-object p0
.end method
