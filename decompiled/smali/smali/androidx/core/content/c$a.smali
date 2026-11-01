.class abstract Landroidx/core/content/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static a(Ljava/lang/String;)Landroid/content/LocusId;
    .locals 1

    new-instance v0, Landroid/content/LocusId;

    invoke-direct {v0, p0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static b(Landroid/content/LocusId;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
